package com.xanandu.pantudantu.pass;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Service;

import com.xanandu.pantudantu.model.MonthlyPass;
import com.xanandu.pantudantu.model.MonthlyPassAssignment;
import com.xanandu.pantudantu.model.PassPaymentDetails;
import com.xanandu.pantudantu.model.UserModel;
import com.xanandu.pantudantu.model.VisitPass;
import com.xanandu.pantudantu.model.VisitPassAssignmen;

@Service("PassService")
public class PassServiceImpl implements PassService{

	@Autowired PassDao passDao;
	@Override
	public List<VisitPassAssignmen> getListOfVisitPassAssignment() {
		
		return passDao.getListOfVisitPassAssignment();
	}

	@Override
	public List<MonthlyPassAssignment> getListOfMonthPassAssignment() {
		
		return passDao.getListOfMonthPassAssignment();
	}

	@Override
	public VisitPass getVisitPass(int i) {

		return passDao.getVisitPass(i);
	}

	@Override
	public MonthlyPass getMonthlyPass(int i) {
		
		return passDao.getMonthlyPass(i);
	}

	@Override
	public VisitPassAssignmen getBillOfVisitPassByVisitPassId(int id) {
		// TODO Auto-generated method stub
		return passDao.getBillOfVisitPassByVisitPassId( id);
	}

	@Override
	public MonthlyPassAssignment getBillOfMonthlyPassByMonthlyPassId(int id) {
		// TODO Auto-generated method stub
		return passDao.getBillOfMonthlyPassByMonthlyPassId( id);
	}

	@Override
	public void savePassPaymentDetails(PassPaymentDetails passPaymentDetails) {
		// TODO Auto-generated method stub
		passDao.savePassPaymentDetails(passPaymentDetails);
	}
	
}
