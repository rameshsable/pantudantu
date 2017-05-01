package com.xanandu.pantudantu.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.type.TrueFalseType;

@Entity
@Table(name="BillDetails")
public class BillDetails {
	@Id
	@GeneratedValue
	int billdetail_id;
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name="billId",nullable=false)
	Bill bill;
	
	@Column(name="tot_time")
	String tot_time;
	
	@Column(name="attempt")
	String attempt;
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name="billPayType",nullable=true)
	BillPayType billPayType;  	
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name="visitPassAssignmen",nullable=true)
	VisitPassAssignmen visitPassAssignmen;
	
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name="monthlyPassAssignment",nullable=true)
	MonthlyPassAssignment monthlyPassAssignment;
	
	@Column(name="passtype")
	String passtype; 
	
	@Column(name="amount")
	double amount;
	
	@Column(name="child")
	int child;
	
	@Column(name="adult")
	int adult;

	
	public VisitPassAssignmen getVisitPassAssignmen() {
		return visitPassAssignmen;
	}

	public void setVisitPassAssignmen(VisitPassAssignmen visitPassAssignmen) {
		this.visitPassAssignmen = visitPassAssignmen;
	}

	public MonthlyPassAssignment getMonthlyPassAssignment() {
		return monthlyPassAssignment;
	}

	public void setMonthlyPassAssignment(MonthlyPassAssignment monthlyPassAssignment) {
		this.monthlyPassAssignment = monthlyPassAssignment;
	}

	public int getBilldetail_id() {
		return billdetail_id;
	}

	public void setBilldetail_id(int billdetail_id) {
		this.billdetail_id = billdetail_id;
	}

	public Bill getBill() {
		return bill;
	}

	public void setBill(Bill bill) {
		this.bill = bill;
	}

	public String getTot_time() {
		return tot_time;
	}

	public void setTot_time(String tot_time) {
		this.tot_time = tot_time;
	}

	public String getAttempt() {
		return attempt;
	}

	public void setAttempt(String attempt) {
		this.attempt = attempt;
	}

	public BillPayType getBillPayType() {
		return billPayType;
	}

	public void setBillPayType(BillPayType billPayType) {
		this.billPayType = billPayType;
	}

	public String getPasstype() {
		return passtype;
	}

	public void setPasstype(String passtype) {
		this.passtype = passtype;
	}

	public double getAmount() {
		return amount;
	}

	public void setAmount(double amount) {
		this.amount = amount;
	}

	public int getChild() {
		return child;
	}

	public void setChild(int child) {
		this.child = child;
	}

	public int getAdult() {
		return adult;
	}

	public void setAdult(int adult) {
		this.adult = adult;
	}
	
	
	

}
