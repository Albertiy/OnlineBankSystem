/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cn.niit.dao.impl;

import cn.niit.dao.AccountDao;
import cn.niit.dao.UserDao;
import cn.niit.domain.Account;
import cn.niit.domain.Transaction;
import cn.niit.domain.User;
import cn.niit.utils.JDBCUtils;
import java.sql.Connection;
import java.sql.Date;
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
                a.setAccount_id(rs.getString("account_id"));
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

    //transfer_id是转账人的account的ID
    @Override
    public Account findAccountByNameAndId(String transfer_id, String target_name) {
        //1.获得连接
        Connection conn = JDBCUtils.getConnection();
        //2.先查询ACCOUNT表，通过transfer_id，获取到login_id
        String sql = "select * from ACCOUNT where transfer_id=?";
        java.sql.PreparedStatement ps = null;
        ResultSet rs = null;
        ResultSet rs2 = null;
        Account a = null;
        try {
            ps = conn.prepareStatement(sql);
            ps.setString(1, transfer_id);
            rs = ps.executeQuery();
            //3.获取了login_id的集合，每遇到一个name相匹配的login_id的时候，
            //获取到这个login_id，并且查询ACCOUNT表，获取到acount_id
            if (rs.next()) {
                String login_id = rs.getString("login_id");
                sql = "select * from CUSTOMER where login_id=?";
                ps = conn.prepareStatement(sql);
                ps.setString(1, login_id);
                rs2 = ps.executeQuery();
                if (rs2.next()) {
                    String name = rs2.getString("name");
                    //4.如果name和transfer_name相等，则获取targetAccount
                    if (name.equals(target_name)) {
                        a = new Account();
                        a.setAccount_id(rs.getString("account_id"));
                        a.setAccount_type(rs.getBoolean("account_type"));
                        a.setAccount_pw(rs.getString("account_pw"));
                        a.setBalance(rs.getInt("balance"));
                        a.setMin_balance(rs.getInt("min_balance"));
                        a.setInterest_rate(rs.getDouble("interest_rate"));
                        a.setLogin_id(rs.getString("login_id"));
                    }
                }

            }
            return a;
        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException("查询转账账户失败");
        } finally {
            //5.关闭资源
            JDBCUtils.close(conn, ps, rs);

        }
    }

    @Override
    public Account findAccountByAccount_ID(String account_id) {
        //1.获得连接
        Connection conn = JDBCUtils.getConnection();
        //2.准备sql
        String sql = "select * from ACCOUNT where account_id=?";

        java.sql.PreparedStatement ps = null;
        ResultSet rs = null;
        Account a = null;
        //3.准备PreparedStatement对象
        try {
            ps = conn.prepareStatement(sql);
            //4.获得参数
            ps.setString(1, account_id);
            //5.执行查询
            rs = ps.executeQuery();
            //6.处理查询结果返回集,将rs集合中的数据封装到User中去。
            if (rs.next()) {
                a = new Account();
                a.setAccount_id(rs.getString("account_id"));
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
    public Account updateBanlance(String account_id, int amount) {
        //1.获得连接
        Connection conn = JDBCUtils.getConnection();
        //2.准备sql
        String sql = "UPDATE ACCOUNT SET balance=balance-? where account_id=?";
        java.sql.PreparedStatement ps = null;
        ResultSet rs = null;
        Account account = null;
        //3.准备PreparedStatement对象
        try {
            ps = conn.prepareStatement(sql);
            //4.获得参数
            ps.setInt(1, amount);
            ps.setString(2, account_id);
            //5.执行修改
            int executeUpdate = ps.executeUpdate();
            account = findAccountByAccount_ID(account_id);
        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException("修改账户金额失败");
        } finally {
            //7.关闭资源,返回User
            JDBCUtils.close(conn, ps, rs);

        }
        return account;
    }

    @Override
    public void saveTransaction(Transaction transaction) {
        //1.获得连接
        Connection conn = JDBCUtils.getConnection();
        //2.准备sql     
        String sql = "insert into TRANSACTIONS values(?, ?,?, ?, ?,?,?)";
        java.sql.PreparedStatement ps = null;
        //3.准备PreparedStatement对象
        try {
            ps = conn.prepareStatement(sql);
            //4.填写参数
            ps.setString(1, transaction.getAccount_id());
            ps.setString(2, transaction.getName());
            ps.setString(3, transaction.getTransfer_id());
            ps.setString(4, transaction.getTransfer_name());
            ps.setBoolean(5, transaction.getAccount_type());
            ps.setInt(6, transaction.getAmount());
            ps.setString(7,transaction.getDatetime());

            //5.执行sql
            int result = ps.executeUpdate();
            if (result != 1) {
                throw new RuntimeException("账单保存失败！");
            }
            //6.关闭资源
            JDBCUtils.close(conn, ps, null);
        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException("数据库连接失败！");
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
