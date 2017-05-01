package com.xanandu.pantudantu.setup;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service("setupService")
public class SetupServiceImpl implements SetupService{
@Autowired  SetupDao setupdao; 
	@Override
	public void addLocality() {
		// TODO Auto-generated method stub
		setupdao.addLocality();
	}
	@Override
	public void createSetup() {
		setupdao.createSetup();
		
	}




}
