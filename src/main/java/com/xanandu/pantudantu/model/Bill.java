package com.xanandu.pantudantu.model;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name="bill")
public class Bill{

	@Id
	@GeneratedValue
	int  bill_Id;
	
	@Temporal(TemporalType.DATE)
	@Column(name="bill_date")
	Date bill_Date;
	
	@ManyToOne(fetch = FetchType.EAGER,cascade=CascadeType.ALL)
	@JoinColumn(name="custId",nullable=false)
	Customer cust;
	
	@Column(name="bill_discount")
	double bill_discount;
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name="serviceTax",nullable=false)
	ServiceTax serviceTax;
	
	@Column(name="bill_other")
	double bill_other;
	
	@Column(name="bill_amount")
	double bill_amount;
	
	@Column(name="bill_paid")
	double bill_paid;
	
	@Column(name="bill_osfhandling",nullable=true)
	double osfhandling;

	
	public double getOsfhandling() {
		return osfhandling;
	}

	public void setOsfhandling(double osfhandling) {
		this.osfhandling = osfhandling;
	}

	public int getBill_Id() {
		return bill_Id;
	}

	public void setBill_Id(int bill_Id) {
		this.bill_Id = bill_Id;
	}

	public Date getBill_Date() {
		return bill_Date;
	}

	public void setBill_Date(Date bill_Date) {
		this.bill_Date = bill_Date;
	}

	public Customer getCust() {
		return cust;
	}

	public void setCust(Customer cust) {
		this.cust = cust;
	}

	public double getBill_discount() {
		return bill_discount;
	}

	public void setBill_discount(double bill_discount) {
		this.bill_discount = bill_discount;
	}

	

	public ServiceTax getServiceTax() {
		return serviceTax;
	}

	public void setServiceTax(ServiceTax serviceTax) {
		this.serviceTax = serviceTax;
	}

	public double getBill_other() {
		return bill_other;
	}

	public void setBill_other(double bill_other) {
		this.bill_other = bill_other;
	}

	public double getBill_amount() {
		return bill_amount;
	}

	public void setBill_amount(double bill_amount) {
		this.bill_amount = bill_amount;
	}

	public double getBill_paid() {
		return bill_paid;
	}

	public void setBill_paid(double bill_paid) {
		this.bill_paid = bill_paid;
	}

	
}
