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
        
        String username = "afrownak@gmail.com";
        String userpass = "saratasnim";
        String toAddress = "ratul@student.sust.edu";
        
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
            msg.setSubject("Feeling Up and Down");
            msg.setText("Mammmmaaa saradin dhoira exception khaite khaite email pathano Shikhsi , khuuuuuub moja lagtese tai tore mail pathalam");

            msg.setRecipient(Message.RecipientType.TO, new InternetAddress(toAddress));

            Transport.send(msg);
        } catch (MessagingException ex) {
            System.out.println(ex.toString());
            Logger.getLogger(SendMail.class.getName()).log(Level.SEVERE, null, ex);
        }
        System.out.println("Finished..");
    }

}
