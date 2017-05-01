package com.xanandu.pantudantu.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="monthlypass")
public class MonthlyPass {
	
	
	@Id
	@GeneratedValue
	int mpnthlyPassId;
	String monpasstype;
	public int getMpnthlyPassId() {
		return mpnthlyPassId;
	}
	public void setMpnthlyPassId(int mpnthlyPassId) {
		this.mpnthlyPassId = mpnthlyPassId;
	}
	public String getMonpasstype() {
		return monpasstype;
	}
	public void setMonpasstype(String monpasstype) {
		this.monpasstype = monpasstype;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	double price;
	String type;
	
	

}
