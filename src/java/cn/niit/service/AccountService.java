/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cn.niit.service;

import cn.niit.dao.AccountDao;
import cn.niit.dao.impl.AccoutDaoImpl;
import cn.niit.domain.Account;
import cn.niit.domain.Transaction;
import java.util.List;

/**
 *
 * @author BearK
 */
public class AccountService {

    private AccountDao ad = new AccoutDaoImpl();

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

    //Transaction里面包含了transfer_id，target_name，amount
    public Account TransactionMoney(Transaction transaction) {
        Account account = null;
        //1.首先确认转账人的ID和名称是否匹配
        String transfer_id = transaction.getTransfer_id();
        String transfer_name = transaction.getTransfer_name();
        //目标account
        Account targetAccount = ad.findAccountByNameAndId(transfer_id, transfer_name);
        //如果targetAccount为空，说明账户ID或姓名不正确，抛出异常
        if (targetAccount == null) {
            throw new RuntimeException("账户ID或姓名不正确，请再次确认");
        }
        //2.需要确认sourceAccount和targetAccount的账户类型是一样的
        //2.1获取sourceAccount的账户类型和targetAccount的账户类型
        boolean source_account_type = transaction.getAccount_type();
        boolean target_account_type = targetAccount.getAccount_type();
        //2.2如果不相等就抛出异常
        if (source_account_type != target_account_type) {
            throw new RuntimeException("账户类型不同，不能进行转账");
        } else//2.3如果账户类型相同就进行下一步操作
        {
            //2.4进行转账操作
            String account_id = transaction.getAccount_id();
            int amount = transaction.getAmount();
            //1.修改source_account的balance - amount 
            account = ad.updateBanlance(account_id, amount);
            //2.修改target_account的balance + amount
            ad.updateBanlance(transfer_id, -amount);
            //3.将transaction的数据保存到TRANSACTIONS表中
            ad.saveTransaction(transaction);
        }

        return account;
    }

    public Account changePsd(Account a) {
        Account account = ad.updateAccountPsd(a);
        return account;
    }

    public List<Account> getAllUsers() {
        List<Account> allAccounts = ad.getAllAccounts();
        return allAccounts;
    }

    public List<Transaction> getallRecords(String account_id) {
        return ad.getAllTransactionByAccountId(account_id);
    }

}
