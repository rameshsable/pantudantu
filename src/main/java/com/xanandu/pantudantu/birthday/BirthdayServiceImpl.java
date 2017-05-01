package com.xanandu.pantudantu.birthday;

import java.sql.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Service;

import com.xanandu.pantudantu.model.Rock;
import com.xanandu.pantudantu.model.ServiceTax;
import com.xanandu.pantudantu.model.AdvanceBooking;
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

@Service("BirthdayService")
public class BirthdayServiceImpl implements BirthdayService{
	
	@Autowired
	BirthdayDao birthdayDao;

	@Override
	public void saveAdvanceBooking(AdvanceBooking booing) {
	
		birthdayDao.saveAdvanceBooking(booing);
		
	}

	@Override
	public BirthdayPackage getBirthdayId(int id) {
		
		return birthdayDao.getBirthdayId(id);
	}

	@Override
	public List<AdvanceBooking> getAvailability(java.util.Date d) {
		
		return birthdayDao.getAvailability(d);
				
	}

	@Override
	public String saveBooking(AdvanceBooking booking) {
		
		return birthdayDao.saveBooking(booking);
	}

	@Override
	public List<AdvanceBooking> getBookingById(int id) {
		// TODO Auto-generated method stub
		return birthdayDao.getBookingById(id);
	}

	@Override
	public List<AdvanceBooking> getBookingByDate(java.util.Date date) {
		// TODO Auto-generated method stub
		return birthdayDao.getBookingByDate(date);
	}

	@Override
	public void updateBookingById(int id) {
		// TODO Auto-generated method stub
		birthdayDao.updateBookingById(id);
	}

	@Override
	public List<AdvanceBooking> getListOfProcessingBirthDayPackages() {
		return birthdayDao.getListOfProcessingBirthDayPackages();
	}

	
	@Override
	public AdvanceBooking getBookingObjectById(int id) {
		// TODO Auto-generated method stub
		return birthdayDao.getBookingObjectById(id);
	}

	@Override
	public void savePostondDetails(AdvanceBookingPospond pospond) {
		
		birthdayDao.savePostondDetails(pospond);
	}

	@Override
	public void saveAdvanceBookingPaymentDetails(AdvanceBookingPaymentDetails obj) {
		birthdayDao.saveAdvanceBookingPaymentDetails(obj);
		
		
	}

	@Override
	public void PostPondBookingById(int id) {
		// TODO Auto-generated method stub
		birthdayDao.PostPondBookingById(id);
	}

	@Override
	public void pospondBooking(AdvanceBooking booking) {
		// TODO Auto-generated method stub
		birthdayDao.pospondBooking(booking);
	}

	@Override
	public List<AdvanceBooking> getListOfAdvanceBirthdayBooking() {
		// TODO Auto-generated method stub
		return birthdayDao.getListOfAdvanceBirthdayBooking();
	}

	@Override
	public void updateBookingStatut(int id) {
		// TODO Auto-generated method stub
		birthdayDao.updateBookingStatut(id);
		
	}



	

	

	
	
	

}
