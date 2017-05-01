package com.xanandu.pantudantu.pass;

import java.util.List;

import com.xanandu.pantudantu.model.MonthlyPass;
import com.xanandu.pantudantu.model.MonthlyPassAssignment;
import com.xanandu.pantudantu.model.PassPaymentDetails;
import com.xanandu.pantudantu.model.VisitPass;
import com.xanandu.pantudantu.model.VisitPassAssignmen;

public interface PassDao {
	List<VisitPassAssignmen> getListOfVisitPassAssignment();
	List<MonthlyPassAssignment> getListOfMonthPassAssignment();
    public 	VisitPass getVisitPass(int i);
    public MonthlyPass getMonthlyPass(int i);


    public VisitPassAssignmen   getBillOfVisitPassByVisitPassId(int id);
	public MonthlyPassAssignment   getBillOfMonthlyPassByMonthlyPassId(int id);
	  
	public void savePassPaymentDetails(PassPaymentDetails passPaymentDetails);  
}
