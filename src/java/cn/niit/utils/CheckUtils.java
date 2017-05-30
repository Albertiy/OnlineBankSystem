package cn.niit.utils;

import java.util.HashMap;
import java.util.Map;

import cn.niit.domain.User;

public class CheckUtils {

	public static Map<String, String> CheckUser(User u) {
		Map<String, String> map=new HashMap<String, String>();
		//如果用户名为空
		if(u.getLogin_id()==null||"".equals(u.getLogin_id().trim()))
		{
			map.put("name", "用户名不能为空");
		}
		//如果密码为空
		if(u.getLogin_pw()==null||"".equals(u.getLogin_pw().trim()))
		{
			map.put("password", "密码不能为空");
		}
		return map;
	}
}
