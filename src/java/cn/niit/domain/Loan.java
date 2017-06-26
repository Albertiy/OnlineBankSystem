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
public class Loan {

    private String Account_id;
    private String Loan_name;
    private int Amount;
    private double Interest_rate;
    private int Min_payment;
    private String Start_date;
    private String Due_date;
    private int state;
    public String getAccount_id() {
        return Account_id;
    }

    public void setAccount_id(String Account_id) {
        this.Account_id = Account_id;
    }

    public String getLoan_name() {
        return Loan_name;
    }

    public void setLoan_name(String Loan_name) {
        this.Loan_name = Loan_name;
    }

    public int getAmount() {
        return Amount;
    }

    public void setAmount(int Amount) {
        this.Amount = Amount;
    }

    public double getInterest_rate() {
        return Interest_rate;
    }

    public void setInterest_rate(double Interest_rate) {
        this.Interest_rate = Interest_rate;
    }

    public int getMin_payment() {
        return Min_payment;
    }

    public void setMin_payment(int Min_payment) {
        this.Min_payment = Min_payment;
    }

    public String getStart_date() {
        return Start_date;
    }

    public void setStart_date(String Start_date) {
        this.Start_date = Start_date;
    }

    public String getDue_date() {
        return Due_date;
    }

    public void setDue_date(String Due_date) {
        this.Due_date = Due_date;
    }

    public int getState() {
        return state;
    }

    public void setState(int state) {
        this.state = state;
    }


}
