/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cn.niit.dao.impl;

import cn.niit.dao.AccountDao;
import cn.niit.domain.Account;
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
public class AccoutDaoImpl implements AccountDao {

    @Override
    public void save(Account a) {
        //1.获得连接
        Connection conn = JDBCUtils.getConnection();
        //2.准备sql     
        String sql = "insert into ACCOUNT values(?, ?,?, ?, ?,?)";
        java.sql.PreparedStatement ps = null;
        //3.准备PreparedStatement对象
        try {
            ps = conn.prepareStatement(sql);
            //4.填写参数
//            ps.setString(1, a.getAccount_id());这里的account_id是自动生成的，不需要关心
            ps.setBoolean(1, a.getAccount_type());
            ps.setString(2, a.getAccount_pw());
            ps.setInt(3, a.getBalance());
            ps.setInt(4, a.getMin_balance());
            ps.setDouble(5, a.getInterest_rate());
            ps.setString(6, a.getLogin_id());

            //5.执行sql
            int result = ps.executeUpdate();
            if (result != 1) {
                throw new RuntimeException("账户注册失败！");
            }
            //6.关闭资源
            JDBCUtils.close(conn, ps, null);
        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException("数据库连接失败！");
        }

    }

    @Override
    public Account findAccountByName(String login_id) {
        //1.获得连接
        Connection conn = JDBCUtils.getConnection();
        //2.准备sql
        String sql = "select * from ACCOUNT where login_id=?";

        java.sql.PreparedStatement ps = null;
        ResultSet rs = null;
        Account a = null;
        //3.准备PreparedStatement对象
        try {
            ps = conn.prepareStatement(sql);
            //4.获得参数
            ps.setString(1, login_id);
            //5.执行查询
            rs = ps.executeQuery();
            //6.处理查询结果返回集,将rs集合中的数据封装到User中去。
            if (rs.next()) {
                a = new Account();
                a.setAccount_id(Double.toString(rs.getDouble("account_id")));
                a.setAccount_type(rs.getBoolean("account_type"));
                a.setAccount_pw(rs.getString("account_pw"));
                a.setBalance(rs.getInt("balance"));
                a.setMin_balance(rs.getInt("min_balance"));
                a.setInterest_rate(rs.getDouble("interest_rate"));
                a.setLogin_id(rs.getString("login_id"));

            }
            return a;
        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException("查询账户失败");
        } finally {
            //7.关闭资源,返回User
            JDBCUtils.close(conn, ps, rs);

        }
    }

    @Override
    public List<Account> getAllAccounts() {
        //1.获得连接
        Connection conn = JDBCUtils.getConnection();
        //2.准备sql
        String sql = "select * from ACCOUNT ";

        java.sql.PreparedStatement ps = null;
        ResultSet rs = null;
        List<Account> list = new ArrayList<Account>();
        //3.准备PreparedStatement对象
        try {
            ps = conn.prepareStatement(sql);
            //5.执行查询
            rs = ps.executeQuery();
            //6.处理查询结果返回集,将rs集合中的数据封装到Account中去。
            while (rs.next()) {
                Account a = new Account();
                a.setAccount_id(rs.getString("account_id"));
                a.setAccount_type(rs.getBoolean("account_type"));
                a.setAccount_pw(rs.getString("account_pw"));
                a.setBalance(rs.getInt("balance"));
                a.setMin_balance(rs.getInt("min_balance"));
                a.setInterest_rate(rs.getDouble("interest_rate"));
                a.setLogin_id(rs.getString("login_id"));
                list.add(a);
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
}
