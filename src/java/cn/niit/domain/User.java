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
public class User {

    /**
     * @return the login_id
     */
    public String getLogin_id() {
        return login_id;
    }

    /**
     * @param login_id the login_id to set
     */
    public void setLogin_id(String login_id) {
        this.login_id = login_id;
    }

    /**
     * @return the login_pw
     */
    public String getLogin_pw() {
        return login_pw;
    }

    /**
     * @param login_pw the login_pw to set
     */
    public void setLogin_pw(String login_pw) {
        this.login_pw = login_pw;
    }

    /**
     * @return the account_id
     */
    public String getAccount_id() {
        return account_id;
    }

    /**
     * @param account_id the account_id to set
     */
    public void setAccount_id(String account_id) {
        this.account_id = account_id;
    }

    /**
     * @return the name
     */
    public String getName() {
        return name;
    }

    /**
     * @param name the name to set
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * @return the address
     */
    public String getAddress() {
        return address;
    }

    /**
     * @param address the address to set
     */
    public void setAddress(String address) {
        this.address = address;
    }

    /**
     * @return the email
     */
    public String getEmail() {
        return email;
    }

    /**
     * @param email the email to set
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * @return the contact_no
     */
    public String getContact_no() {
        return contact_no;
    }

    /**
     * @param contact_no the contact_no to set
     */
    public void setContact_no(String contact_no) {
        this.contact_no = contact_no;
    }
    private String login_id;
    private String login_pw;
    private String account_id;
    private String name;
    private String address;
    private String email;
    private String contact_no;

    
    
    
    
}
