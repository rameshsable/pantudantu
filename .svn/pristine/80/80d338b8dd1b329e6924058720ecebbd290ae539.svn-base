package com.xanandu.pantudantu.pass;



import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.poi.util.SystemOutLogger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.xanandu.pantudantu.bill.BillService;
import com.xanandu.pantudantu.customer.CustomerService;
import com.xanandu.pantudantu.model.Bill;
import com.xanandu.pantudantu.model.BillDetails;
import com.xanandu.pantudantu.model.BillPayType;
import com.xanandu.pantudantu.model.BillPaymentDetails;
import com.xanandu.pantudantu.model.Customer;

import com.xanandu.pantudantu.model.Locality;
import com.xanandu.pantudantu.model.MonthlyPass;
import com.xanandu.pantudantu.model.MonthlyPassAssignment;
import com.xanandu.pantudantu.model.PassPaymentDetails;
import com.xanandu.pantudantu.model.ServiceTax;
import com.xanandu.pantudantu.model.VisitPass;
import com.xanandu.pantudantu.model.VisitPassAssignmen;
import com.xanandu.pantudantu.servicetax.ServiceTaxService;

@Controller
public class PassController {
	
	@Autowired
	BillService billservice;
	@Autowired
	CustomerService customerservice;
	@Autowired
	ServiceTaxService taxService;
	
	@Autowired
	PassService passService;
	
	
	
	
	
	

	@RequestMapping(value = "assign", method = RequestMethod.GET)
	public ModelAndView login(HttpServletRequest request,org.springframework.ui.Model model) {

	
		 List<Customer>customerlist=customerservice.getListOfCustomer();
    	 List<Locality>localities =customerservice.getLocality(); 
    	 List<VisitPass>visitpasslist=billservice.getListOfVisitPass();
    	 List<MonthlyPass> monthlypasslist=billservice.getListOfMonthlypass();
    	 
    	 model.addAttribute("monthlypasslist", monthlypasslist);
    	 model.addAttribute("visitpasslist", visitpasslist);
    	 model.addAttribute("localities", localities);
		 model.addAttribute("customerlist", customerlist);
		 System.out.println("inside visit valle");
		 
		 
		return new ModelAndView("assignPass");
	}
	
	
	@RequestMapping(value="/printPassBill", method = RequestMethod.POST)
	 public ModelAndView printBill(@RequestParam("visit") String visitid,@RequestParam("month") String monthid, ModelMap model)
	 {
		
		System.out.println("print xzzczcz");
		
		VisitPassAssignmen visitPassAssignmen= passService.getBillOfVisitPassByVisitPassId(Integer.parseInt(visitid));
		MonthlyPassAssignment monthlyPassAssignment=passService.getBillOfMonthlyPassByMonthlyPassId(Integer.parseInt(monthid));
		System.out.println(monthlyPassAssignment.toString());
		System.out.println(visitPassAssignmen.toString());
		 model.addAttribute("visitPassAssignmen",visitPassAssignmen);
		 model.addAttribute("monthlyPassAssignment",monthlyPassAssignment);
		
		return new ModelAndView("BillPrintOfPass");
		
	 }
	
	@RequestMapping(value="assignPass",method=RequestMethod.POST)
	public ModelAndView assignPass(@RequestParam("startDate") String startDate,@RequestParam("type")
	String type,@RequestParam("endDate") String endDate,@RequestParam("hidden")
	String hidden, @RequestParam("cname") String cname,@RequestParam("lname") String lname,
	@RequestParam("fathername") String fathername,@RequestParam("mothername") String mothername,
	@RequestParam("email") String email,@RequestParam("mno1") String mno1,
	@RequestParam("mno2") String mno2,@RequestParam("locality") String locality,
	@RequestParam("address") String address,@RequestParam("datepicker12") String datepicker12,
	@RequestParam("id1") String id1,@RequestParam("totalAmount") String totalAmount,
	@RequestParam("startDatem") String startDatem,@RequestParam("endDatem") String endDatem,
	@RequestParam("typem") String typem,@RequestParam("hiddenm") String hiddenm,
	@RequestParam("date1") String date1,@RequestParam("date2") String date2,
	@RequestParam("date3") String date3,@RequestParam("date4") String date4,@RequestParam("mpassPrice") String mpassPrice,
	@RequestParam("visitpassPrice") String visitpassPrice,@RequestParam("paidAmount") String paidAmount,@RequestParam("paymentchequeNo") String paymentchequeNo,
	@RequestParam("paymentchequeBank") String paymentchequeBank,@RequestParam("payMode") String payMode,
	@RequestParam("countryCodeMob1") String countryCodeMob1,
	@RequestParam("countryCodeMob2") String countryCodeMob2,org.springframework.ui.Model model)
	{
		

		int type1=Integer.parseInt(type);
		Date startdate = null;
		Date enddate = null;
		
		int flag1=0,flag2=0;
		if(startDate=="" ||endDate=="")
		{
			flag1=1;
		}
		
		if(flag1==0)
		{
			try
			{
				
				SimpleDateFormat dateFormat =new SimpleDateFormat("dd/MM/yyyy");
				/* Date date2 = null;*/
				 try {
					 startdate =dateFormat.parse(startDate);
				} catch (ParseException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
		/*	 startdate=Date.parse(startDate);	*/
			}catch(Exception e ){
			
			}
		
			try
			{
				
				SimpleDateFormat dateFormat =new SimpleDateFormat("dd/MM/yyyy");
				/* Date date2 = null;*/
				 try {
					 enddate =dateFormat.parse(endDate);
				} catch (ParseException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
			/*	enddate=Date.parse(endDate);	*/
			}catch(Exception e ){
				
			}
	}
		
		
		Date startm = null;
		Date endm = null;
		if(startDatem =="" ||endDatem =="" )
		{
			flag2=1;
		}
		
		if(flag2==0)
		{
			try
			{
				/*startm=Date.parse(startDatem);	*/
				SimpleDateFormat dateFormat =new SimpleDateFormat("dd/MM/yyyy");
				/* Date date2 = null;*/
				 try {
					 startm =dateFormat.parse(startDatem);
				} catch (ParseException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
				
			}catch(Exception e ){
				
			}
			
			try
			{
				/*endm=Date.parse(endDatem);*/
				SimpleDateFormat dateFormat =new SimpleDateFormat("dd/MM/yyyy");
				/* Date date2 = null;*/
				 try {
					 endm =dateFormat.parse(endDatem);
				} catch (ParseException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
			}catch(Exception e ){
				
			}
		}
		
		
		
		
		
		
		int idd=Integer.parseInt(id1);
	    double total = 0;	
	    try{
	    	total=Double.parseDouble(visitpassPrice);
	    }catch(Exception e){
	    	
	    }
		
	    Customer c=new Customer();
	    Locality loc=new Locality();
	    try{
	    	loc.setId(Integer.parseInt(locality));	
	    }catch(Exception e){
	    	e.printStackTrace();
	    }
	    
		 
	    int PassId=0;
	    int PassId1=0;
	    if(flag1==0)
	    {
	    
		if(hidden.equalsIgnoreCase("visit"))
		{
			 
			//System.out.println("monthly visit");
			VisitPassAssignmen vass=new VisitPassAssignmen();
			VisitPass p=new VisitPass();
			 
			if(idd !=0)
			{
			
				c.setCid(idd);
				c.setChildname(cname);
				c.setLastName(lname);
				c.setFatherName(fathername);
				c.setMotherName(mothername);
				c.setEmail(email);
				c.setMob1(mno1);
				c.setMob2(mno2);
		    	c.setLocality(loc);
				c.setAddress(address);
				c.setCountryCodeMobile1(countryCodeMob1);
				c.setCountryCodeMobile2(countryCodeMob2);
				c.setLastComingDate(new Date());
				customerservice.saveCustomer(c);

				
				p=passService.getVisitPass(type1);
				
				
				
				vass.setStartDate(startdate);
				vass.setEndDate(enddate);
				vass.setCust(c);
				vass.setPass(p);
				vass.setTotal(total);
			
				PassId=	billservice.saveVisitPassAssigment(vass);
				
				Bill bill =new Bill();
				bill.setCust(c);
				bill.setBill_amount(total);
				bill.setBill_Date(new Date());
				bill.setBill_discount(0);
				ServiceTax tax=new ServiceTax();
			  	tax.setId(1);
				bill.setServiceTax(tax);
				bill.setOsfhandling(0);
				bill.setBill_paid(total);
				bill.setBill_other(0);

				billservice.billsave(bill);
				
				
				BillDetails billDetails =new BillDetails();
				billDetails.setAdult(0);
				billDetails.setChild(1);
				billDetails.setAmount(total);
				billDetails.setAttempt("-");
				billDetails.setBill(bill);
				
				BillPayType billPayType =new   BillPayType();
				billPayType.setBilldetail_id(6);
				billDetails.setBillPayType(billPayType);
				
				billDetails.setVisitPassAssignmen(vass);
				billDetails.setChild(1);
				billDetails.setPasstype(p.getPassTypa());
				billDetails.setTot_time("-");
				
				billservice.saveBillDetailByBillDetailObj(billDetails);
				
				BillPaymentDetails paymentDetails =new BillPaymentDetails();
				paymentDetails.setBill(bill);
				paymentDetails.setPaid_amount(total+"");
				paymentDetails.setPaid_type(payMode);
				paymentDetails.setBankname(paymentchequeBank);
				paymentDetails.setCheque_number(paymentchequeNo);
				paymentDetails.setPaid_date(bill.getBill_Date());
				
				billservice.saveBillPaymentByBillPaymentObj(paymentDetails);
				System.out.println("sdsf");
				
			}
			
			else
			{
				c.setChildname(cname);
				c.setLastName(lname);
				c.setFatherName(fathername);
				c.setMotherName(mothername);
				c.setEmail(email);
				c.setMob1(mno1);
				c.setMob2(mno2);
				c.setLocality(loc);
				c.setAddress(address);
				c.setCountryCodeMobile1(countryCodeMob1);
				c.setCountryCodeMobile2(countryCodeMob2);
				c.setLastComingDate(new Date());
				long d=Date.parse(datepicker12);
				c.setDob(new Date(d));
				customerservice.saveCustomer(c);
				System.out.println("data inserted");
				int id=c.getCid();
				System.out.println(c.getCid());
				p=passService.getVisitPass(type1);
				
			
				
				vass.setStartDate(startdate);
				vass.setEndDate(enddate);
				vass.setCust(c);
				vass.setPass(p);
				vass.setTotal(total);
				PassId=	billservice.saveVisitPassAssigment(vass);
			

				
				
				Bill bill =new Bill();
				bill.setCust(c);
				bill.setBill_amount(total);
				bill.setBill_Date(new Date());
				bill.setBill_discount(0);
				ServiceTax tax=new ServiceTax();
			  	tax.setId(1);
				bill.setServiceTax(tax);
				bill.setOsfhandling(0);
				bill.setBill_paid(total);
				bill.setBill_other(0);

				billservice.billsave(bill);
				BillDetails billDetails =new BillDetails();
				billDetails.setAdult(0);
				billDetails.setChild(1);
				billDetails.setAmount(total);
				billDetails.setAttempt("-");
				billDetails.setBill(bill);
				
				BillPayType billPayType =new   BillPayType();
				billPayType.setBilldetail_id(6);
				billDetails.setBillPayType(billPayType);
				
				billDetails.setVisitPassAssignmen(vass);
				
				billDetails.setChild(1);
				billDetails.setPasstype(p.getPassTypa());
				billDetails.setTot_time("-");
				
				billservice.saveBillDetailByBillDetailObj(billDetails);
				
				BillPaymentDetails paymentDetails =new BillPaymentDetails();
				paymentDetails.setBill(bill);
				paymentDetails.setPaid_amount(total+"");
				paymentDetails.setPaid_type(payMode);
				paymentDetails.setBankname(paymentchequeBank);
				paymentDetails.setCheque_number(paymentchequeNo);
				paymentDetails.setPaid_date(bill.getBill_Date());
				billservice.saveBillPaymentByBillPaymentObj(paymentDetails);
			}
			
		}
		
	    }
		
		
	    
	    
	    if(flag2==0) {
	    	try{
		    	total=Double.parseDouble(mpassPrice);
		    }catch(Exception e){
		    	
		    }
	
		if(hiddenm.equalsIgnoreCase("monthly"))
		{
		
			
			
			MonthlyPass m=new MonthlyPass();
		
			MonthlyPassAssignment mp=new MonthlyPassAssignment();
			
			
			if(idd !=0)
			{
				
				c.setCid(idd);
				c.setChildname(cname);
				c.setLastName(lname);
				c.setFatherName(fathername);
				c.setMotherName(mothername);
				c.setEmail(email);
				c.setMob1(mno1);
				c.setMob2(mno2);
				c.setLocality(loc);
				c.setAddress(address);
				c.setCountryCodeMobile1(countryCodeMob1);
				c.setCountryCodeMobile2(countryCodeMob2);
				c.setLastComingDate(new Date());
				long d=Date.parse(datepicker12);
				c.setDob(new Date(d));
				customerservice.saveCustomer(c);
				m=passService.getMonthlyPass(Integer.parseInt(typem));
				System.out.println(m.getMonpasstype());
				
				
				mp.setCust(c);
				mp.setPass(m);
				mp.setEndDate(endm);
				mp.setStartDate(startm);
				mp.setTotal(total);
				PassId1=	billservice.saveMonthlyPassAssigment(mp);
				
				
				
				Bill bill =new Bill();
				bill.setCust(c);
				bill.setBill_amount(total);
				bill.setBill_Date(new Date());
				bill.setBill_discount(0);
				ServiceTax tax=new ServiceTax();
			  	tax.setId(1);
				bill.setServiceTax(tax);
				bill.setOsfhandling(0);
				bill.setBill_paid(total);
				bill.setBill_other(0);

				billservice.billsave(bill);
				BillDetails billDetails =new BillDetails();
				billDetails.setAdult(0);
				billDetails.setChild(1);
				billDetails.setAmount(total);
				billDetails.setAttempt("-");
				billDetails.setBill(bill);
				
				BillPayType billPayType =new   BillPayType();
				billPayType.setBilldetail_id(5);
				billDetails.setBillPayType(billPayType);
				
				billDetails.setChild(1);
				billDetails.setPasstype(m.getMonpasstype());
				billDetails.setTot_time("-");
				billDetails.setMonthlyPassAssignment(mp);
				billservice.saveBillDetailByBillDetailObj(billDetails);
				
				BillPaymentDetails paymentDetails =new BillPaymentDetails();
				paymentDetails.setBill(bill);
				paymentDetails.setPaid_amount(total+"");
				paymentDetails.setPaid_type(payMode);
				paymentDetails.setBankname(paymentchequeBank);
				paymentDetails.setCheque_number(paymentchequeNo);
				paymentDetails.setPaid_date(bill.getBill_Date());
				billservice.saveBillPaymentByBillPaymentObj(paymentDetails);
				
				
			}
			else
			{
				
		
			
			c.setChildname(cname);
			c.setLastName(lname);
			c.setFatherName(fathername);
			c.setMotherName(mothername);
			c.setEmail(email);
			c.setMob1(mno1);
			c.setMob2(mno2);
			c.setCountryCodeMobile1(countryCodeMob1);
			c.setCountryCodeMobile2(countryCodeMob2);
			c.setLastComingDate(new Date());
		//	c.setLocality(locality);
			c.setAddress(address);
			long d=Date.parse(datepicker12);
			c.setDob(new Date(d));
			customerservice.saveCustomer(c);
			
			
			m=passService.getMonthlyPass(Integer.parseInt(typem));
			
			
			
			mp.setStartDate(startm);
			mp.setEndDate(endm);
			mp.setCust(c);
			mp.setPass(m);
			mp.setTotal(total);
			PassId1=	billservice.saveMonthlyPassAssigment(mp);	
			
			
			Bill bill =new Bill();
			bill.setCust(c);
			bill.setBill_amount(total);
			bill.setBill_Date(new Date());
			bill.setBill_discount(0);
			ServiceTax tax=new ServiceTax();
		  	tax.setId(1);
			bill.setServiceTax(tax);
			bill.setOsfhandling(0);
			bill.setBill_paid(total);
			bill.setBill_other(0);

			billservice.billsave(bill);
			BillDetails billDetails =new BillDetails();
			billDetails.setAdult(0);
			billDetails.setChild(1);
			billDetails.setAmount(total);
			billDetails.setAttempt("-");
			billDetails.setBill(bill);
			
			BillPayType billPayType =new   BillPayType();
			billPayType.setBilldetail_id(5);
			billDetails.setBillPayType(billPayType);
			
			billDetails.setChild(1);
			billDetails.setPasstype(m.getMonpasstype());
			billDetails.setMonthlyPassAssignment(mp);
			billDetails.setTot_time("-");
			
			billservice.saveBillDetailByBillDetailObj(billDetails);
			
			BillPaymentDetails paymentDetails =new BillPaymentDetails();
			paymentDetails.setBill(bill);
			paymentDetails.setPaid_amount(total+"");
			paymentDetails.setPaid_type(payMode);
			paymentDetails.setBankname(paymentchequeBank);
			paymentDetails.setCheque_number(paymentchequeNo);
			paymentDetails.setPaid_date(bill.getBill_Date());
			billservice.saveBillPaymentByBillPaymentObj(paymentDetails);
			
			}
		}
	}
	    
	   
	    
		
	
	    	PassPaymentDetails  passpaymentdetcheque =new PassPaymentDetails()  ;
			passpaymentdetcheque.setBankname(paymentchequeBank);
			passpaymentdetcheque.setCheque_number(paymentchequeNo);
			passpaymentdetcheque.setPaid_type(payMode);
			passpaymentdetcheque.setPaid_amount(paidAmount );
			passpaymentdetcheque.setPaid_date(new Date());
			
			if(flag1==0){
				
				VisitPassAssignmen assignmen=new VisitPassAssignmen();
				assignmen.setVid(Integer.parseInt(PassId+""));
				passpaymentdetcheque.setVisitPassAssignmen(assignmen);
				
			}if(flag2==0){
				MonthlyPassAssignment assignment =new MonthlyPassAssignment();
				assignment.setId(Integer.parseInt(PassId1+""));
				passpaymentdetcheque.setMonthlyPassAssId(assignment);
			}
			
			passService.savePassPaymentDetails(passpaymentdetcheque);
		  
		 /* 	if(flagcheque==0){
		  		PassPaymentDetails passPayCash  =new PassPaymentDetails();
		  		passPayCash.setPaid_date(new Date());
				passPayCash.setPaid_amount(paymentcash);
				passPayCash.setPaid_type("cash");
		  		
				if(flag1==0){
					
					VisitPassAssignmen assignmen=new VisitPassAssignmen();
					assignmen.setVid(Integer.parseInt(PassId+""));
					passPayCash.setVisitPassAssignmen(assignmen);
					
				}if(flag2==0){
					MonthlyPassAssignment assignment =new MonthlyPassAssignment();
					assignment.setId(Integer.parseInt(PassId1+""));
					passPayCash.setMonthlyPassAssId(assignment);
				}
				passService.savePassPaymentDetails(passPayCash);
		  	}*/
		  	/*if(flagcredit==0){
		  		
		  		PassPaymentDetails paymentDetailscredit= new  PassPaymentDetails();
		  		paymentDetailscredit.setPaid_date(new Date());
				paymentDetailscredit.setPaid_amount(paymentcreditcash);
				paymentDetailscredit.setPaid_type("creditcard");
		  		if(flag1==0){
					
					VisitPassAssignmen assignmen=new VisitPassAssignmen();
					assignmen.setVid(Integer.parseInt(PassId+""));
					paymentDetailscredit.setVisitPassAssignmen(assignmen);
					
				}if(flag2==0){
					MonthlyPassAssignment assignment =new MonthlyPassAssignment();
					assignment.setId(Integer.parseInt(PassId1+""));
					paymentDetailscredit.setMonthlyPassAssId(assignment);
				}
				
				passService.savePassPaymentDetails(paymentDetailscredit);
		  	}*/
		  
		  	
		  	
		  	if(PassId>0 && PassId1>0){
		  		VisitPassAssignmen visitPassAssignmen= passService.getBillOfVisitPassByVisitPassId(Integer.parseInt(PassId+""));
		  		MonthlyPassAssignment monthlyPassAssignment=passService.getBillOfMonthlyPassByMonthlyPassId(Integer.parseInt(PassId1+""));
		  		 model.addAttribute("visitPassAssignmen",visitPassAssignmen);
				 model.addAttribute("monthlyPassAssignment",monthlyPassAssignment);
				 return new ModelAndView("BillPrintOfPass");
		  	}
		  	if(PassId>0){
		  		VisitPassAssignmen visitPassAssignmen= passService.getBillOfVisitPassByVisitPassId(Integer.parseInt(PassId+""));	
		  		 model.addAttribute("visitPassAssignmen",visitPassAssignmen);
		  		 return new ModelAndView("BillPrintOfPass");
		  	}
		  	if(PassId1>0){
		  		MonthlyPassAssignment monthlyPassAssignment=passService.getBillOfMonthlyPassByMonthlyPassId(Integer.parseInt(PassId1+""));	
		  		 model.addAttribute("monthlyPassAssignment",monthlyPassAssignment);
				 return new ModelAndView("BillPrintOfPass");
		  	}
			
		  	
		  	return null;
			
	
	}


	    
} 
