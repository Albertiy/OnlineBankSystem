/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cn.niit.dao;
import java.util.List;
import cn.niit.domain.Account;

/**
 *
 * @author BearK
 */
public interface AccountDao {
    	//保存用户，用于用户注册的时候使用
	void save(Account a);
	
	//查询用户是否存在
	Account findAccountByName(String login_id);
	
	//遍历列表
	List<Account> getAllAccounts();
    
}
