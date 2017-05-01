package com.xanandu.pantudantu.birthday;

import java.sql.Date;
import java.util.List;

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

import com.xanandu.pantudantu.model.MonthlyPass;
import com.xanandu.pantudantu.model.MonthlyPassAssignment;
import com.xanandu.pantudantu.model.Playzone;
import com.xanandu.pantudantu.model.Rclimbing;
import com.xanandu.pantudantu.model.VisitPass;
import com.xanandu.pantudantu.model.VisitPassAssignmen;


public interface BirthdayService {
	
	
	public void saveAdvanceBooking(AdvanceBooking booing);
	
	public BirthdayPackage getBirthdayId(int id);
	public List<AdvanceBooking> getAvailability(java.util.Date d);
	public String saveBooking(AdvanceBooking booking);
	public List<AdvanceBooking>getBookingById(int id);
	public List<AdvanceBooking>getBookingByDate(java.util.Date date);
	public void savePostondDetails(AdvanceBookingPospond pospond);
	public void PostPondBookingById(int id);
	
	public void updateBookingById(int id);

	public AdvanceBooking getBookingObjectById(int id);
	public void pospondBooking(AdvanceBooking booking);


	List<AdvanceBooking> getListOfProcessingBirthDayPackages(); 
	public void saveAdvanceBookingPaymentDetails(AdvanceBookingPaymentDetails obj);
	public List<AdvanceBooking>getListOfAdvanceBirthdayBooking();
	public void updateBookingStatut( int id);

	
	

}
