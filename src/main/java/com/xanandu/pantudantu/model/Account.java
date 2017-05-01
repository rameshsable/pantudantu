package com.xanandu.pantudantu.model;

import static javax.persistence.GenerationType.IDENTITY;

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
@Table(name="Expense")
public class Account 

{
	@Id
	@GeneratedValue(strategy=IDENTITY)
	@Column(name = "id", nullable = false)
	private int exid;
	
	@Column(name = "Amount")
	private String amount;

	@ManyToOne(fetch=FetchType.EAGER)
    @JoinColumn(name="Expense_id",nullable=false)
    ExpenseType expenseType;
	
	//@Column(name = "Expense_id")
	//private int eid;

	@Column(name = "Description")
	private String desc;
     
		
	/*@Column(name = "date")
	private String dat;
*/
		
	@Temporal(TemporalType.DATE)
	@Column(name="dat")
	Date dat;
	
	public String getAmount() {
		return amount;
	}

	public void setAmount(String amount) {
		this.amount = amount;
	}
	
public ExpenseType getExpenseType() {
		return expenseType;
	}

	public void setExpenseType(ExpenseType expenseType) {
		this.expenseType = expenseType;
	}

	public void setExid(int exid) {
		this.exid = exid;
	}

	/*
	public int getExpense_id() {
		return eid;
	}

	public void setExpense_id(int eid) {
		this.eid = eid;
	}
*/
	public String getDesc() {
		return desc;
	}

	public void setDesc(String desc) {
		this.desc = desc;
	}

	
	/*public String getDat() {
		return dat;
	}

	public void setDat(String dat) {
		this.dat = dat;
	}
	*/

	
	public int getExid() {
		return exid;
	}

	public Date getDat() {
		return dat;
	}

	public void setDat(Date dat) {
		this.dat = dat;
	}
	
	
}
