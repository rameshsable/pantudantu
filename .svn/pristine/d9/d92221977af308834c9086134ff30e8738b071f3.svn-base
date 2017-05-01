package com.xanandu.pantudantu.customer;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.support.CronTrigger;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.xanandu.pantudantu.model.Account;
import com.xanandu.pantudantu.model.AdvanceBooking;
import com.xanandu.pantudantu.model.Bill;
import com.xanandu.pantudantu.model.Customer;
import com.xanandu.pantudantu.model.Locality;
import com.xanandu.pantudantu.model.UserModel;


@Repository("CustomerDao")
public class CustomerDaoImpl implements CustomerDao{

	@Autowired 
	private SessionFactory sessionfactory;
	
	
	
	@Override
	public List<Customer> getListOfCustomer() {
		
		Session session=sessionfactory.openSession();
		Criteria criteria=session.createCriteria(Customer.class);
		criteria.addOrder(Order.desc("lastComingDate"));
		List<Customer>list=criteria.list();
		session.close();
		System.out.println("inside Order.asc");
		return list;
	}
	
	
	@Override
	public void saveCustomer(Customer cust) {
		
		System.out.println("inside save function");
		Session session=sessionfactory.openSession();
		session.saveOrUpdate(cust);
		session.beginTransaction().commit();
		session.close();

	}


	@Override
	public List<Locality> getLocality() {
		// TODO Auto-generated method stub
		Session session=sessionfactory.openSession();
		Criteria criteria=session.createCriteria(Locality.class);
		List<Locality>list=criteria.list();
		session.close();
		
		return list;
	}


	@Override
	public List<Customer> getListOfCustomerByDateRange(Date d1, Date d2) {

		// TODO Auto-generated method stub
		
		Session session=sessionfactory.openSession();
		Criteria criteria=session.createCriteria(Customer.class);
		criteria.add(Restrictions.between("lastComingDate", d1, d2));
		criteria.addOrder(Order.desc("lastComingDate"));
		List<Customer> l=criteria.list();
		session.close();
		return l;
	
	}


	@Override
	public Customer getCustomerById(int id) {
		
		Session session=sessionfactory.openSession();
		Criteria criteria=session.createCriteria(Customer.class);
		criteria.add(Restrictions.eq("cid", id));
		
		Customer cust=(Customer) criteria.uniqueResult();
		session.close();
		

		return cust;
		
		
		
	}
	
}
