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
    private String email="";
    private String password="";
    private String message="";
    
    
    public User() {
    }

    public User(String email, String password) {
        this.email = email;
        this.password = password;
        
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

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
    
    public boolean validate(){
        
        if(email == null){
            message = "Please fill the Email Field";
            return false;
        }
        else if(password == null){
            message = "Please fill the Password Field";
            return false;
        }
        else if(!email.matches("\\w+(.*)\\w+@\\w+.\\w+")){
            message = "Envalid Email address";
            return false;
        }
        else if(password.length()<8){
            message = "Password must be at least 8 character";
            return false;
        }
        else if(password.matches("\\w*\\s\\w*")){
            message = "Password must not contain any spaces";
            return false;
        }
        
        return true;
    }
    
}
