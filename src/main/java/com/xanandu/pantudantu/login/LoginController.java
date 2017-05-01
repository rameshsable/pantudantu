package com.xanandu.pantudantu.login;



import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.codehaus.jackson.map.ObjectWriter;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Order;
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

import com.xanandu.pantudantu.bill.BillService;
import com.xanandu.pantudantu.birthday.BirthdayService;
import com.xanandu.pantudantu.customer.CustomerService;
import com.xanandu.pantudantu.feedback.DFeedService;
import com.xanandu.pantudantu.model.AdvanceBooking;
import com.xanandu.pantudantu.model.BirthdayPackage;
import com.xanandu.pantudantu.model.Customer;

import com.xanandu.pantudantu.model.FeedModel;
import com.xanandu.pantudantu.model.Locality;
import com.xanandu.pantudantu.model.UserModel;

import com.xanandu.pantudantu.model.MonthlyPass;
import com.xanandu.pantudantu.model.MonthlyPassAssignment;
import com.xanandu.pantudantu.model.Permission;
import com.xanandu.pantudantu.model.Playzone;
import com.xanandu.pantudantu.model.Rclimbing;
import com.xanandu.pantudantu.model.Rock;
import com.xanandu.pantudantu.model.VisitPass;
import com.xanandu.pantudantu.model.VisitPassAssignmen;
import com.xanandu.pantudantu.pass.PassService;
import com.xanandu.pantudantu.setup.CreateSetup;
import com.xanandu.pantudantu.setup.SetupService;
import com.xanandu.pantudantu.userPermission.UserPermissionService;
import com.xanandu.pantudantu.userTask.UserService;

@Controller
public class LoginController {

	@Autowired
	CreateSetup createSetup;
	@Autowired
	UserService userService;
	@Autowired
	LoginService loginService;
	@Autowired 
	CustomerService customerservice;
	@Autowired
	BillService billservice;
	@Autowired
	SetupService setupService;
	@Autowired
	UserPermissionService userPermissionService; 
	@Autowired
	BirthdayService birthdayService; 
	
	@Autowired
	PassService passService;
	 @Autowired 
	 DFeedService feedbacks;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView login(HttpServletRequest request) {
		System.out.println("welcomer .....");
		//createSetup.makeSetup(request);
		/* setupService.addLocality();
		 
		 setupService.createSetup();*/
		return new ModelAndView("Login");
	}
	
	  @RequestMapping(value = "/login", method = RequestMethod.GET)
	    public String login(ModelMap model,HttpServletRequest request) {
		 System.out.println("login 11");
		/* setupService.createSetup();*/
		  return "Login";
	    }
	 
	    @RequestMapping(value = "/accessdenied", method = RequestMethod.GET)
	    public ModelAndView loginerror(ModelMap model) {
	        model.addAttribute("error", "true");
	        System.out.println("loginqwqe");
	        return new ModelAndView("Login");
	    }
	 
	    @RequestMapping(value = "/logout", method = RequestMethod.GET)
	    public String logout(ModelMap model) {
	        return "logout";
	    }
	    @RequestMapping(value = "/home", method = RequestMethod.GET)
		public ModelAndView loginSuccess(Model model,HttpServletRequest request) {
	    	  Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	          String userName = auth.getName();
	          	          HttpSession session = request.getSession(true);
	          session.setAttribute("userName", userName);
	          UserModel userModel= loginService.getUserByUname(userName);
	          int id=userModel.getUserId();
	          session.setAttribute("CurrentUserName",userModel.getUserName());
	          
	          System.out.println(userModel.getUserName());
	          List<Permission>permissionList= userPermissionService.getListOfUserPermission(id+"");
	          
	    
			   List<VisitPassAssignmen>visitPassAssignments=passService.getListOfVisitPassAssignment();
		         List<MonthlyPassAssignment>monthlyPassAssignments=passService.getListOfMonthPassAssignment();
		         
		         List<AdvanceBooking> advanceBookings =birthdayService.getListOfProcessingBirthDayPackages();
		         model.addAttribute("visitPassAssignments", visitPassAssignments);
		         model.addAttribute("monthlyPassAssignments", monthlyPassAssignments);
		         //model.addAttribute("CurrentUserName",userModel.getUserName());
		         model.addAttribute("advanceBookings",advanceBookings);
		         
		        
		        
		     	
		        
		         
         List<Customer>customerlist=customerservice.getListOfCustomer();
         List<Locality>localities =customerservice.getLocality(); 
         List<Playzone> playzoneList=billservice.getListOfPlayzone();
         List<Rclimbing>rclimbingList=billservice.getListOfRclimbing();
         List<VisitPass>visitPassList=billservice.getListOfVisitPass();
         List<VisitPass> visitpasslist = billservice.getListOfVisitPass();
	 	 List<MonthlyPass> monthlypasslist = billservice.getListOfMonthlypass();
         List<BirthdayPackage>birthdaylist=billservice.getListOfBirthday();
         List<Rock>rocklist=billservice.getListOfRock();
         List<FeedModel> list=feedbacks.listUser();
         
         model.addAttribute("localities", localities);
         model.addAttribute("playzoneList", playzoneList);
         model.addAttribute("rclimbingList", rclimbingList);
         model.addAttribute("visitPassList", visitPassList);
         model.addAttribute("monthlypasslist", monthlypasslist);
         model.addAttribute("birthdaylist", birthdaylist);
         model.addAttribute("rocklist", rocklist);
         model.addAttribute("customerlist", customerlist);
         model.addAttribute("visitpasslist", visitpasslist);
         model.addAttribute("listofFeedback", list);

         //model.addAttribute("hidemenuReport","hide");
         
        session.setAttribute("permissionList", permissionList);
         
         
         return new ModelAndView("Home");
		
			
 }
	    
	  
	    
	    
	    @RequestMapping(value=" /ramesh", method=RequestMethod.GET)
	    public ModelAndView navigation(ModelMap model,HttpServletRequest request)
	    {
	        
	    	List<Customer>customerlist=customerservice.getListOfCustomer();
	    	
	    	 
	    	 model.addAttribute("customerlist", customerlist);
	    	
			return new ModelAndView("Demo");
	    	
	    }
	    
	    
	    @RequestMapping(value="/forlogin", method=RequestMethod.GET)
	    @ResponseBody
	    public ModelAndView login(ModelMap ModelMap)
	    {
	    	List <UserModel> list=loginService.getfill();
	    	List<UserModel>userList=loginService.getUserList();
	    	ModelMap.addAttribute("as",list);
	    	ModelMap.addAttribute("userList", userList);
	   
			return new ModelAndView("forlogin");
	    	
			
			
			
			
	    	
	    }
	    
	 // id  userName password
	    
	    
	    @RequestMapping(value="/updateuser", method=RequestMethod.POST)
	    @ResponseBody
	    public String updatename(@RequestParam("id") String id,
	    		@RequestParam("userName") String userName,
	    		@RequestParam("password") String password,
	    		ModelMap ModelMap) throws  IOException
	    {
	    		System.out.println("inside update controller");
	    		int id1=Integer.parseInt(id);
	    		loginService.update(userName, password, id1);
	    		
	    		return "";
		}
	    

	    
	    @RequestMapping(value="/saveUserRegistration",method = RequestMethod.POST)
		@ResponseBody
		
		 public int saveUserRegistration(@RequestParam("un") String un,@RequestParam("pw") String pw) 
			{          
			
			
			
			
			int id=loginService.addUserModerator(un,pw);
					return id;
			}
	    
	   
	    
	    
	    
	    
	    
	    
} 
