/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cn.niit.domain;


/**
 *
 * @author BearK
 */
public class Account {

    public String getAccount_id() {
        return account_id;
    }

    public void setAccount_id(String account_id) {
        this.account_id = account_id;
    }

    public boolean getAccount_type() {
        return account_type;
    }

    public void setAccount_type(boolean account_type) {
        this.account_type = account_type;
    }

    public String getAccount_pw() {
        return account_pw;
    }

    public void setAccount_pw(String account_pw) {
        this.account_pw = account_pw;
    }

    public int getBalance() {
        return balance;
    }

    public void setBalance(int balance) {
        this.balance = balance;
    }

    public int getMin_balance() {
        return min_balance;
    }

    public void setMin_balance(int min_balance) {
        this.min_balance = min_balance;
    }

    public double getInterest_rate() {
        return interest_rate;
    }

    public void setInterest_rate(double interest_rate) {
        this.interest_rate = interest_rate;
    }

    public String getLogin_id() {
        return login_id;
    }

    public void setLogin_id(String login_id) {
        this.login_id = login_id;
    }
    private String account_id;//这里的account_id是string类型的
    private boolean account_type;//0：Savings 1：Current
    private String account_pw;
    private int balance;
    private int min_balance;
    private double interest_rate;
    private String login_id;
    
}
