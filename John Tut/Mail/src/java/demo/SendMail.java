/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package demo;

import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

/**
 *
 * @author Rownak
 */
public class SendMail {

    public static void main(String[] args) {
        
        String username = "sajjadrownak@gmail.com";
        String userpass = "201033101826";
        String toAddress = "rownak.sust@gmail.com";
        
        Properties props = new Properties();
        props.setProperty("mail.host", "smtp.gmail.com");
        props.setProperty("mail.smtp.port", "587");
        props.setProperty("mail.smtp.starttls.enable", "true");
        props.setProperty("mail.smtp.auth", "true");
        
        Authenticator auth = new Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(username, userpass);
            }
        };
        
        Session session = Session.getInstance(props, auth);
        
        Message msg = new MimeMessage(session);
        try {
            msg.setSubject("Validation");
            msg.setText("http://192.168.2.110:8084/TouristFriend_BackEnd/");

            msg.setRecipient(Message.RecipientType.TO, new InternetAddress(toAddress));

            Transport.send(msg);
        } catch (MessagingException ex) {
            System.out.println(ex.toString());
            Logger.getLogger(SendMail.class.getName()).log(Level.SEVERE, null, ex);
        }
        System.out.println("Finished..");
    }

}
