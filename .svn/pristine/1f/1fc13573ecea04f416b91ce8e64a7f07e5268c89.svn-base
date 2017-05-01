package com.xanandu.pantudantu.feedback;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
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

//import com.xanandu.pantudantu.feedback.FeedDao;
import com.xanandu.pantudantu.model.FeedModel;
import com.xanandu.pantudantu.model.RoleModel;
import com.xanandu.pantudantu.model.UserModel;

//@Repository("FeedDao")
@Service("fs")
public class DFeedServiceImpl implements DFeedService
{
	@Autowired
	private SessionFactory sessionFactory;
	@Autowired
	private DFeedDao DfeedDao;
	
	@Override
	public String addFeed(String custname, String email, String mobno, String feedback,String resp,String dat) {
		// TODO Auto-generated method stub
		DfeedDao.addFeed(custname, email, mobno, feedback,resp,dat);
		 return "success";
	}
	@Override
	public List<FeedModel> listUser()
	{
		return DfeedDao.listUser();
		
	}
	@Override
	public FeedModel getdetails(int id) {
		// TODO Auto-generated method stub
		//System.out.println(nam);
		return DfeedDao.getdetails(id);
	}

		
	

	
}
