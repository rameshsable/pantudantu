package com.xanandu.pantudantu.feedback;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
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
import com.xanandu.pantudantu.model.FeedModel;
@Repository("DfeedDao")
public class DFeedDaoImpl implements DFeedDao{
	@Autowired
	private SessionFactory sessionFactory;

	
	@Override
	public String addFeed(String custname, String email, String mobno, String feedback,String resp,String dat) {
		// TODO Auto-generated method stub
		 Session session=sessionFactory.openSession();
		 FeedModel feedModel=new FeedModel();
		 feedModel.setCustname(custname);
		 feedModel.setEmail(email);
		 feedModel.setMobno(mobno);
		 feedModel.setFeedback(feedback);
		 feedModel.setResp(resp);
		 feedModel.setDat(dat);
		 session.save(feedModel);
		 session.close();
		 return "success";
		
	}
	
	

	@Override
	public List<FeedModel> listUser() {
		Session session = sessionFactory.openSession();
		Criteria criteria=session.createCriteria(FeedModel.class);
		//criteria.add(Restrictions.eq("active",true));
		criteria.addOrder(Order.desc("dat"));
		List<FeedModel> listUser=criteria.list();
		session.close();
		return listUser;
	
	}



	@Override
	public FeedModel getdetails(int id) {
		// TODO Auto-generated method stub
		//System.out.println(nam);
		Session session = sessionFactory.openSession();
		Criteria criteria=session.createCriteria(FeedModel.class);
		criteria.add(Restrictions.eq("feedid", id));
		
		FeedModel fmodel=(FeedModel)criteria.uniqueResult();
		System.out.println("+in fi"+id);
		System.out.println(fmodel.getCustname());
		session.close();
		return fmodel;
		
	}

}
