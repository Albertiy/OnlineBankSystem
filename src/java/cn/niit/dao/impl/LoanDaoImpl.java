/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cn.niit.dao.impl;

import cn.niit.dao.LoanDao;
import cn.niit.domain.Account;
import cn.niit.domain.InterestRate;
import cn.niit.domain.Loan;
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
public class LoanDaoImpl implements LoanDao {

    @Override
    public void save(Loan loan) {
        //1.获得连接
        Connection conn = JDBCUtils.getConnection();
        //2.准备sql     
        String sql = "insert into Loan values(?, ?,?,  ?,?,?,?)";
        java.sql.PreparedStatement ps = null;
        //3.准备PreparedStatement对象
        try {
            ps = conn.prepareStatement(sql);
            //4.填写参数
            ps.setString(1, loan.getAccount_id());
            ps.setString(2, loan.getLoan_name());
            ps.setInt(3, loan.getAmount());
            ps.setDouble(4, loan.getInterest_rate());
            ps.setString(5, loan.getStart_date());
            ps.setString(6, loan.getDue_date());
            ps.setInt(7, loan.getState());

            //5.执行sql
            int result = ps.executeUpdate();
            if (result != 1) {
                throw new RuntimeException("贷款注册失败！");
            }
            //6.关闭资源
            JDBCUtils.close(conn, ps, null);
        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException("数据库连接失败！");
        }
    }

    @Override
    public Loan findLoanById(String account_id) {
        //1.获得连接
        Connection conn = JDBCUtils.getConnection();
        //2.准备sql
        String sql = "select * from LOAN where account_id=?";

        java.sql.PreparedStatement ps = null;
        ResultSet rs = null;
        Loan l = null;
        //3.准备PreparedStatement对象
        try {
            ps = conn.prepareStatement(sql);
            //4.获得参数
            ps.setString(1, account_id);
            //5.执行查询
            rs = ps.executeQuery();
            //6.处理查询结果返回集,将rs集合中的数据封装到User中去。
            if (rs.next()) {
                l = new Loan();
                l.setAccount_id(rs.getString("account_id"));
                l.setAmount(rs.getInt("amount"));
                l.setDue_date(rs.getString("due_date"));
                l.setStart_date(rs.getString("start_date"));
                l.setLoan_name(rs.getString("loan_name"));
                l.setInterest_rate(rs.getDouble("interest_rate"));
                l.setState(rs.getInt("state"));

            }
            return l;
        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException("查询贷款失败");
        } finally {
            //7.关闭资源,返回User
            JDBCUtils.close(conn, ps, rs);

        }
    }
    @Override
    public List<InterestRate> getAllInterestRates() {
        //1.获得连接
        Connection conn = JDBCUtils.getConnection();
        //2.准备sql
        String sql = "select * from  INTERESTRATE where interest_type=2";

        java.sql.PreparedStatement ps = null;
        ResultSet rs = null;
        List<InterestRate> list = new ArrayList<InterestRate>();
        //3.准备PreparedStatement对象
        try {
            ps = conn.prepareStatement(sql);
            //5.执行查询
            rs = ps.executeQuery();
            //6.处理查询结果返回集,将rs集合中的数据封装到Account中去。
            while (rs.next()) {
                InterestRate ir = new InterestRate();
                ir.setInterset_type(rs.getInt("interest_type"));
                ir.setInterest_name(rs.getString("interest_name"));
                ir.setInterest_rate(rs.getDouble("interest_rate"));
                ir.setDescription(rs.getString("description"));
                ir.setMonth(rs.getInt("month"));                
                list.add(ir);
            }
        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException("获取汇率列表失败");
        } finally {
            //7.关闭资源
            JDBCUtils.close(conn, ps, rs);
        }
        return list;

    }
}
