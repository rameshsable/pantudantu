package com.xanandu.pantudantu.bill;

import java.util.List;

import com.xanandu.pantudantu.model.Rock;
import com.xanandu.pantudantu.model.ServiceTax;
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


public interface BillService {
	

	public void savePlayzone(Playzone playzone);
	public void saveRclimbing( Rclimbing rclimbing);
	public void saveVisitPass(VisitPass visitpass);
	public void saveMonthlyPass(MonthlyPass mpass);
	public void saveBirthday(BirthdayPackage bpack);
	public void saveAttempts(Rock atmp);
	 
	
	public List<Playzone>getListOfPlayzone();
	public List<Rclimbing>getListOfRclimbing();
	public List<VisitPass>getListOfVisitPass();
	public List<MonthlyPass>getListOfMonthlypass();
	public List<BirthdayPackage>getListOfBirthday();
	public List<Rock>getListOfRock();
	public List<BillPayType> getbillPayTypeList();

	
	/*
	updating functions*/
	
	public void updatePlayzone(Playzone p);
	public void updateRclimbing(Rclimbing rc);
	public void updateVisitpass(VisitPass pass);
	public void updateMonthlypass(MonthlyPass m);
	public void updateBirthday(BirthdayPackage b);
	public void updateRockwall(Rock rock);

	public int saveVisitPassAssigment(VisitPassAssignmen a);
	public 	int getVisitPassListId(String type);
	
	public int saveMonthlyPassAssigment(MonthlyPassAssignment  m);
    public 	int getMonthlyPassAssignId(String type);
    
    /*  followinf is the tax section
    */
    public void saveTax(ServiceTax t);
    public List<ServiceTax>getServiceTaxList();
    public void updateStatus(int s);
    
    
    /*save bill with all details*/
    public int billsave(Bill bill );
    public void saveBillDetails(Bill bill, String[] billtimespl, String[] billnoOfChildspl, String[] billnoOfAdultspl, String[] billnoOfAttemptspl, String[] billtypspl, String[] billPassTypespl, String[] billamountspl, String[] passNumberspl,String payType );
    public void saveBillPaymentDetails(Bill bill, String paymentcash, String paymentchequeNo, String paymentchequeBank, String paymentchequeAmount );
    
    
    
    public Bill getBillById(String billId);
    public List<BillDetails> getBillDetailsById(String billId);
    public List<BillPaymentDetails> getBillPaymentDetailsById(String billId);
    
    
    public void addBillPayType(String PayType);
    
    public void saveBillDetailByBillDetailObj(BillDetails  billDetails);
    public void saveBillPaymentByBillPaymentObj(BillPaymentDetails  billPaymentDetails);

}
