package com.xanandu.pantudantu.model;



import java.sql.Time;
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
@Table(name="AdvaceBooking")	
public class AdvanceBooking {
	
	@Id
	@GeneratedValue
	int bookingId;
	@ManyToOne(fetch = FetchType.EAGER,cascade=CascadeType.ALL)
	@JoinColumn(name="cust",nullable=false)
	private Customer customer;
	@ManyToOne(fetch = FetchType.EAGER,cascade=CascadeType.ALL)
	@JoinColumn(name="package",nullable=false)
	private BirthdayPackage birthdayPackage;      //date   
	
	@Column
	@Temporal (TemporalType.DATE)
	private Date date;
	
	
	
	@Column
	@Temporal (TemporalType.DATE)
	private Date bookingDate;
	

	public Date getBookingDate() {
		return bookingDate;
	}
	public void setBookingDate(Date bookingDate) {
		this.bookingDate = bookingDate;
	}
	@Column
	private Time  startTime;
	@Column
	private Time endTime;
	@Column                                   // date,  startTime , adult , total,  status  paidAmount customer  child
	private int child;     
	@Column
	private int adult;
	@Column
	private double total;
	private double paidAmount;
	@Column(name = "status")
	private String status;
	@ManyToOne(fetch = FetchType.EAGER,cascade=CascadeType.ALL)
	@JoinColumn(name="Bill",nullable=true)
	private Bill bill;


	public Bill getBill() {
		return bill;
	}
	public void setBill(Bill bill) {
		this.bill = bill;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public int getBookingId() {
		return bookingId;
	}
	public void setBookingId(int bookingId) {
		this.bookingId = bookingId;
	}
	public Customer getCustomer() {
		return customer;
	}
	public void setCustomer(Customer customer) {
		this.customer = customer;
	}
	public BirthdayPackage getBirthdayPackage() {
		return birthdayPackage;
	}
	public void setBirthdayPackage(BirthdayPackage birthdayPackage) {
		this.birthdayPackage = birthdayPackage;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public Time getStartTime() {
		return startTime;
	}
	public void setStartTime(Time startTime) {
		this.startTime = startTime;
	}
	public Time getEndTime() {
		return endTime;
	}
	public void setEndTime(Time endTime) {
		this.endTime = endTime;
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
	public double getTotal() {
		return total;
	}
	public void setTotal(double total) {
		this.total = total;
	}
	public double getPaidAmount() {
		return paidAmount;
	}
	public void setPaidAmount(double paidAmount) {
		this.paidAmount = paidAmount;
	}
	
	
	

}
