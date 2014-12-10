/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Rownak
 */
public class Account {
    
    private Connection conn = null;
    
    public Account(Connection conn){
        this.conn = conn;
    }
    
    public boolean login(String email, String password) throws SQLException{
        
        String sql = "Select count(*) as count from users where email= ? and password= ?";
        
        PreparedStatement stmt = conn.prepareStatement(sql);
        
        stmt.setString(1, email);
        stmt.setString(2,password);
        
        ResultSet rs = stmt.executeQuery();
        int count = 0;
        if(rs.next()){
            count = rs.getInt("count");
        }
        
        stmt.close();
        rs.close();
        if(count==0){
            return false;
        }
        else{
            return true;
        }
    }
    public void create(String email , String password) throws SQLException{
        
        String sql = "INSERT INTO USERS (email,password) VALUES ( ?, ? )";
        
        PreparedStatement stmt = conn.prepareStatement(sql);
        
        stmt.setString(1, email);
        stmt.setString(2, password);
        System.out.println("INserting ...");
        stmt.executeUpdate();
        stmt.close();
        
    }
    public boolean exists(String email) throws SQLException{
        String sql = "Select count(*) as count from users where email=?";
        
        PreparedStatement stmt = conn.prepareStatement(sql);
        System.out.println("Email :" +email);
        stmt.setString(1, email);

        
        ResultSet rs = stmt.executeQuery();
        int count = 0;
        if(rs.next()){
            count = rs.getInt("count");
        }
        System.out.println("count: " + count);
        if(count==0){
             System.out.println("False");
            return true;
           
        }
        else{
             System.out.println("True");
            return false;
        }
        
    }
    
}
