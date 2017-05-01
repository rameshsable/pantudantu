package com.xanandu.pantudantu.account;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.xanandu.pantudantu.model.Account;
import com.xanandu.pantudantu.model.ExpenseType;





@Controller

public class AccountController 
{
	@Autowired 
	 AccountService ex;
	
	/*@RequestMapping(value="/accounts",method = RequestMethod.GET)
	 public ModelAndView account()
	 {
		System.out.println("hello");
		return new ModelAndView("accounts");
		
	 }*/

	@RequestMapping(value="/addExpense",method = RequestMethod.GET)
	@ResponseBody
	 public String addExp(HttpServletRequest request)
	 {
		
		int i=10;
		String[] exp = request.getParameterValues("exp[]");
        
        	String[] amt = request.getParameterValues("amt[]");
        
        	String[] desc = request.getParameterValues("desc[]");
        	
        	ex.addExpense(exp, amt, desc);
        	
        	System.out.println("nikhil");
        	return "success";
        	
        	
     	
	 }
	
	
	@RequestMapping(value="/showExp",method = RequestMethod.POST)
	
	 public ModelAndView showExp(HttpServletRequest request,ModelMap modelmap)
	 {
		
		String date1 = request.getParameter("date1");
      
       	String date2 = request.getParameter("date2");
      
       	
       	
      // 	expense code start nikhil
       	List<Account> l=ex.showExp(date1, date2);
       	modelmap.addAttribute("listofexp", l);
       	
       	
       	HashMap<Date,HashMap<ExpenseType ,Double>> sortedListDateWise =new HashMap<Date, HashMap<ExpenseType,Double>>();
       	
       	HashMap<ExpenseType,Double> calculatedAmountMap =null;
       	List<ExpenseType> expenseTypes=	ex.getListOfExpenseType();
       	int size= expenseTypes.size();
       	List<Double>doubles=new ArrayList<Double>(size);
       	
       	for (ExpenseType et : expenseTypes) {
			doubles.add(0.0);
			
		}
       	
       	Date tempDate=null,tempDate1=null;
       	SimpleDateFormat format =new SimpleDateFormat("dd-MM-yyyy");
       	for (Account account : l) {
			if(tempDate==null){
			try {
					calculatedAmountMap= new HashMap<ExpenseType, Double>();
				tempDate=	account.getDat();
				
		
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			
			try {
				tempDate1=	account.getDat();
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			if(tempDate1.compareTo(tempDate)==0 ){
			
				for(int i=0;  i<expenseTypes.size();i++){
					
				
				if(expenseTypes.get(i).getExid()==(account.getExpenseType().getExid())){
				double dd=	doubles.get(i);
				dd=dd+Double.parseDouble(account.getAmount());
				
				doubles.set(i, dd);
				calculatedAmountMap.put(account.getExpenseType(), doubles.get(i));
				sortedListDateWise.put(tempDate, calculatedAmountMap);
				}
					
				}
			}else{
				
				for(int i=0;  i<expenseTypes.size();i++){
					if(expenseTypes.get(i).getExid()==(account.getExpenseType().getExid())){
						
						ExpenseType eee=account.getExpenseType();
					
					sortedListDateWise.put(tempDate, calculatedAmountMap);
					
					
					double dd=	doubles.get(i);
					dd=dd+Double.parseDouble(account.getAmount());
					
					doubles.set(i, dd);
					calculatedAmountMap.put(account.getExpenseType(), doubles.get(i));
					sortedListDateWise.put(tempDate, calculatedAmountMap);
					
					}
				
				
					calculatedAmountMap =new HashMap<ExpenseType, Double>();
				tempDate=tempDate1;
			
			}
			
			
       		
		}
  
       	
       	}
       	
       	System.out.println(sortedListDateWise.size()+"  sortedListDateWise");
    	Set<Date> setDate= sortedListDateWise.keySet();
		
    	double totalAmount=0;
    	
		for (Date date : setDate) {
			HashMap<ExpenseType,Double>  map=	sortedListDateWise.get(date);
		
			Set<ExpenseType> etyp=	map.keySet();	
			
			for (ExpenseType expenseType : etyp) {
			
				double d=	map.get(expenseType);
				totalAmount=totalAmount+d;
			}
		}
		
		modelmap.addAttribute("expenseTotalAmount",totalAmount);
		modelmap.addAttribute("types",sortedListDateWise);
		
		
		//expense code end nikhil
		
		// revenue code start nikhil
		
		
		HashMap<Date, Double> hashMap=	ex.getTotalRevenue(date1, date2);
		
		// revenue code end nikhil
		
		Map<Date, Double> map =new TreeMap<Date, Double>(hashMap);
		
	
		Set<Date> dat22=		hashMap.keySet();
		Double revenueAmount=0.0;
		for(Date date3 : dat22){
			
	
			
			revenueAmount=revenueAmount+hashMap.get(date3);
	
		}
		
		
		modelmap.addAttribute("hashMap",map);
		modelmap.addAttribute("revenueAmount",revenueAmount);
		
		
       	return new ModelAndView("showExp");
       	
		
	 }
}
