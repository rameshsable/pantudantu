package com.xanandu.pantudantu.customer;



import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.xanandu.pantudantu.model.Customer;
import com.xanandu.pantudantu.model.Locality;
import com.xanandu.pantudantu.model.RoleModel;
import com.xanandu.pantudantu.model.UserModel;
import com.xanandu.pantudantu.model.UserPermissionType;
import com.xanandu.pantudantu.setup.CreateSetup;
import com.xanandu.pantudantu.userTask.UserService;

@Controller
public class CustomerController {
	
	
	

	@Autowired
	private CustomerService customerservice; 
	@Autowired
	private UserService userservice;
	
	  @RequestMapping(value=" /registration", method=RequestMethod.GET)
	    public ModelAndView registration(Model model)
	    {
	    	
			 List<Customer>customerlist=customerservice.getListOfCustomer();

	    	 List<Locality>localities =customerservice.getLocality(); 
	    	 model.addAttribute("localities", localities);
	    	 model.addAttribute("customerlist", customerlist);
			 return new ModelAndView("registration");
	    	
	    	
	    	
	    }
	
	
	

    @RequestMapping(value="/Register",method=RequestMethod.POST)
	public ModelAndView getCustomerData(HttpServletRequest request,HttpServletResponse response)
	{
		
    	
    	
    
    	
    	String email=request.getParameter("email");
    	String cname=request.getParameter("cname");
    	
    	String lname=request.getParameter("lname");
    	String fathername=request.getParameter("fathername");
    	String  mothername=request.getParameter("mothername");
    	
    	System.out.println(mothername);
    	String mno1=request.getParameter("mno1");
    	String mno2=request.getParameter("mon2");
    	System.out.println(mno2);
    	String locality=request.getParameter("locality");
    	String address=request.getParameter("address");
    	
    	String countryCodeMob1=request.getParameter("countryCodeMob1");   
    	String countryCodeMob2=request.getParameter("countryCodeMob2");
    	
       long date1= Date.parse(request.getParameter("datepicker12"));
       	Locality loc=new Locality();
       	loc.setId(Integer.parseInt(locality));
    	Customer cust=new Customer();
    	cust.setChildname(cname);
    	cust.setLastName(lname);
    	cust.setFatherName(fathername);
    	cust.setMotherName(mothername);
    	cust.setMob1(mno1);
    	cust.setMob2(mno2);
    	cust.setAddress(address);
        cust.setLocality(loc);
    	cust.setEmail(email);
    	cust.setDob(new Date(date1));
    	cust.setCountryCodeMobile1(countryCodeMob1);
    	cust.setCountryCodeMobile2(countryCodeMob2);
    	cust.setLastComingDate(new Date());
    	customerservice.saveCustomer(cust);
    	
    	
    	 return new ModelAndView("registration");
    	
    	
	}

	@RequestMapping(value="/updateAdmin", method=RequestMethod.POST)
	  @ResponseBody
	    public String updatename(@RequestParam("id") String id,
	    		@RequestParam("userName") String userName,
	    		@RequestParam("password") String password,
	    		@RequestParam("type") String type,
	    		ModelMap ModelMap) throws  IOException
	    {
	    	
	  
		UserModel user=new UserModel();
		
		UserPermissionType t=new UserPermissionType();
		t.setId(Integer.parseInt(type));
		RoleModel model=new RoleModel();
		model.setId(1);
		int id1=Integer.parseInt(id);
		
		user.setUserId(id1);
		

		user.setPassword(password);
		

		user.setUserName(userName);
		

		user.setUserPermissionType(t);
		
		user.setUserRoll(model);
		userservice.addUser(user);
	    	
	    	
	    	

			
			return "";
			
	    	
	    }
	
    
   

	

	    
	   
} 
