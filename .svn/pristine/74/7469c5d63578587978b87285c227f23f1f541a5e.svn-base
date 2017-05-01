package com.xanandu.pantudantu.customer;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Service;

import com.xanandu.pantudantu.model.Customer;
import com.xanandu.pantudantu.model.Locality;
import com.xanandu.pantudantu.model.UserModel;

@Service("CustomerService")
public class CustomerServiceImpl implements CustomerService{
	
	@Autowired
	CustomerDao customerdao;

	@Override
	public List<Customer> getListOfCustomer() {
		
		return customerdao.getListOfCustomer();

		
	
	}

	@Override
	public void saveCustomer(Customer cust) {
		System.out.println("inside sevice IMPL");
		 customerdao.saveCustomer(cust);
		
	}

	@Override
	public List<Locality> getLocality() {
		// TODO Auto-generated method stub
		return customerdao.getLocality();
	}

	@Override
	public List<Customer> getListOfCustomerByDateRange(Date d1 ,Date d2) {
		// TODO Auto-generated method stub
		return customerdao.getListOfCustomerByDateRange( d1 ,d2);
	}

	@Override
	public Customer getCustomerById(int id) {
		// TODO Auto-generated method stub
		return customerdao.getCustomerById(id);
	}

	
	
	

}
