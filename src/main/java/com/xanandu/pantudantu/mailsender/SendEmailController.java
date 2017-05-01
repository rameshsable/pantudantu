package com.xanandu.pantudantu.mailsender;

import java.io.IOException;
import java.io.InputStreamReader;
import java.io.Reader;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import java.security.cert.X509Certificate;
import java.util.Properties;

import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.internet.MimeMessage;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSession;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.xanandu.pantudantu.bill.BillService;
import com.xanandu.pantudantu.model.Bill;
import java.io.InputStreamReader;
import java.io.Reader;
import java.net.URL;
import java.net.URLConnection;

import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSession;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;
import java.security.cert.X509Certificate;
@Controller

public class SendEmailController {
	

	@Autowired
	private JavaMailSender mailSender;
	
	@Autowired
	BillService billservice;

	
	/*@RequestMapping("/sendEmail")*/
	@RequestMapping(value="/sendEmail", method = RequestMethod.GET)
	@ResponseBody
	public String doSendEmail(@RequestParam("billID") String email,HttpServletRequest request) {
		
		// http://www.javabeat.net/how-to-send-email-using-spring-framework/
	
		//Bill bill=billservice.getBillById(id);
	/*	
		MimeMessage mimeMessage =mailSender.createMimeMessage();
		
		try{
			
			MailPrepairer mailPrepairer= new MailPrepairer(email);
			SendEmailController controller =new SendEmailController(bill);
			mailPrepairer.prepare(mimeMessage);
			mailSender.send(mailPrepairer);
		}catch(Exception e){
			e.printStackTrace();
			return e.toString();
		}
		
		System.out.println("success");*/
		// forwards to the view named "Result"
	

	    /*
	     *  fix for
	     *    Exception in thread "main" javax.net.ssl.SSLHandshakeException:
	     *       sun.security.validator.ValidatorException:
	     *           PKIX path building failed: sun.security.provider.certpath.SunCertPathBuilderException:
	     *               unable to find valid certification path to requested target
	     */
	  
		
		 
        System.out.println("SimpleEmail Start");
         
        String smtpHostServer = "smtp.gmail.com";
        
         
        Properties props = new Properties();
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port", "587");
 
       /* Session session = Session.getInstance(props, null);*/
        Session session = Session.getInstance(props,
      		  new javax.mail.Authenticator() {
      			protected PasswordAuthentication getPasswordAuthentication() {
      				return new PasswordAuthentication("Pantudantu.feedback@gmail.com", "asdfgh@123");
      			}
      		  });
         
    //  String s=  EmailUtil.sendEmail(session, email,"PantuDantu", "Thank you for visiting PantuDantu	We value your feedback. Request you to kindly share your experience on www.pantudantukids.com/feedback");
    	return "";
	}

	
	
}