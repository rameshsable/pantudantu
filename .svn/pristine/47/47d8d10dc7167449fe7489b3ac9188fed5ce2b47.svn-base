package com.xanandu.pantudantu.mailsender;

import javax.mail.internet.MimeMessage;

import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;

public class MarketingMailPrepairer implements MimeMessagePreparator {

	String emailAddress;
	String message;
	public MarketingMailPrepairer(String  emailAddress,String message){
		this.message=message;
		this.emailAddress=emailAddress;
	}
	
	@Override
	public void prepare(MimeMessage mimeMessage) throws Exception {
		// TODO Auto-generated method stub
		MimeMessageHelper mimeMessageHelper = new MimeMessageHelper(mimeMessage, true);

		mimeMessageHelper.addTo(emailAddress);
		//mimeMessageHelper.setTo(bill.getCust().getEmail());
		
		mimeMessageHelper.setSubject("PantuDantu");

		StringBuilder text = new StringBuilder();
		text.append("<html>");
		text.append("<body>");
		
		text.append("<p>" +message +"</p>");
		text.append("</body>");
		text.append("</html>");
		mimeMessageHelper.setText(text.toString(), true);

	}

}
