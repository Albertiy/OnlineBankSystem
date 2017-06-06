/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cn.niit.utils;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author BearK
 */
public class CookieUtils {
         	public static Cookie getCookieByName(HttpServletRequest request,String name){
     		Cookie cookie  = null;
     		
    		Cookie[] cookies = request.getCookies();
    		
   		if(cookies!=null){
   			for(Cookie c: cookies){
   				if(name.equals(c.getName())){
    					cookie = c;
   				}
   			}
   		}
   		
   		return cookie;
   	} 
}
