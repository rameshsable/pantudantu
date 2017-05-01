package com.xanandu.pantudantu.model;

import static javax.persistence.GenerationType.IDENTITY;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="ExpenseType")
public class ExpenseType 
{
	@Id
	@GeneratedValue
	private int exid;

	@Column(name="Expence_Type")
	private String expenceType;

	public int getExid() {
		return exid;
	}

	public void setExid(int exid) {
		this.exid = exid;
	}

	public String getExpenceType() {
		return expenceType;
	}

	public void setExpenceType(String expenceType) {
		this.expenceType = expenceType;
	}
	

}
