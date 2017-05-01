package com.xanandu.pantudantu.account;

import java.util.Date;
import java.util.HashMap;
import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xanandu.pantudantu.model.Account;
import com.xanandu.pantudantu.model.ExpenseType;



@Service("ex")
public class AccountServiceImpl implements AccountService

{

	@Autowired
	private SessionFactory sessionFactory;
	@Autowired
	private AccountDao accountdao;
	@Override
	public void addExpense(String[] exp, String[] amt,String[] desc) 
	{
		// TODO Auto-generated method stub
		
		accountdao.addExpense(exp, amt, desc);
		
	}
	@Override
	public List<Account> showExp(String date1, String date2) {
		// TODO Auto-generated method stub
		List<Account> l=accountdao.showExp(date1, date2);
		return l;
	}
	@Override
	public List<ExpenseType> getListOfExpenseType() {
		// TODO Auto-generated method stub
		return accountdao.getListOfExpenseType();
	}
	@Override
	public HashMap<Date, Double> getTotalRevenue(String date1, String date2) {
		// TODO Auto-generated method stub
		return accountdao.getTotalRevenue(date1, date2) ;
		
	}
	@Override
	public void addNewExpenseType(String exptype) {
		accountdao.addNewExpenseType(exptype);
		
	}

}
