package com.xanandu.pantudantu.feedback;

import java.io.IOException;
import java.lang.reflect.Method;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.*;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.codehaus.jackson.map.ObjectWriter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

//import com.xanandu.pantudantu.feedback.FeedService;
import com.xanandu.pantudantu.model.FeedModel;
import com.xanandu.pantudantu.model.RoleModel;
import com.xanandu.pantudantu.model.UserModel;

@Controller
public class Controllercopy 
{
	
	 @Autowired 
	 DFeedService fs;

	
	 @RequestMapping(value="/addfeed",method = RequestMethod.POST)
	 @ResponseBody
	 public String addFeedback(HttpServletRequest request) 
	 {          
		 DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		 String dat=dateFormat.format(new Date());
		// System.out.println(dateFormat.format(new Date()));
      System.out.println("in controller");	
      String name=request.getParameter("firstName");
      
      String email=request.getParameter("email");
      String mob=request.getParameter("mob");
      String content=request.getParameter("content");
      String radio1=request.getParameter("optradio");
      
    
    
     
    	  
     
		System.out.println(radio1);
	  String aa=fs.addFeed(name, email, mob, content,radio1,dat);
		//usr.addUserModerator(un,pw);
		//System.out.println(aa);
		return "Thank you for your feedback";
	 }
	 
	 @RequestMapping(value="/feedback",method = RequestMethod.GET)
	 public ModelAndView feedform(HttpServletRequest request)
	 {
		 
		 HttpSession session=request.getSession(true);
		String name=(String) session.getAttribute("CurrentUserName");
		
		
		System.out.println("current user name is"+name);
				
		return new ModelAndView("feed2");
		
	 }
	 
     @RequestMapping(value="/viewfeed",method = RequestMethod.GET)
	 @ResponseBody
	 public ModelAndView viewFeedback(HttpServletRequest request,ModelMap ModelMap /*@RequestParam("un") String un,@RequestParam("pw") String pw*/) throws JsonGenerationException, JsonMappingException, IOException 
	 {          
		
	  List<FeedModel> list=fs.listUser();
	
	  ModelMap.addAttribute("listofFeedback", list);
	  return new ModelAndView("viewfeed");
	 }
	
     @RequestMapping(value="/fetch",method = RequestMethod.GET)
     @ResponseBody
     public String fetch(HttpServletRequest request,ModelMap ModelMap /*@RequestParam("un") String un,@RequestParam("pw") String pw*/) throws JsonGenerationException, JsonMappingException, IOException 
	 {          
		
      System.out.println("in controller");	
      int id=(Integer.parseInt(request.getParameter("as")));
     
		System.out.println(id);
		FeedModel ob=fs.getdetails(id);
	 
	  ObjectWriter ow = new ObjectMapper().writer().withDefaultPrettyPrinter();
	  String json = ow.writeValueAsString(ob);

	
//	ModelMap.addAttribute("details", ob);

	  return json;
	 // return new ModelAndView("viewfeed");
	//  return new ModelAndView("show");
	 }
     
     
     
     
     
     
}
