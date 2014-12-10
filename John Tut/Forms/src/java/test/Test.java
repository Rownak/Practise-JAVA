/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package test;

import beans.User;

/**
 *
 * @author Rownak
 */
public class Test {
    
    public static void main(String[] args) {
        
        User u = new User("afrownak@gmail.com", "asdsdfh sdfhgg");
        
        if(u.validate()){
            System.out.println("Bean validate true");
            
        }
        else{
            System.out.println(u.getMessage());
        }
    }
    
}
