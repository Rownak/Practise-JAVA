/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.rownak.javabrains.services;

import com.rownak.javabrains.bean.User;
import java.util.HashMap;

/**
 *
 * @author asus
 */
public class LoginService {
    
            HashMap<String,String> userMap = new HashMap<String,String>();
        
        public LoginService(){
            userMap.put("afr", "Ahnaf Farhan");
            userMap.put("si", "Sajjadul Islam");
            userMap.put("fh","Fahad Hasan");
            userMap.put("adn", "Anitam Das");
        }
    
    public boolean authenticate(String userName, String password){
        

        
        if(password == null || password.trim() ==""  ){
            return false;
        }
        return true;
    }
    
    public User userDetails(String userId){
        
        User user = new User();
        
        user.setUserName(userMap.get(userId));
        user.setUserId(userId);
        return user;
    }
    
}
