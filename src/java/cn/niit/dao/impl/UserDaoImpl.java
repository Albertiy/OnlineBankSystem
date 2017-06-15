/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cn.niit.dao.impl;

import cn.niit.dao.UserDao;
import cn.niit.domain.User;
import cn.niit.utils.JDBCUtils;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author BearK
 */
public class UserDaoImpl implements UserDao {

    @Override
    public void save(User u) {
        //1.获得连接
        Connection conn = JDBCUtils.getConnection();
        //2.准备sql     
        String sql = "insert into CUSTOMER values( ?, ?, ?,?, ?, ?)";
        java.sql.PreparedStatement ps = null;
        //3.准备PreparedStatement对象
        try {
            ps = conn.prepareStatement(sql);
            //4.填写参数
            ps.setString(1, u.getLogin_id());
            ps.setString(2, u.getLogin_pw());
            ps.setString(3, u.getName());
            ps.setString(4, u.getAddress());
            ps.setString(5, u.getEmail());
            ps.setString(6, u.getContact_no());
//            ps.setDouble(6, Double.parseDouble(u.getContact_no()));

            //5.执行sql
            int result = ps.executeUpdate();
            if (result != 1) {
                throw new RuntimeException("用户注册失败！");
            }
            //6.关闭资源
            JDBCUtils.close(conn, ps, null);
        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException("数据库连接失败！");
        }

    }

    @Override
    public User findUserByName(String login_id) {
        //1.获得连接
        Connection conn = JDBCUtils.getConnection();
        //2.准备sql
        String sql = "select * from CUSTOMER where login_id=?";

        java.sql.PreparedStatement ps = null;
        ResultSet rs = null;
        User u = null;
        //3.准备PreparedStatement对象
        try {
            ps = conn.prepareStatement(sql);
            //4.获得参数
            ps.setString(1, login_id);
            //5.执行查询
            rs = ps.executeQuery();
            //6.处理查询结果返回集,将rs集合中的数据封装到User中去。
            if (rs.next()) {
                u = new User();
                u.setLogin_id(rs.getString("login_id"));
                u.setLogin_pw(rs.getString("login_pw"));
                u.setName(rs.getString("name"));
                u.setAddress(rs.getString("address"));
                u.setEmail(rs.getString("email"));
                u.setContact_no(rs.getString("contact_no"));
//                u.setContact_no(String.valueOf(rs.getDouble("contact_no")));

            }
            return u;
        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException("查询用户失败");
        } finally {
            //7.关闭资源,返回User
            JDBCUtils.close(conn, ps, rs);

        }

    }

    @Override
    public List<User> getAllUsers() {
        //1.获得连接
        Connection conn = JDBCUtils.getConnection();
        //2.准备sql
        String sql = "select * from CUSTOMER ";

        java.sql.PreparedStatement ps = null;
        ResultSet rs = null;
        List<User> list = new ArrayList<User>();
        //3.准备PreparedStatement对象
        try {
            ps = conn.prepareStatement(sql);
            //5.执行查询
            rs = ps.executeQuery();
            //6.处理查询结果返回集,将rs集合中的数据封装到User中去。
            while (rs.next()) {
                User u = new User();
                u.setLogin_id(rs.getString("login_id"));
                u.setLogin_pw(rs.getString("login_pw"));
                u.setName(rs.getString("name"));
                u.setAddress(rs.getString("address"));
                u.setEmail(rs.getString("email"));
                u.setContact_no(rs.getString("contact_no"));
//                u.setContact_no(String.valueOf(rs.getDouble("contact_no")));
                list.add(u);
            }
        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException("列表获取失败");
        } finally {
            //7.关闭资源
            JDBCUtils.close(conn, ps, rs);
        }
        return list;
    }

    @Override
    public User updateUserInfo(User u) {
        //1.获得连接
        Connection conn = JDBCUtils.getConnection();
        //2.准备sql
        String sql = "UPDATE CUSTOMER SET name=?,address=?,email=?,contact_no=? where login_id=?";

        java.sql.PreparedStatement ps = null;
        ResultSet rs = null;
        User user = null;
        //3.准备PreparedStatement对象
        try {
            ps = conn.prepareStatement(sql);
            //4.获得参数
            ps.setString(1, u.getName());
            ps.setString(2, u.getAddress());
            ps.setString(3, u.getEmail());
            ps.setString(4, u.getContact_no());
//            ps.setDouble(4, Double.parseDouble(u.getContact_no()));
            ps.setString(5, u.getLogin_id());

            //5.执行修改
            int executeUpdate = ps.executeUpdate();

            //修改结束后获取修改之后的user
            UserDao ud = new UserDaoImpl();
            user = ud.findUserByName(u.getLogin_id());
            return user;
        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException("修改用户信息失败");
        } finally {
            //7.关闭资源,返回User
            JDBCUtils.close(conn, ps, rs);

        }
    }

    @Override
    public User updateUserPsd(User u) {
        //1.获得连接
        Connection conn = JDBCUtils.getConnection();
        //2.准备sql
        String sql = "UPDATE CUSTOMER SET login_pw=? where login_id=?";

        java.sql.PreparedStatement ps = null;
        ResultSet rs = null;
        User user = null;
        //3.准备PreparedStatement对象
        try {
            ps = conn.prepareStatement(sql);
            //4.获得参数
            ps.setString(1, u.getLogin_pw());
            ps.setString(2, u.getLogin_id());

            //5.执行修改
            int executeUpdate = ps.executeUpdate();

            //修改结束后获取修改之后的user
            UserDao ud = new UserDaoImpl();
            user = ud.findUserByName(u.getLogin_id());
            return user;
        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException("修改用户密码失败");
        } finally {
            //7.关闭资源,返回User
            JDBCUtils.close(conn, ps, rs);

        }
    }

}
