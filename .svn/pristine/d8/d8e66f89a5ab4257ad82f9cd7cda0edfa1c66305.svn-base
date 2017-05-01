package com.xanandu.pantudantu.account;

import java.util.Date;
import java.util.HashMap;
import java.util.List;

import com.xanandu.pantudantu.model.Account;
import com.xanandu.pantudantu.model.ExpenseType;

public interface AccountService
{
  public void addExpense(String exp[],String amt[],String[] desc);
  public List<Account> showExp(String date1,String date2);
  public List<ExpenseType> getListOfExpenseType();
  public HashMap<Date, Double> getTotalRevenue(String date1, String date2);
  
  public void addNewExpenseType(String exptype);
}
