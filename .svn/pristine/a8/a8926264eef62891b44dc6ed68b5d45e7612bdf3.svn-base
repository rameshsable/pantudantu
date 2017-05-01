package com.xanandu.pantudantu.birthday;


import java.sql.Time;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.List;

import javax.swing.plaf.metal.MetalIconFactory.FolderIcon16;


import org.apache.commons.io.filefilter.AndFileFilter;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Disjunction;
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


import com.xanandu.pantudantu.model.Rock;
import com.xanandu.pantudantu.model.ServiceTax;
import com.xanandu.pantudantu.model.AdvanceBooking;
import com.xanandu.pantudantu.model.AdvanceBookingCancellation;
import com.xanandu.pantudantu.model.AdvanceBookingPaymentDetails;
import com.xanandu.pantudantu.model.AdvanceBookingPospond;
import com.xanandu.pantudantu.model.Bill;
import com.xanandu.pantudantu.model.BillDetails;
import com.xanandu.pantudantu.model.BillPayType;
import com.xanandu.pantudantu.model.BillPaymentDetails;
import com.xanandu.pantudantu.model.BirthdayPackage;
import com.xanandu.pantudantu.model.Customer;
import com.xanandu.pantudantu.model.MonthlyPass;
import com.xanandu.pantudantu.model.MonthlyPassAssignment;
import com.xanandu.pantudantu.model.Playzone;
import com.xanandu.pantudantu.model.Rclimbing;
import com.xanandu.pantudantu.model.UserModel;
import com.xanandu.pantudantu.model.VisitPass;
import com.xanandu.pantudantu.model.VisitPassAssignmen;


@Repository("BirthdayDao")
public class BirthdayDaoImpl implements BirthdayDao{
	
	@Autowired 
	private SessionFactory sessionfactory;
	@Autowired
	private BirthdayService birthdayService;
	

	@Override
	public void saveAdvanceBooking(AdvanceBooking booking) {
		
		int  st=booking.getEndTime().getHours();
		int  et=booking.getEndTime().getHours();
		Date d=booking.getDate();
		int flag=0;
		List<AdvanceBooking>bookinglist=birthdayService.getAvailability(d);
		
		for (AdvanceBooking advanceBooking : bookinglist) {
			
		    int sh=advanceBooking.getStartTime().getHours();
		   int eh=advanceBooking.getEndTime().getHours();
		   
		   if((st < sh)&&(et <=sh))
		   {
			   flag=1;
			   
			   System.out.println("1");
			   
		   }
		   
		   if((st >= eh)&&(et > eh))
		   {
			   flag=1;
			   System.out.println("2");
			   
		   }
		   if((st >= eh)&&(eh >et ))
		   {
			   flag=1;
			   System.out.println("2");
			   
		   }
		   
		   
		   if((st >= eh)&&(et <= eh))
		   {
			   flag=0;
			   System.out.println("3");
		   }
		   
		   if((st< sh)&&(et>=eh))
		   {
			   flag=1;
			   System.out.println("4");
		   }
		   
		  
		   
		   
		}
		
		
		
		Session session=sessionfactory.openSession();
		if(flag==1)
		{
		session.saveOrUpdate(booking);
		session.beginTransaction().commit();
		}
		else
		{
			System.out.println("time allready allocated");
		}
		session.close();

		
	}

	
	

	public BirthdayPackage getBirthdayId(int id) {
		
		
	
		Session session=sessionfactory.openSession();
		Criteria criteria=session.createCriteria(BirthdayPackage.class);
		criteria.add(Restrictions.eq("birthdayId", id));
		BirthdayPackage  pack=	(BirthdayPackage) criteria.uniqueResult();
		session.close();
		return pack;
		
		
	}


	@Override
	public List<AdvanceBooking> getAvailability(Date date) {
		
		
		
		
		System.out.println("date in function is"+date);
		Session session=sessionfactory.openSession();
		Criteria criteria=session.createCriteria(AdvanceBooking.class);
		criteria.add(Restrictions.eq("date", date));
		criteria.add(Restrictions.eq("status", "processing"));

		List<AdvanceBooking>li=criteria.list();
		
		session.close();
		return li;
	
	}




	@Override
	public String saveBooking(AdvanceBooking booking) {
	
		
		
		int  st=booking.getEndTime().getHours();
		int  et=booking.getEndTime().getHours();
		Date d=booking.getDate();
		int flag=0;
		String string=null;
		List<AdvanceBooking>bookinglist=birthdayService.getAvailability(d);
		
		for (AdvanceBooking advanceBooking : bookinglist) {
			
		    int sh=advanceBooking.getStartTime().getHours();
		   int eh=advanceBooking.getEndTime().getHours();
		   
		   if((st < sh)&&(et <=sh))
		   {
			   flag=1;
			   
			
			   
		   }
		   
		   if((st >= eh)&&(et > eh))
		   {
			   flag=1;
			
			   
		   }
		   if((st >= eh)&&(eh >et ))
		   {
			   flag=1;
			
			   
		   }
		   
		   
		   if((st >= eh)&&(et <= eh) ||((st == sh)&&(et <= eh)))
		   {
			   flag=0;
			
		   }
		   
		   if((st< sh)&&(et>=eh))
		   {
			   flag=1;
			
		   }
		   
		  
		   
		   
		}
		
		if(bookinglist.isEmpty())
		{
			
			flag=1;

		}
		
		
		Session session=sessionfactory.openSession();
		if(flag==1)
		{
			
	
		session.save(booking);
		session.beginTransaction().commit();
			string="success";
		}
		else
		{
	
			string="fail";
		}
		session.close();
		return string;

		
		
		
		
	}




	@Override
	public List<AdvanceBooking> getBookingById(int id) {
		
		
		
		Session session=sessionfactory.openSession();
		Criteria criteria=session.createCriteria(AdvanceBooking.class);
		criteria.add(Restrictions.eq("bookingId", id));
		criteria.add(Restrictions.eq("status", "processing"));
		
		List<AdvanceBooking>li=criteria.list();
		session.close();
		
		return li;
	}




	@Override
	public List<AdvanceBooking> getBookingByDate(Date date) {
		
		
		Session session=sessionfactory.openSession();
		Criteria criteria=session.createCriteria(AdvanceBooking.class);
		criteria.add(Restrictions.eq("date", date));
		criteria.add(Restrictions.eq("status", "processing"));
		List<AdvanceBooking>li=criteria.list();
		
		session.close();
		
		return li;
	}




	@Override
	public void updateBookingById(int id) {
		
		AdvanceBookingCancellation cancel=new AdvanceBookingCancellation();
		Customer c=new Customer();
		
		Session session=sessionfactory.openSession();
		Criteria criteria=session.createCriteria(AdvanceBooking.class);
		criteria.add(Restrictions.eq("bookingId", id));
		
		double paidAmt=0;
		AdvanceBooking booking= (AdvanceBooking) criteria.uniqueResult();
		paidAmt=booking.getPaidAmount();
		if(paidAmt==0)
		{
			booking.setPaidAmount(paidAmt);
		}
		else
		{
			booking.setPaidAmount(paidAmt/2);
		}
		booking.setBookingId(id);
		booking.setStatus("cancled");
		c=booking.getCustomer();
		cancel.setCust(c);
		cancel.setBooking(booking);
		cancel.setPaidAmount(paidAmt);
		cancel.setDiductAmount(paidAmt/2);
		session.save(cancel);

		session.update(booking);
		System.out.println("5");
		session.beginTransaction().commit();
		session.close();
		
	}




	@Override
	public List<AdvanceBooking> getListOfProcessingBirthDayPackages() {
		Session session=sessionfactory.openSession();
		Criteria criteria=session.createCriteria(AdvanceBooking.class);
		criteria.add(Restrictions.eq("status", "processing"));
		List<AdvanceBooking>li=criteria.list();
		
		session.close();
		
		return li;
	}




	@Override
	public void PostPondBookingById(int id) {

		double paidAmt=0;
		
		AdvanceBooking booking= birthdayService.getBookingObjectById(id);
		paidAmt=booking.getPaidAmount();
		if(paidAmt==0)
		{
			booking.setPaidAmount(paidAmt);
		}
		else
		{
			double amt=(paidAmt*75)/100;
			booking.setPaidAmount(amt);
		}
	
		birthdayService.pospondBooking(booking);
		
	}







	@Override
	public AdvanceBooking getBookingObjectById(int id) {
		
		Session session=sessionfactory.openSession();
		Criteria criteria=session.createCriteria(AdvanceBooking.class);
		criteria.add(Restrictions.eq("bookingId", id));
		criteria.add(Restrictions.eq("status", "processing"));
		AdvanceBooking booking=(AdvanceBooking) criteria.uniqueResult();
		session.close();
		
		System.out.println("booking object executed");
		return booking;
	}




	@Override
	public void savePostondDetails(AdvanceBookingPospond pospond) {


		Session session=sessionfactory.openSession();
		session.save(pospond);
		session.beginTransaction().commit();
		session.close();
		
	}




	@Override
	public void saveAdvanceBookingPaymentDetails(AdvanceBookingPaymentDetails obj) {
		Session session=sessionfactory.openSession();
		session.save(obj);
		session.beginTransaction().commit();
		session.close();
		
		
		
	}




	@Override
	public void pospondBooking(AdvanceBooking booking) {
		// TODO Auto-generated method stub
		
		
		Session session=sessionfactory.openSession();
		
		Query query =session.createQuery("Update AdvanceBooking set status =:status WHERE  bookingId =:bookingId ");
		query.setParameter("status","postpond");
		query.setParameter("bookingId",booking.getBookingId());
		int ui= query.executeUpdate();
		
		
		session.beginTransaction().commit();
		session.close();
	}




	@Override
	public List<AdvanceBooking> getListOfAdvanceBirthdayBooking() {
		Session session=sessionfactory.openSession();
		Criteria criteria=session.createCriteria(AdvanceBooking.class);
	     criteria.addOrder(Order.desc("date"));
		 List<AdvanceBooking>li=criteria.list();
		
		session.close();
		
		return li;
	}




	@Override
	public void updateBookingStatut(int id) {
	
		
		String status="Done";
		Session session=sessionfactory.openSession();
		Transaction t=session.beginTransaction();
		String hql = "UPDATE AdvanceBooking set status = :status "  + 
	             "WHERE bookingId = :bookingId";
		Query query=session.createQuery(hql);
		query.setParameter("status",status);
		query.setParameter("bookingId",id);
		int result=query.executeUpdate();
		t.commit();
		session.close();
		
	
		
	}

	
}
