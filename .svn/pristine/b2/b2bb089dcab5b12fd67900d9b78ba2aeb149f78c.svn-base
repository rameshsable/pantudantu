package com.xanandu.pantudantu.account;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;


import org.hibernate.criterion.Disjunction;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Projections;
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

import com.xanandu.pantudantu.model.Account;

import com.xanandu.pantudantu.model.Bill;
import com.xanandu.pantudantu.model.BillPayType;
import com.xanandu.pantudantu.model.ExpenseType;
import com.xanandu.pantudantu.model.FeedModel;
import com.xanandu.pantudantu.model.MonthlyPassAssignment;
import com.xanandu.pantudantu.model.RoleModel;
import com.xanandu.pantudantu.model.UserModel;
import com.xanandu.pantudantu.model.UserPermissionType;
import com.xanandu.pantudantu.model.VisitPassAssignmen;
import com.xanandu.pantudantu.model.UserModel;

@Repository("accountdao")
public class AccountDaoImpl implements AccountDao{
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public void addExpense(String[] exp, String[] amt,String[] desc)
	{
		// TODO Auto-generated method stub
		Session session=sessionFactory.openSession();
		
		DateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy");
		 String dat=dateFormat.format(new Date());
		 
		 //Criteria criteria1=session.createCriteria(Account.class);
		 
			
		for(int i=0;i<exp.length;i++)
		{
			Account ac=new Account();
			Criteria criteria=session.createCriteria(ExpenseType.class);
		
			 criteria.add(Restrictions.eq("expenceType",exp[i]));
			 ExpenseType ex=(ExpenseType)criteria.uniqueResult();
			
			 ac.setExpenseType(ex);
			 
			 ac.setAmount(amt[i]);
			 SimpleDateFormat format= new SimpleDateFormat("dd-MM-yyyy");
				try {
					Date d=format.parse(dat);
					/* d1=format.parse(date2);*/
					 ac.setDat(d);
				} catch (ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			
			 ac.setDesc(desc[i]);
			 session.save(ac);
			 
		}
		session.close();
		
		
	}

	@Override
	public List<Account> showExp(String date1, String date2)
	{
		// TODO Auto-generated method stub
		
		Session session=sessionFactory.openSession();
		Criteria criteria=session.createCriteria(Account.class);
		Date d=null,d1=null;
		SimpleDateFormat format= new SimpleDateFormat("dd/MM/yyyy");
		try {
			 d=format.parse(date1);
			 d1=format.parse(date2);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		criteria.add(Restrictions.between("dat", d, d1));
		
		/*criteria.add(Restrictions.ge("dat", date1)); 
		criteria.add(Restrictions.lt("dat", date2));*/
		criteria.addOrder(Order.desc("dat"));
		List<Account> l=criteria.list();
		int i=0;
		Iterator itr = l.iterator();
		
	      while(itr.hasNext())
	      {
	         Account element = (Account) itr.next();
	         
	         element.getDat();
	      /*   System.out.print(element.getExpenseType().getExpenceType() + " "+element.getDat());*/
	      }
		
		/*
			Account a=l.get(i);
	     i++;
		String am=a.getAmount();
		System.out.println(am);
		*/
	     
			Criteria criteria1=session.createCriteria(Bill.class);
		
			 format= new SimpleDateFormat("dd/MM/yyyy");
			try {
				 d=format.parse(date1);
				 d1=format.parse(date2);
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			criteria.add(Restrictions.between("bill_Date", d, d1));
			/*criteria1.add(Restrictions.ge("bill_Date", d)); 
			criteria1.add(Restrictions.lt("bill_Date", d1));*/
			List<Bill> l1=criteria1.list();
			Iterator itr1 = l1.iterator();
		      while(itr1.hasNext())
		      {
		         Bill element1 = (Bill) itr1.next();
		       /*  System.out.print(element1.getBill_amount()+ " ");*/
		      }
			
		      return l;
	}

	@Override
	public List<ExpenseType> getListOfExpenseType() {
		Session session=sessionFactory.openSession();
		Criteria criteria=session.createCriteria(ExpenseType.class);
		
		List<ExpenseType>expenseTypes=	criteria.list();
		session.close();
		return expenseTypes;
	}
	
	@Override
public HashMap<Date ,Double> 	getTotalRevenue(String date1, String date2){
		
		Session session=sessionFactory.openSession();
		HashMap<Date,HashMap<String ,Double>> sortedListDateWise =new HashMap<Date, HashMap<String,Double>>();
	
		Date d=null,d1=null;
		SimpleDateFormat format= new SimpleDateFormat("dd/MM/yyyy");
		try {
			 d=format.parse(date1);
			 d1=format.parse(date2);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	 	Criteria criteria = null;
		try {
			criteria=session.createCriteria(Bill.class);
			criteria.setProjection(Projections.distinct(Projections.property("bill_Date")))
			.add(Restrictions.ge("bill_Date", d)); 
			criteria.add(Restrictions.between("bill_Date", d, d1));
			/*criteria.add(Restrictions.lt("bill_Date", d1));
			criteria.addOrder(Order.asc("bill_Date"));*/
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
			List<Date> l=criteria.list();
			 session.close();
			 session=null;
		
			HashMap<Date ,Double> hashMap =new  HashMap<Date, Double>();
			 session=sessionFactory.openSession();
			for (Date billdate : l) {
			
				criteria=session.createCriteria(Bill.class);
				try {
		
				double amount =  (Double)criteria.setProjection(Projections.sum("bill_paid"))
						.add(Restrictions.eq("bill_Date", billdate))
						.uniqueResult();
				hashMap.put(billdate, amount);
		
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			
		    //    System.out.println("Sum of Salaries="+sumSalary);
			
		// visit pass addition of payment according to date
			 criteria = null;
		/*	try {
				if(session.equals(null)){
					session=sessionFactory.openSession();
				}
				criteria=session.createCriteria(VisitPassAssignmen.class);
				criteria.setProjection(Projections.distinct(Projections.property("startDate")))
				.add(Restrictions.between("startDate", d, d1));
				.add(Restrictions.ge("startDate", d)); 
				criteria.add(Restrictions.lt("startDate", d1));
				criteria.addOrder(Order.asc("startDate"));
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
					List<Date> visitlist=criteria.list();
					session.close();
					 session=null;*/
		
					HashMap<Date ,Double> hashMap1 =new  HashMap<Date, Double>();
					/*for (Date billdate : visitlist) 
					{
						 session=sessionFactory.openSession();
						 criteria=session.createCriteria(VisitPassAssignmen.class);
						 try {
							
							 double amount =  (Double)criteria.setProjection(Projections.sum("total"))
								.add(Restrictions.eq("startDate", billdate))
								.uniqueResult();
							 hashMap1.put(billdate, amount);
						
						 	} catch (Exception e)
						 		{
							 		e.printStackTrace();
						 		}
					}*/
					// Monthly pass addition of payment according to date
					 criteria = null;
				/*	try {
						
							session=sessionFactory.openSession();
						
						criteria=session.createCriteria(MonthlyPassAssignment.class);
						criteria.setProjection(Projections.distinct(Projections.property("startDate")))
						.add(Restrictions.between("startDate", d, d1));
						.add(Restrictions.ge("startDate", d)); 
						criteria.add(Restrictions.lt("startDate", d1));
						criteria.addOrder(Order.asc("startDate"));
					} catch (Exception e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					
							List<Date> monthly=criteria.list();
							session.close();*/
							 session=null;
		
							HashMap<Date ,Double> hashMap2 =new  HashMap<Date, Double>();
						/*	for (Date billdate : monthly) 
							{
								 session=sessionFactory.openSession();
								 criteria=session.createCriteria(MonthlyPassAssignment.class);
								 try {
								
									 double amount =  (Double)criteria.setProjection(Projections.sum("total"))
										.add(Restrictions.eq("startDate", billdate))
										.uniqueResult();
									 hashMap2.put(billdate, amount);
									
								 	} catch (Exception e)
								 		{
									 		e.printStackTrace();
								 		}
							}*/
							
					Set<Date> date=		hashMap.keySet();
		
					for(Date da : date){
						
						Set<Date> da1=		hashMap1.keySet();	
					
						
						try{
							if(hashMap1.get(da)!=null){
							double amt=	hashMap.get(da);
							amt=amt+hashMap1.get(da);
							
							hashMap.put(da, amt);
							hashMap1.remove(da);
							}
						}catch(Exception e){
							e.printStackTrace();
						}
						
					}
						hashMap.putAll(hashMap1);	
						
						Set<Date> dat1=		hashMap.keySet();
		
						for(Date da : dat1){
							
							//Set<Date> da1=		hashMap2.keySet();	
						
							
							try{
								if(hashMap2.get(da)!=null){
								double amt=	hashMap.get(da);
								amt=amt+hashMap2.get(da);
								
								hashMap.put(da, amt);
								hashMap2.remove(da);
								}
							}catch(Exception e){
								e.printStackTrace();
							}
							
						}
							hashMap.putAll(hashMap2);
							
							
							
						
				return hashMap;
				
				
	}

	@Override
	public void addNewExpenseType(String exptype) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.openSession();
		ExpenseType expenseType =new ExpenseType();
		expenseType.setExpenceType(exptype);
		
		session.save(expenseType);
		session.beginTransaction().commit();
		session.close();
	}
	
}
