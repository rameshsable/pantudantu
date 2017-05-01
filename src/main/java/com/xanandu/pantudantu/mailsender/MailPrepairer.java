package com.xanandu.pantudantu.mailsender;


import javax.mail.internet.MimeMessage;

import org.springframework.core.io.FileSystemResource;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;

import com.xanandu.pantudantu.model.Bill;

public class MailPrepairer implements MimeMessagePreparator {

	String email;

	public MailPrepairer(String email){
		this.email = email;
	}

	// http://www.javabeat.net/how-to-send-email-using-spring-framework/
	
	public void prepare(MimeMessage mimeMessage) throws Exception {

		MimeMessageHelper mimeMessageHelper = new MimeMessageHelper(mimeMessage, true);

		mimeMessageHelper.setTo(email);
		
		mimeMessageHelper.setSubject("PantuDantu");

		StringBuilder text = new StringBuilder();
		text.append("<html>");
		text.append("<body>");
		/*text.append("<h2>Dear  "+bill.getCust().getChildname()+"   "+bill.getCust().getLastName()+",</h2>");*/
		/*text.append("<p>Your Bill Amount Is  <font color=red>" +bill.getBill_amount()+ "</font> Rs.");*/
		text.append("<br><br>");
		text.append("<p>Thank you for visiting Pantu Dantu	We value your feedback. Request you to kindly share your experience on www.pantudantukids.com/feedback");
		
		/*text.append("<p><img src=\"cid:greetingImage\"/>");*/
		text.append("</body>");
		text.append("</html>");

		// Sets the text
		mimeMessageHelper.setText(text.toString(), true);
		
		
/*		// Sets the text
				mimeMessageHelper.setText(text.toString(), true);

				// Inline content
				FileSystemResource inlineContent = new FileSystemResource("/greetingImage.jpg");			
				mimeMessageHelper.addInline("greetingImage", inlineContent);

				//Attachment
				FileSystemResource greetingImage = new FileSystemResource("/greeting.jpg");
				mimeMessageHelper.addAttachment("Greeting", greetingImage);*/
	}
}