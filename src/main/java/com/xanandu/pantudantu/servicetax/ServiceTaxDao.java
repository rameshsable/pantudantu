package com.xanandu.pantudantu.servicetax;

import java.util.List;

import org.springframework.security.core.userdetails.UserDetails;

import com.xanandu.pantudantu.model.UserModel;

public interface ServiceTaxDao {
	public int getServicetaxByTax(double tax);
}
