package com.xanandu.pantudantu.model;

import java.util.Date;

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
@Table(name="BillPaymentDetails")
public class BillPaymentDetails {
	@Id
	@GeneratedValue
	int BillPayment_id;
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name="billId",nullable=false)
	Bill bill;
	
	@Column(name="paid_amount")
	String paid_amount;
	
	@Column(name="paid_type")
	String paid_type;
	
	@Temporal(TemporalType.DATE)
	@Column(name="paid_date")
	Date paid_date; 
	
	@Column(name="bankname")
	String bankname;
	
	@Column(name="cheque_number")
	String cheque_number;

	public int getBillPayment_id() {
		return BillPayment_id;
	}

	public void setBillPayment_id(int billPayment_id) {
		BillPayment_id = billPayment_id;
	}

	public Bill getBill() {
		return bill;
	}

	public void setBill(Bill bill) {
		this.bill = bill;
	}

	public String getPaid_amount() {
		return paid_amount;
	}

	public void setPaid_amount(String paid_amount) {
		this.paid_amount = paid_amount;
	}

	public String getPaid_type() {
		return paid_type;
	}

	public void setPaid_type(String paid_type) {
		this.paid_type = paid_type;
	}

	public Date getPaid_date() {
		return paid_date;
	}

	public void setPaid_date(Date paid_date) {
		this.paid_date = paid_date;
	}

	public String getBankname() {
		return bankname;
	}

	public void setBankname(String bankname) {
		this.bankname = bankname;
	}

	public String getCheque_number() {
		return cheque_number;
	}

	public void setCheque_number(String cheque_number) {
		this.cheque_number = cheque_number;
	}
}
