package com.xanandu.pantudantu.model;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="BookingPostpond")
public class AdvanceBookingPospond {

	@Id
	@GeneratedValue
	int id;
	@ManyToOne(fetch = FetchType.EAGER,cascade=CascadeType.ALL)
	@JoinColumn(name="Booking",nullable=false)
	AdvanceBooking booking;
	
	@ManyToOne(fetch = FetchType.EAGER,cascade=CascadeType.ALL)
	@JoinColumn(name="cust",nullable=false)
	Customer cust;
	@Column(name="DueAmount")
	double diductAmount;
	@Column(name="paidAmount")
	double paidAmount;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public AdvanceBooking getBooking() {
		return booking;
	}
	public void setBooking(AdvanceBooking booking) {
		this.booking = booking;
	}
	public Customer getCust() {
		return cust;
	}
	public void setCust(Customer cust) {
		this.cust = cust;
	}
	public double getDiductAmount() {
		return diductAmount;
	}
	public void setDiductAmount(double diductAmount) {
		this.diductAmount = diductAmount;
	}
	public double getPaidAmount() {
		return paidAmount;
	}
	public void setPaidAmount(double paidAmount) {
		this.paidAmount = paidAmount;
	
	
	}
}
