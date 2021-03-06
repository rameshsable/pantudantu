package com.xanandu.pantudantu.marketing;

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
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;

import org.codehaus.jackson.map.ObjectMapper;
import org.codehaus.jackson.map.ObjectWriter;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.xanandu.pantudantu.customer.CustomerService;
import com.xanandu.pantudantu.mailsender.MarketingMailPrepairer;
import com.xanandu.pantudantu.model.Customer;
import com.xanandu.pantudantu.model.Permission;

@Controller
public class MarketingController {
	
	
	
	@Autowired
	MarketingService marketingService;
	@Autowired
	CustomerService customerservice;
	
	
	@RequestMapping(value="/Marketing" , method=RequestMethod.GET)
	public ModelAndView marketingHome(org.springframework.ui.Model model)
	{
		
		
		List<Customer>custList=customerservice.getListOfCustomer();
		
		model.addAttribute("customerList", custList);
		return new ModelAndView("Marketing");
	}
	
	@Autowired
	private JavaMailSender mailSender;
	
	
	
	@RequestMapping(value="/searchCustomDetailsByDate", method = RequestMethod.GET)
	@ResponseBody
	 public String sho(@RequestParam("date1") String date1,@RequestParam("date2") String date2, ModelMap model)
	 {
		
		try {
			//	Thread.sleep(2000);
			
			Date d1=null,d2=null;
			SimpleDateFormat format= new SimpleDateFormat("dd/MM/yyyy");
			try {
				 d1=format.parse(date1);
				 d2=format.parse(date2);
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			List<Customer> userPermissions=customerservice.getListOfCustomerByDateRange(d1,d2);
			ArrayList<String> newList = new ArrayList<String>();
		    JSONObject mainObj = new JSONObject();
			ObjectWriter ow = new ObjectMapper().writer().withDefaultPrettyPrinter();
			String json = ow.writeValueAsString(userPermissions);
			return json;
		} catch (Exception e) {
		e.printStackTrace();
	}
	return "";
		 
		 
	 }
	
	
	@RequestMapping(value="/sendEmailOrSms" , method=RequestMethod.POST)
	@ResponseBody
	public String sendEmailOrSms(@RequestParam("emailId") String[] emailId,@RequestParam("mobile") String[] mobile,
			@RequestParam("message") final String message,org.springframework.ui.Model model,@RequestParam("type") String[] type)
	{
		
		
		
		final List<String> email=Arrays.asList(emailId);
		final List<String> mob=Arrays.asList(mobile);
		List<String> sendOptions=Arrays.asList(type);
		
	
		int flagSms=0;
		int flagEmail=0;
		
	int size=	sendOptions.size();
		for(int i=1;i<=size;i++){
			
			String actType=sendOptions.get(i-1);
			
			if(actType.equalsIgnoreCase("email")){
				flagEmail=1;
			}
			if(actType.equalsIgnoreCase("sms")){
				flagSms=1;
			}
			
		}

		
		
		
		/*if(flagSms==1){
			Thread tt = new Thread(new Runnable() {
				public void run() {
					
					for(String m :mob){
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
			
					String mobilenumber = m;
					String message ="Thanks For visiting Pantu Dantu please give your feedback on WWW.pantudantu.com/feedback  thanks." ;
					String message =message;

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
					try {
						url = new URL("http://bhashsms.com/api/sendmsg.php");
					} catch (MalformedURLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}

					HttpURLConnection urlconnection = null;
					try {
						urlconnection = (HttpURLConnection) url
								.openConnection();
					} catch (IOException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}

					// If You Are Behind The Proxy Server Set IP And PORT else Comment Below
					// 4 Lines
					 Properties sysProps = System.getProperties();
					 sysProps.put("proxySet", "true");
					 sysProps.put("proxyHost", "Proxy Ip");
					 sysProps.put("proxyPort", "PORT");

					try {
						urlconnection.setRequestMethod("POST");
					} catch (ProtocolException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					urlconnection.setRequestProperty("Content-Type",
							"application/x-www-form-urlencoded");
					urlconnection.setDoOutput(true);
					OutputStreamWriter out = null;
					try {
						out = new OutputStreamWriter(
								urlconnection.getOutputStream());
					} catch (IOException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					try {
						out.write(postData);
						out.close();
					} catch (IOException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					
					BufferedReader in = null;
					try {
						in = new BufferedReader(new InputStreamReader(
								urlconnection.getInputStream()));
					} catch (IOException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					String decodedString;
					try {
						while ((decodedString = in.readLine()) != null) {
							retval += decodedString;
						}
					} catch (IOException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					try {
						in.close();
					} catch (IOException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					}
					
						}catch (Exception e) {
							// TODO: handle exception
							e.printStackTrace();
						}
					}
					
					
				}});
			tt.start();
		}
		*/
		
		if(flagEmail==1){
			 
			Thread tt = new Thread(new Runnable() {
			
				public void run() {
					MimeMessage mimeMessage =mailSender.createMimeMessage();
					for(String e:email){
						try{
							if(e.equalsIgnoreCase("abc@gmail.com")){
								
							}else{

								MarketingMailPrepairer mailPrepairer =new MarketingMailPrepairer(e,message);	
								mailPrepairer.prepare(mimeMessage);
								mailSender.send(mailPrepairer);	
							}
						}catch(Exception ee){
							ee.printStackTrace();
					
						}
					}
					
				}});
			tt.start();
		}
		
		return "success  ";
	}
	
	
}