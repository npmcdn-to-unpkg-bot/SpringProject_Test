package email.bean;

import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailException;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;


public class EmailSender {
	 @Autowired
     protected JavaMailSender  mailSender;
     public void SendEmail(Email email) throws Exception {
          
    	 MimeMessage msg = mailSender.createMimeMessage();
         MimeMessageHelper helper = new MimeMessageHelper(msg);
         try {
        	 helper.setSubject(email.getSubject());
             helper.setText(email.getContent());
             helper.setFrom("qoaqja@gmail.com");
             System.out.println(email.getReceiver());
             msg.setRecipients(MimeMessage.RecipientType.TO , InternetAddress.parse(email.getReceiver()));
            
         }catch(MessagingException e) {
             System.out.println("MessagingException");
             e.printStackTrace();
         }
         try {
             mailSender.send(msg);
         }catch(MailException e) {
             System.out.println("MailException발생");
             e.printStackTrace();
         }
     }
}
