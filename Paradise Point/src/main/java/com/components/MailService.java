package com.components;

import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
public class MailService {
	
	public Session Authentication() {
		final String username = "paradisepoint.event@gmail.com";
		final String password = "dhivpavijen";
		
		String host = "smtp.gmail.com";
	    Properties props = System.getProperties();
	    props.put("mail.smtp.host", host);
	    props.put("mail.smtp.user", username);
	    props.put("mail.smtp.password", password);
	    props.put("mail.smtp.starttls.enable", "true");
	    props.put("mail.smtp.port", "587"); 
	    props.put("mail.smtp.auth", "true");
		
		Session session = Session.getInstance(props, new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(username,password);
			}
		});
		
		return session;
		
	}
	
	
	public void Notification(String toEmail, int purchaseid) {
		
		String fromEmail = "paradisepoint.event@gmail.com";
		
		Session session = Authentication();
		
		//Start our mail message
		MimeMessage msg = new MimeMessage(session);
		try {
			//Scanner sc = new Scanner(System.in);
			
			msg.setFrom(new InternetAddress(fromEmail));
			
			msg.addRecipient(Message.RecipientType.TO, new InternetAddress(toEmail));
			
			msg.setSubject("Paradise Point");
			
			Multipart emailContent = new MimeMultipart();
			
			//Text body part
			MimeBodyPart textBodyPart = new MimeBodyPart();
			textBodyPart.setText("Thanks for choosing us! \nPlease find the attachment for your bill");
			
			MimeBodyPart attach = new MimeBodyPart();
			
			//Attach body parts
			emailContent.addBodyPart(textBodyPart);
			emailContent.addBodyPart(attach);
			
			//Attachment body part.
			String pdfName=purchaseid+".pdf";
			attach.attachFile(pdfName);
			
			//Attach multipart to message
			msg.setContent(emailContent);
			
			Transport.send(msg);
			System.out.println("Sent message");
		} catch (Exception e) {
			e.printStackTrace();
		}

	}
    public void NotificationToAdmin() {
		
		String email = "paradisepoint.event@gmail.com";
		
		Session session = Authentication();
		
		//Start our mail message
		MimeMessage msg = new MimeMessage(session);
		try {
			//Scanner sc = new Scanner(System.in);
			
			msg.setFrom(new InternetAddress(email));
			
			msg.addRecipient(Message.RecipientType.TO, new InternetAddress(email));
			
			msg.setSubject("Paradise Point | Report");
			
			Multipart emailContent = new MimeMultipart();
			
			//Text body part
			MimeBodyPart textBodyPart = new MimeBodyPart();
			textBodyPart.setText("Please find the attachment for user orders' report.");
			
			MimeBodyPart attach = new MimeBodyPart();
			
			//Attach body parts
			emailContent.addBodyPart(textBodyPart);
			emailContent.addBodyPart(attach);
			
			//Attachment body part.
			String excelName="OrdersReport.xlsx";
			attach.attachFile(excelName);
			
			//Attach multipart to message
			msg.setContent(emailContent);
			
			Transport.send(msg);
			System.out.println("Sent message");
		} catch (Exception e) {
			e.printStackTrace();
		}


	}
}
