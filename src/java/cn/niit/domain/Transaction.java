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
public class Transaction {

    private String Account_id;
    private String Name;
    private boolean Account_type;
    private int Amount;
    private String Datetime;
    private String Transfer_id;
    private String Transfer_name;

    public String getTransfer_name() {
        return Transfer_name;
    }

    public void setTransfer_name(String Transfer_name) {
        this.Transfer_name = Transfer_name;
    }

    public String getAccount_id() {
        return Account_id;
    }

    public void setAccount_id(String Account_id) {
        this.Account_id = Account_id;
    }

    public String getName() {
        return Name;
    }

    public void setName(String Name) {
        this.Name = Name;
    }

    public boolean getAccount_type() {
        return Account_type;
    }

    public void setAccount_type(boolean Account_type) {
        this.Account_type = Account_type;
    }

    public int getAmount() {
        return Amount;
    }

    public void setAmount(int Amount) {
        this.Amount = Amount;
    }

    public String getDatetime() {
        return Datetime;
    }

    public void setDatetime(String Datetime) {
        this.Datetime = Datetime;
    }

    public String getTransfer_id() {
        return Transfer_id;
    }

    public void setTransfer_id(String Transfer_id) {
        this.Transfer_id = Transfer_id;
    }
    

}
