package com.xanandu.pantudantu.login;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Disjunction;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.xanandu.pantudantu.model.FeedModel;
import com.xanandu.pantudantu.model.RoleModel;
import com.xanandu.pantudantu.model.UserModel;
import com.xanandu.pantudantu.model.UserPermissionType;


@Repository("loginDao")
public class LoginDaoImpl implements LoginDao,UserDetailsService{



	@Autowired
	private SessionFactory sessionFactory;
	@Autowired
	private LoginService loginservice;
	@Override
	public UserDetails loadUserByUsername(String username) {

			 System.out.println("Getting access details from employee dao !!");
	         UserModel dbUser=getByUname(username);
		        // Ideally it should be fetched from database and populated instance of
		        // #org.springframework.security.core.userdetails.User should be returned from this method
		       // UserDetails user = new User(username, "password", true, true, true, true, new GrantedAuthority[]{ new GrantedAuthorityImpl("ROLE_USER") });
	         
	         UserDetails user=buildUserFromUserEntity(dbUser);
	         try {
	        	   if (user == null){
	        		   System.out.println("nikhil dsd");    		   
	        	    throw new UsernameNotFoundException("user name not found");
	        	   }

	        	  } catch (Exception e) {
	        	   throw new UsernameNotFoundException("database error");
	        	  }
	         return user;
		}
		 private User buildUserFromUserEntity(UserModel userEntity) {
		  // convert model user to spring security user
			  String username = userEntity.getUserName();
			  String password = userEntity.getPassword();
			  boolean enabled = true;
			  boolean accountNonExpired = true;
			  boolean credentialsNonExpired = true;
			  boolean accountNonLocked = true;
		System.out.println("nikhil 23444");
			 
		        return new User(
		        		username,
		        		password,
		                enabled,
		                accountNonExpired,
		                credentialsNonExpired,
		                accountNonLocked,
		                getAuthorities(userEntity.getUserRoll().getId())
		        );
			  
			 }
		 
		 
		 public Collection<? extends GrantedAuthority> getAuthorities(Integer role) {
		        List<GrantedAuthority> authList = getGrantedAuthorities(getRoles(role));
		        System.out.println("nikhil 23444 w we");
		        return authList;
		    }
		     
		    public List<String> getRoles(Integer role) {
		 
		        List<String> roles = new ArrayList<String>();
		 
		        if (role.intValue() == 1) {
		            roles.add("ROLE_MODERATOR");
		            roles.add("ROLE_ADMIN");
		        } else if (role.intValue() == 2) {
		        	System.out.println("HIIII");
		            roles.add("ROLE_MODERATOR");
		        }
		        return roles;
		    }
		     
		    public static List<GrantedAuthority> getGrantedAuthorities(List<String> roles) {
		        List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
		         
		        for (String role : roles) {
		            authorities.add(new SimpleGrantedAuthority(role));
		        }
		        return authorities;
		    }
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 public UserModel getByUname(String uname)
		 {
			 Session session=sessionFactory.openSession();
			 Criteria criteria=session.createCriteria(UserModel.class);
			 criteria.add(Restrictions.eq("userName", uname));
			 return (UserModel)criteria.uniqueResult();
		 }
		 
		@Override
		@Transactional
		public UserModel getUserByUnamePassword(String userName, String password) {
			 Session session=sessionFactory.openSession();
			 Criteria criteria=session.createCriteria(UserModel.class);
			 criteria.add(Restrictions.eq("userName", userName));
			 criteria.add(Restrictions.eq("password", password));
			 UserModel userModel=(UserModel)criteria.uniqueResult();
			 session.close();
			 return userModel;
		}
		@Override
		public void addUser(String userName, String password) {
			 Session session=sessionFactory.openSession();
			 UserModel userModel=new UserModel();
			 userModel.setUserName(userName);
			 userModel.setPassword(password);
			 session.save(userModel);
			 session.close();
		}
		@Override
		public UserModel getUserByUname(String userName) {
			 Session session=sessionFactory.openSession();
			 Criteria criteria=session.createCriteria(UserModel.class);
			 criteria.add(Restrictions.eq("userName", userName));
			 UserModel userModel=(UserModel)criteria.uniqueResult();
			 session.close();
			 return userModel;
		}
		@Override
		public int addUserModerator(String userName, String password) {
			
			 Session session=sessionFactory.openSession();
			 UserModel userModel=new UserModel();
			 RoleModel userrole=new RoleModel();
			
			 int flag=0;
			 int id=0;
			 
			List<UserModel> ulist=loginservice.getUserList();
			
			for (UserModel userModel2 : ulist) {
				
				if(userModel2.getUserName().equalsIgnoreCase(userName))
				{
					 flag=1;
				}
			}
			
			 
			 UserPermissionType t=new UserPermissionType();
			 
			 
			 if(flag==0)
			 {
			 
			 
			 
							 if(userName.equalsIgnoreCase("admin"))
							 {
							  
								t.setId(1);
								userrole.setId(1);
							 }
							 else if(userName.equalsIgnoreCase("administrator"))
							 {
								 t.setId(3);
								 userrole.setId(1);
							 }
							 else
							 {
								 t.setId(2);
								 userrole.setId(2);
							 }
							
							 
							 
							 userModel.setUserPermissionType(t);
							 userModel.setUserName(userName);
							 userModel.setUserRoll(userrole);
							 userModel.setPassword(password);
							 
							 
				             session.save(userModel);
						      
							
							 
							 session=sessionFactory.openSession();
							 Criteria criteria=session.createCriteria(UserModel.class);
							 criteria.add(Restrictions.eq("userName", userName));
							 userModel=(UserModel)criteria.uniqueResult();
							id=userModel.getUserId();
							 session.beginTransaction().commit();
							 session.close();
							
							 
			 }
			 else
			 {
		
				 
			 }
			
			 return id;
		}
		
		@Override
		public List<UserModel> getfill()
		{
			
			 	Session session=sessionFactory.openSession();
				Criteria criteria=session.createCriteria(UserModel.class);
				UserPermissionType type=new UserPermissionType();
				type.setId(1);
				criteria.add(Restrictions.eq("userPermissionType",type));
				System.out.println("inside list user");
				List<UserModel> listUser=criteria.list();
				session.close();
				return  listUser;
			 
			 
			 
			
			
			
			
		}
		
		
		
		@Override
		public List<UserModel> getUserList() {
			
			UserPermissionType p=new UserPermissionType();
			p.setId(2);
			Session session=sessionFactory.openSession();
			Criteria criteria=session.createCriteria(UserModel.class);
			criteria.add(Restrictions.eq("userPermissionType",p));
			System.out.println("get list function");
			List<UserModel> userList=criteria.list();
			session.close();
			return  userList;
			
			
		}
		@Override
		public UserModel getuserById(int id) {
			
			Session session=sessionFactory.openSession();
			 Criteria criteria=session.createCriteria(UserModel.class);
			 criteria.add(Restrictions.eq("userId", id));
			 
			
			 return (UserModel)criteria.uniqueResult();
			
		}
		
		
		@Override
		public void update(String un,String pw,int pri) {
			// TODO Auto-generated method stub
					//RoleModel userrole=new RoleModel();
					//UserPermissionType type=new UserPermissionType();
			System.out.println("comming to update");
			
					UserModel userModel=new UserModel();
					Session session = sessionFactory.openSession();
					Transaction tx =session.beginTransaction();
					userModel=loginservice.getuserById(pri);
					System.out.println(userModel.getPassword()+"befor update user");
					userModel.setPassword(pw);
					userModel.setUserName(un);
					
					
		         
		         session.saveOrUpdate(userModel); 
		         tx.commit();
		         session.close(); 
			}
		
		

}
