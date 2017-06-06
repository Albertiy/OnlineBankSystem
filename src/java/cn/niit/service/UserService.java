/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cn.niit.service;

import cn.niit.dao.UserDao;
import cn.niit.dao.impl.UserDaoImpl;
import cn.niit.domain.User;
import java.util.List;

/**
 *
 * @author BearK
 */
public class UserService {

    private UserDao ud = new UserDaoImpl();

    public void regist(User u) {
        //1.校验用户名不重复
        User user = ud.findUserByName(u.getLogin_id());
        if (user != null) {
            //说明用户名已经存在了
            throw new RuntimeException("用户名已经存在");
        }
        //2.调用dao，执行保存操作
        ud.save(u);
    }

    public User login(User u) {
        //1.校验用户名是否存在
        User user = ud.findUserByName(u.getLogin_id());
//        if (user == null) {
//            //说明用户名不存在
//            throw new RuntimeException("用户名不存在！");
//        }
        if (user == null||!user.getLogin_pw().equals(u.getLogin_pw())) {
            //说明密码不正确
            throw new RuntimeException("用户名错误或密码不正确！");
        }
        //2.登录成功，返回user对象
        return user;
    }

    public List<User> getAllUsers() {
        List<User> allUsers = ud.getAllUsers();
        return allUsers;
    }
}
