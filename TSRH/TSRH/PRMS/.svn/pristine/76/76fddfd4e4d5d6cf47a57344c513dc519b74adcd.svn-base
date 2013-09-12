/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.uta.tsrh.RoleManagement.Helper;

import edu.uta.tsrh.Logger.ILogger;
import edu.uta.tsrh.Logger.Log4JLogger;
import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

/**
 *
 * @author Shwetha
 */
public class MailHelper {

    private String to;
    private String subject;
    private String body;
    //Class to read the Admin cfg file containing the Admin Email Id and Password.
    private AdminConfigReader adminConfigReader;
    private ILogger logger;
  

    public MailHelper(String to, String subject, String body) {
        this.adminConfigReader = new AdminConfigReader();
        this.to = to;
        this.subject = subject;
        this.body = body;
        logger = Log4JLogger.GetLoggerObject();
    }

    public String getTo() {
        return to;
    }

    public void setTo(String to) {
        this.to = to;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getBody() {
        return body;
    }

    public void setBody(String body) {
        this.body = body;
    }

    //Sends the mail to a to email, with the subject and body set in the MailHelper class.
    public boolean sendMail() {
        Properties props = new Properties();
        
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.socketFactory.port", "465");
        props.put("mail.smtp.socketFactory.class",
                "javax.net.ssl.SSLSocketFactory");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.port", "465");

        Session session = Session.getDefaultInstance(props,
                new javax.mail.Authenticator() {
                    @Override
                    protected PasswordAuthentication getPasswordAuthentication() {

                        String emailProp = adminConfigReader.getProperty("admin_email");
                        logger.LogMessage("Sahul", "MailHelper", emailProp);
                        String emailPass = adminConfigReader.getProperty("admin_password");
                        logger.LogMessage("Sahul", "MailHelper", emailPass);
                        
                        
                        return new PasswordAuthentication(adminConfigReader.getProperty("admin_email"), adminConfigReader.getProperty("admin_password"));
                        // A new gmail account is created with the above gmail Id and the password "admin_tsrh"
                    }
                });

        try {

            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(adminConfigReader.getProperty("admin_email")));
            message.setRecipients(Message.RecipientType.TO,
                    InternetAddress.parse(this.to));
            message.setSubject(this.subject);
            message.setText(this.body);

            Transport.send(message);

        } catch (MessagingException e) {
            throw new RuntimeException(e);
        }

        return true;
    }
}
