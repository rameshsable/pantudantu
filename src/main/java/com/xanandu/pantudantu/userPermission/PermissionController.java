package com.xanandu.pantudantu.userPermission;

import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.codehaus.jackson.map.ObjectMapper;
import org.codehaus.jackson.map.ObjectWriter;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.xanandu.pantudantu.login.LoginService;
import com.xanandu.pantudantu.model.Permission;
import com.xanandu.pantudantu.model.PermissionTypeId;
import com.xanandu.pantudantu.model.UserModel;



@Controller
public class PermissionController {
	@Autowired
	LoginService loginService;
	
	@Autowired
	UserPermissionService userPermissionService;
	
	@RequestMapping(value="/getPermissionById", method = RequestMethod.POST)
	@ResponseBody
	 public String sho(@RequestParam("userid") String id, ModelMap model)
	 {
		 
		int id1=Integer.parseInt(id);
		
		try {
			//	Thread.sleep(2000);
			List<Permission> userPermissions=	userPermissionService.getListOfUserPermission(id);
			
			for (Permission permission : userPermissions) {
				System.out.println(permission.getPermission_id()+","+permission.getType());
			}
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
	
	@RequestMapping(value="/savepermission", method=RequestMethod.GET)
	@ResponseBody
	public String savePermission( HttpServletRequest request)
	{
		
		
		String userId=request.getParameter("hidden");
		userPermissionService.deleteUSerPermission(Integer.parseInt(userId));
		Enumeration<String> s=request.getParameterNames();
		
		
		while(s.hasMoreElements()){
		
			String name=s.nextElement();
			
			System.out.println(name);
		if(name.equalsIgnoreCase("hidden")){
			System.out.println("nikhil  userId  "+userId);
		}else {
			System.out.println("nikhil  "+name);
			UserModel model=new UserModel();
			model.setUserId(Integer.parseInt(userId));
	  		 Permission p=new Permission();
	  		int pid=Integer.parseInt(name);
	  		 p.setType(pid);
	  		 p.setUser(model);
	  		 userPermissionService.savePemission(p);
	  		 
	  		 System.out.println( "i was jerte");
		}
		}
		return "success";
/*		
	
	  String id=request.getParameter("hidden");
	  int id1=Integer.parseInt(id);
	  UserModel u=new UserModel();
	  u.setUserId(id1);
	 
	 
	  String types[]=request.getParameterValues("menu");
	  List<PermissionTypeId> list=userPermissionService.getPermissionList();
	  int i=0;
	  
	  
	  while(i < types.length)
	  {
	  for (PermissionTypeId permissionTypeId : list) {
		
		  	if(permissionTypeId.getName().equalsIgnoreCase(types[i]));
		  
		  	{
		  		 PermissionTypeId per=permissionTypeId;
		  		 Permission p=new Permission();
		  		 p.setType(per);
		  		 p.setUser(u);
		  		 userPermissionService.savePemission(p);
		  		
		  		
		  	}
		  
		  
		  	}
		i++;
	  }
	  */
	  
	  
	}
	
	

}
