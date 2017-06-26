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
public class InterestRate {

    private int Interset_type;
    private String Interest_name;
    private double Interest_rate;
    private String Description;
    private int Month;

    public int getInterset_type() {
        return Interset_type;
    }

    public void setInterset_type(int Interset_type) {
        this.Interset_type = Interset_type;
    }

    public String getInterest_name() {
        return Interest_name;
    }

    public void setInterest_name(String Interest_name) {
        this.Interest_name = Interest_name;
    }

    public double getInterest_rate() {
        return Interest_rate;
    }

    public void setInterest_rate(double Interest_rate) {
        this.Interest_rate = Interest_rate;
    }

    public String getDescription() {
        return Description;
    }

    public void setDescription(String Description) {
        this.Description = Description;
    }

    public int getMonth() {
        return Month;
    }

    public void setMonth(int Month) {
        this.Month = Month;
    }

//    public int getMin_payment() {
//        return min_payment;
//    }
//
//    public void setMin_payment(int min_payment) {
//        this.min_payment = min_payment;
//    }
//    private int min_payment;
}
