/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package beans;

/**
 *
 * @author Rownak
 */
public class User {
    private String email="" ;
    private String password="";
    private String message="";

    public User(String email, String password) {
        this.email = email;
        this.password = password;
    }

    public User() {
    }

    
    
    public String getMessage() {
        return message;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    
    public boolean validate(){
        
        if(email == null){
            message = "Fill the Email address";
            return false;
        }
        else if(!email.matches("\\w+@\\w+.\\w+")){
            message = "Invalid Email address";
            return false;
        }
        if(password == null){
            message = "Fill password field";
            return false;
        }
        if(password.length()<8){
            message = "password must contain at least 8 char";
            return false;
        }
        else if(password.matches("\\w*\\s+\\w*")){
            message = "password must not contain space";
            return false;
        }
        return true;
    }
}
