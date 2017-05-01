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
@Table(name="AdvanceBookingPaymentDetails")
public class AdvanceBookingPaymentDetails {
	
	@Id
	@GeneratedValue
	int id;
	@Column(name="bankname")
	String bankName;
	@Column(name="chequeNumber")
	String chequeNumber;
	@Column(name="PaidAmount")
	double paidAmount;
	@Column(name="paidDate")
	@Temporal (TemporalType.DATE)
	Date date;
	@Column(name="paidType")
	String paidType;
	/**
	 * 
	 */
	@ManyToOne(fetch = FetchType.EAGER,cascade=CascadeType.ALL)
	@JoinColumn(name="bookingId",nullable=true)
	AdvanceBooking booking;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getBankName() {
		return bankName;
	}
	public void setBankName(String bankName) {
		this.bankName = bankName;
	}
	public String getChequeNumber() {
		return chequeNumber;
	}
	public void setChequeNumber(String chequeNumber) {
		this.chequeNumber = chequeNumber;
	}
	public double getPaidAmount() {
		return paidAmount;
	}
	public void setPaidAmount(double paidAmount) {
		this.paidAmount = paidAmount;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getPaidType() {
		return paidType;
	}
	public void setPaidType(String paidType) {
		this.paidType = paidType;
	}
	public AdvanceBooking getBooking() {
		return booking;
	}
	public void setBooking(AdvanceBooking booking) {
		this.booking = booking;
	}
	
	
	
	
	
}
