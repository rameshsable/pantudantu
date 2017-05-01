package com.xanandu.pantudantu.bill;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Service;

import com.xanandu.pantudantu.model.Rock;
import com.xanandu.pantudantu.model.ServiceTax;
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

@Service("BillService")
public class BillServiceImpl implements BillService{
	
	@Autowired
	BillDao billdao;

	@Override
	public void savePlayzone(Playzone playzone) {
		billdao.savePlayzone(playzone);
		
	}

	@Override
	public void saveRclimbing(Rclimbing rclimbing) {
		billdao.saveRclimbing(rclimbing);
		
	}

	@Override
	public void saveVisitPass(VisitPass visitpass) {


		billdao.saveVisitPass(visitpass);
		
	}

	@Override
	public void saveMonthlyPass(MonthlyPass mpass) {
		// TODO Auto-generated method stub
		billdao.saveMonthlyPass(mpass);
		
	}

	@Override
	public void saveBirthday(BirthdayPackage bpack) {

		billdao.saveBirthday(bpack);
	}

	@Override
	public void saveAttempts(Rock atmp) {
		
		billdao.saveAttempts(atmp);
		
	}

	@Override
	public List<Playzone> getListOfPlayzone() {
		// TODO Auto-generated method stub
		return billdao.getListOfPlayzone();
	}

	@Override
	public List<Rclimbing> getListOfRclimbing() {
		// TODO Auto-generated method stub
		return billdao.getListOfRclimbing();
	}

	@Override
	public List<VisitPass> getListOfVisitPass() {
		// TODO Auto-generated method stub
		return billdao.getListOfVisitPass();
	}

	@Override
	public List<MonthlyPass> getListOfMonthlypass() {
		// TODO Auto-generated method stub
		return billdao.getListOfMonthlypass();
	}

	@Override
	public List<BirthdayPackage> getListOfBirthday() {
		// TODO Auto-generated method stub
		return billdao.getListOfBirthday();
	}

	@Override
	public List<Rock> getListOfRock() {
		// TODO Auto-generated method stub
		return billdao.getListOfRock();
	}

	@Override
	public void updatePlayzone(Playzone p) {
		System.out.println("bill serice");
		billdao.updatePlayzone(p);
		
	}

	@Override
	public void updateRclimbing(Rclimbing rc) {
		billdao.updateRclimbing(rc);
		
	}

	@Override
	public void updateVisitpass(VisitPass pass) {
		billdao.updateVisitpass(pass);
		
	}

	@Override
	public void updateMonthlypass(MonthlyPass m) {
		billdao.updateMonthlypass(m);
		
	}

	@Override
	public void updateBirthday(BirthdayPackage b) {
          billdao.updateBirthday(b);
	}

	@Override
	public void updateRockwall(Rock rock) {
		billdao.updateRockwall(rock);
		
	}

	@Override
	public int saveVisitPassAssigment(VisitPassAssignmen a) {
		
	return	billdao.saveVisitPassAssigment(a);
		
	}

	@Override
	public int getVisitPassListId(String type) {
		// TODO Auto-generated method stub
		return billdao.getVisitPassListId(type);
	}

	@Override
	public int saveMonthlyPassAssigment(MonthlyPassAssignment m) {
		
		return billdao.saveMonthlyPassAssigment(m);
		
	}

	@Override
	public int getMonthlyPassAssignId(String type) {
		// TODO Auto-generated method stub
		return billdao.getMonthlyPassAssignId(type);
	}

	@Override
	public void saveTax(ServiceTax t) {
		billdao.saveTax(t);
		
	}

	@Override
	public List<ServiceTax> getServiceTaxList() {
		// TODO Auto-generated method stub
		return billdao.getServiceTaxList();
	}

	@Override
	public void updateStatus(int s) {
		billdao.updateStatus(s);
		
	}

	@Override
	public int billsave(Bill bill) {
		// TODO Auto-generated method stub
		return billdao.billsave(bill);
	}

	@Override
	public void saveBillPaymentDetails(Bill bill, String paymentamount, String paymentchequeNo, String paymentchequeBank, String paymentType){
		billdao.saveBillPaymentDetails(bill, paymentamount, paymentchequeNo, paymentchequeBank, paymentType);
	}

	@Override
	public void saveBillDetails(Bill bill, String[] billtimespl, String[] billnoOfChildspl, String[] billnoOfAdultspl, String[] billnoOfAttemptspl, String[] billtypspl, String[] billPassTypespl, String[] billamountspl, String[] passNumberspl,String payType ) {
		// TODO Auto-generated method stub
		billdao.saveBillDetails(bill, billtimespl, billnoOfChildspl, billnoOfAdultspl, billnoOfAttemptspl, billtypspl, billPassTypespl, billamountspl, passNumberspl,payType);
	}

	@Override
	public List<BillPayType> getbillPayTypeList() {
		// TODO Auto-generated method stub
		return billdao.getbillPayTypeList();
	}

	@Override
	public Bill getBillById(String billId) {
		// TODO Auto-generated method stub
		return billdao.getBillById(billId);
	}

	@Override
	public List<BillDetails> getBillDetailsById(String billId) {
		// TODO Auto-generated method stub
		return billdao.getBillDetailsById(billId);
	}

	@Override
	public List<BillPaymentDetails> getBillPaymentDetailsById(String billId) {
		// TODO Auto-generated method stub
		return billdao.getBillPaymentDetailsById(billId);
	}

	@Override
	public void addBillPayType(String PayType) {
		billdao.addBillPayType(PayType);
		
	}

	@Override
	public void saveBillDetailByBillDetailObj(BillDetails billDetails) {
		billdao.saveBillDetailByBillDetailObj(billDetails);
	}

	@Override
	public void saveBillPaymentByBillPaymentObj(BillPaymentDetails billPaymentDetails) {
		// TODO Auto-generated method stub
		billdao.saveBillPaymentByBillPaymentObj(billPaymentDetails);
	}
	

	
	
	

}
