/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cn.niit.dao;

import java.util.List;
import cn.niit.domain.Account;
import cn.niit.domain.Transaction;

/**
 *
 * @author BearK
 */
public interface AccountDao {
    //保存用户，用于用户注册的时候使用

    void save(Account a);

    //查询用户是否存在
    Account findAccountByName(String login_id);

    Account findAccountByAccount_ID(String account_id);
    //查询账户id和name是否匹配

    Account findAccountByNameAndId(String transfer_id, String target_name);
    //保存转账细节

    void saveTransaction(Transaction transaction);

    //修改账户金额
    Account updateBanlance(String account_id, int amount);
    //遍历列表

    List<Account> getAllAccounts();

    public List<Transaction> getAllTransactionByAccountId(String account_id);
    
    public Account updateAccountPsd(Account a);

}
