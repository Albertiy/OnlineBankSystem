/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cn.niit.service;

import cn.niit.dao.AccountDao;
import cn.niit.dao.impl.AccoutDaoImpl;
import cn.niit.domain.Account;
import java.util.List;

/**
 *
 * @author BearK
 */
public class AccountService {
        private AccountDao ad = new AccoutDaoImpl() ;

    public void regist(Account a) {
//        //1.校验用户名不重复
//        Account  account = ad.findAccountByName(a.getLogin_id());
//        if (account != null) {
//            //说明用户名已经存在了
//            throw new RuntimeException("账户已经存在");
//        }
        //2.调用dao，执行保存操作
        ad.save(a);
    }



    public List<Account> getAllUsers() {
        List<Account> allAccounts = ad.getAllAccounts();
        return allAccounts;
    }
    
}
