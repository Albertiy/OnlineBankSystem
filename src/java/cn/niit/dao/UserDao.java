/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cn.niit.dao;

import cn.niit.domain.User;
import java.util.List;

/**
 *
 * @author BearK
 */
public interface UserDao {

    //保存用户，用于用户注册的时候使用
    void save(User u);

    //查询用户
    User findUserByName(String login_id);

    //修改用户个人信息
    User updateUserInfo(User u);

    //修改用户个人密码
    User updateUserPsd(User u);

    //遍历列表
    List<User> getAllUsers();
}
