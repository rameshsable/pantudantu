package com.xanandu.pantudantu.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="birthday")
public class BirthdayPackage {
	
	@Id
	@GeneratedValue
	int birthdayId;
	String packagetype;
	public int getBirthdayId() {
		return birthdayId;
	}
	public void setBirthdayId(int birthdayId) {
		this.birthdayId = birthdayId;
	}
	public String getPackagetype() {
		return packagetype;
	}
	public void setPackagetype(String packagetype) {
		this.packagetype = packagetype;
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
