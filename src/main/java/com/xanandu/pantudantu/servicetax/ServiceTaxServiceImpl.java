package com.xanandu.pantudantu.servicetax;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Service;

import com.xanandu.pantudantu.model.UserModel;

@Service("ServiceTaxService")
public class ServiceTaxServiceImpl implements ServiceTaxService{

	@Autowired
	private ServiceTaxDao taxDao;
	@Override
	public int getServicetaxByTax(double tax){
		return taxDao.getServicetaxByTax(tax);
		
	}

	

}
