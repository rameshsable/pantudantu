package com.xanandu.pantudantu.setup;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.xanandu.pantudantu.model.RoleModel;
import com.xanandu.pantudantu.model.UserModel;
import com.xanandu.pantudantu.userTask.UserService;


@Controller
public class CreateSetup 
{

	@Autowired
	SetupService setupService;
	@Autowired
	private SessionFactory sessionFactory;
	@Autowired
	private UserService userService;


	public CreateSetup()
	{

	}
	public CreateSetup(HttpServletRequest request)
	{
		makeSetup(request);
	}
	public void makeSetup(HttpServletRequest request)
	{
		
		File tmpFile = new File(request.getServletContext().getRealPath("resources/profileImages"));

		if (!tmpFile.exists()) {
			try 
			{
				tmpFile.mkdirs();			
			} 
			catch (Exception e) {
				e.printStackTrace();
				
			}
		} 
		System.out.println("locality");
		setupService.addLocality();
	
		
		Session session=sessionFactory.openSession();
		RoleModel roleModel1=userService.userRoll(1);
		if(roleModel1==null)
		{
			System.out.println(" in user role of the tableeee"); 
			RoleModel roleModel=new RoleModel();
			roleModel.setRole("admin");
			session.save(roleModel);
			session.flush();
			roleModel=new RoleModel();
			roleModel.setRole("moderator");
			session.save(roleModel);
			roleModel=userService.userRoll(1);
			UserModel userModel=new UserModel();
			userModel.setUserName("admin");
			userModel.setPassword("admin");
			userModel.setUserRoll(roleModel);
			session.save(userModel);
		}
		
		
	}
	
	
	
	
}
