package com.xanandu.pantudantu.userTask;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

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

import com.xanandu.pantudantu.model.RoleModel;
import com.xanandu.pantudantu.model.UserModel;




@RequestMapping("/addUser")
@Controller
public class UserController {
	
	@Autowired
	UserService userService;
	
	
	@InitBinder
	public void initBinder(WebDataBinder binder) {

		binder.setRequiredFields(new String[] { "userRoll" });
      
		binder.registerCustomEditor(RoleModel.class,new UserRolePropertyEditors(userService));
		
	}
	
	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView getDepartment(Model model)
	{
		List<UserModel> userList=userService.listUser();
		model.addAttribute("userList",userList);
		UserModel userModel=new UserModel();
		model.addAttribute("userModel",userModel);
		return new ModelAndView("User/add_user");
	}
	@RequestMapping(method = RequestMethod.POST)
	 public ModelAndView addDepartment(@ModelAttribute("userModel")@Valid UserModel userModel,BindingResult bindingResult, Model uiModel, 
	    		HttpServletRequest httpServletRequest) 
		{
		userService.addUser(userModel);
		return new ModelAndView("redirect:/addUser" );
	
	}
	@RequestMapping(value="{id}" ,params="deleteUser" ,method = RequestMethod.GET)
	 public ModelAndView deleteDepartment(@PathVariable("id") int userId) 
		{
		userService.deleteUser(userId);
		return new ModelAndView("redirect:/addUser" );
	
	}
	
	@RequestMapping(value="/saveUserRegistration",method = RequestMethod.POST)
	@ResponseBody
	 public String saveUserRegistration(Model uiModel,HttpServletRequest request) 
		{          
			
		String Uname=	request.getParameter("uname");
			
			List<UserModel> userModels=userService.listUser();
			for(UserModel userModel1: userModels){
				if(userModel1.getUserName().equalsIgnoreCase(Uname)){
				return "Available";	
				}
			}
			  
			String Fname=	request.getParameter("fname");
			String Lname=request.getParameter("lname");
			String pass=request.getParameter("password");
			String email=request.getParameter("Email");
			String mno=request.getParameter("mno");
			String cname=request.getParameter("cname");
			UserModel userModel =new UserModel();
		//	Company company=new Company();
		//	company.setCompanyId(Integer.parseInt(cname));
			
			System.out.println(Fname + Lname + mno);
			
		/*	userModel.setCompany(company);
			userModel.setEmail(email);
			userModel.setFirstName(Fname);
			userModel.setLastName(Lname);
			userModel.setMobileNo(mno);
			userModel.setUserName(Uname);
			userModel.setPassword(pass);*/
			RoleModel userRoll=new RoleModel();
			userRoll.setId(2);
			userModel.setUserRoll(userRoll);
			userService.addUser(userModel);
			return "success";
	
	}
	

	@RequestMapping(value="/updateUserByName",method = RequestMethod.GET)
	@ResponseBody
	public String updateUser(@RequestParam("id") String id,@RequestParam("userName") String userName,
			@RequestParam("password") String password)
	{
		
		
		UserModel user=new UserModel();
		
		int id1=Integer.parseInt(id);
		user.setUserId(id1);
		user.setPassword(password);
		user.setUserName(userName);
		userService.addUser(user);
		
		return "";
	}
	
	
/*	@RequestMapping(value="/updateAdmin",method = RequestMethod.GET)
	@ResponseBody
	public String updateAdmin(@RequestParam("id") String id,@RequestParam("userName") String userName,
			@RequestParam("password") String password)
	{
		
		
		UserModel user=new UserModel();
		
		int id1=Integer.parseInt(id);
		user.setUserId(id1);
		user.setPassword(password);
		user.setUserName(userName);
		userService.addUser(user);
		
		return "";
	}
	*/
	
	
	
	
	
	
	
}
