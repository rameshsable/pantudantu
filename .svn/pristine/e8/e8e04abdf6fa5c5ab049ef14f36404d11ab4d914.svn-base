package com.xanandu.pantudantu.smsGateway;

import java.io.BufferedReader;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;


import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.net.URL;
import java.net.URLEncoder;
import java.util.Properties;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class SmsGateway {

	@RequestMapping(value="/sendsms" ,method=RequestMethod.GET)
	@ResponseBody
	public String sendSmsViaGateway(@RequestParam("mobno") final String mobno) throws Exception {
		new java.util.Timer().schedule(

			    new java.util.TimerTask() {
			        @Override
			        public void run() {
		
			        	try{
			        	
		String senderId="PANTUD";
		String licenseKey="101553Ab46vR2w9RH5687961c";
		
		//String senderId="amolma";
		//String licenseKey="76662AmhWPMGxtIa549d243b ";
		
		String postData = "";
		String retval = "";

		// give all Parameters In String
		String User = "nikhilr";
		String passwd = "nikhilr";
		String mobilenumber = mobno;
		/*String message ="Thanks For visiting Pantu Dantu please give your feedback on WWW.pantudantu.com/feedback  thanks." ;*/
		String message ="Warm Greetings!"+
		"Thank you for visiting Pantu Dantu	We value your feedback. Request you to kindly share your experience on www.pantudantukids.com/feedback";

		String sid = senderId;
		String mtype = "normal";
		String DR = "Y";
	
		if(!mobilenumber.equals("")){

			String strUrl = "https://control.msg91.com/api/postsms.php";
			String xmlData = "data= <MESSAGE>"
					+ " <AUTHKEY>"+licenseKey+"</AUTHKEY>"
					+ "<ROUTE>template</ROUTE>"
					+ "<SMS TEXT='"+message+"' FROM='"+senderId+"'> "
					+ "<ADDRESS TO='"+mobilenumber+"'></ADDRESS>"
					+ "</SMS>"
					+ "</MESSAGE>";
			try {
				URL url = new URL(strUrl);
				HttpURLConnection http = (HttpURLConnection) url.openConnection();
				http.setDoOutput(true);
				http.setDoInput(true);
				http.setRequestMethod("POST");

				DataOutputStream wr = new DataOutputStream(http.getOutputStream());
				wr.writeBytes(xmlData);
				wr.flush();
				wr.close();
				http.disconnect();

				BufferedReader in = new BufferedReader(new InputStreamReader(
						http.getInputStream()));
				String inputLine;
				if ((inputLine = in.readLine()) != null) {
					in.close();
					System.out.println(inputLine); 
				} else {
					in.close();
					System.out.println("-1");
				}

			} catch (Exception e) {
				System.out.println("Exception Caught..!!!");
				e.printStackTrace();
				System.out.println("-2");;
			}

		try {
			postData += "user=" + URLEncoder.encode(User, "UTF-8") + "&pass="
					+ passwd + "&sender=" + sid + "&phone=" + mobilenumber
					+ "&text=" + URLEncoder.encode(message, "UTF-8") + "&priority="
					+ "dnd" + "&stype=" + mtype;
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		System.out.println(postData +"  post data");
		URL url = null;
		
			url = new URL("http://bhashsms.com/api/sendmsg.php");
	

		HttpURLConnection urlconnection = null;
		
			urlconnection = (HttpURLConnection) url.openConnection();
		

		// If You Are Behind The Proxy Server Set IP And PORT else Comment Below
		// 4 Lines
		/* Properties sysProps = System.getProperties();
		 sysProps.put("proxySet", "true");
		 sysProps.put("proxyHost", "Proxy Ip");
		 sysProps.put("proxyPort", "PORT");*/

		
			urlconnection.setRequestMethod("POST");
		
		urlconnection.setRequestProperty("Content-Type",
				"application/x-www-form-urlencoded");
		urlconnection.setDoOutput(true);
		OutputStreamWriter out = null;
	
			out = new OutputStreamWriter(
					urlconnection.getOutputStream());
		
			out.write(postData);
		
		
			out.close();
		
		BufferedReader in = null;
		
			in = new BufferedReader(new InputStreamReader(
					urlconnection.getInputStream()));
		
		String decodedString;
	
			while ((decodedString = in.readLine()) != null) {
				retval += decodedString;
			}
		
		
			in.close();
		
		}
		
		
			}
			        	 catch (Exception e) {
			 				// TODO Auto-generated catch block
			 				e.printStackTrace();
			 			}
			        }
	 		    }, 
			   // 300000
	 		   7200000
	 		);
	 	
		return "";
	}
/*	public static void main(String[] args) {
		SmsGateway gateway=new SmsGateway();
		try {
			gateway.sendSmsViaGateway("8857002004", "sample message checking from nikhil rathod");
			System.out.println("send");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}*/
}

