package com.xanandu.pantudantu.model;

import java.util.Date;

import javax.annotation.Generated;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.CascadeType;

@Entity
public class Customer {
	
	@Id
	@GeneratedValue
	@Column(name="cust_id")
	int cid;
	@Column
	String childname;
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;    
	}                                                    
	public String getChildname() {
		return childname;
	}
	public void setChildname(String childname) {
		this.childname = childname;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getFatherName() {
		return fatherName;
	}
	public void setFatherName(String fatherName) {
		this.fatherName = fatherName;
	}
	public String getMotherName() {
		return motherName;
	}
	public void setMotherName(String motherName) {
		this.motherName = motherName;
	}
	public String getMob1() {
		return mob1;
	}
	public void setMob1(String mob1) {
		this.mob1 = mob1;
	}
	public String getMob2() {
		return mob2;
	}
	public void setMob2(String mob2) {
		this.mob2 = mob2;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Date getDob() {
		return dob;
	}
	public void setDob(Date dob) {
		this.dob = dob;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Locality getLocality() {
		return locality;
	}
	public void setLocality(Locality locality) {
		this.locality = locality;
	}
	
	







	public String getCountryCodeMobile1() {
		return countryCodeMobile1;
	}
	public void setCountryCodeMobile1(String countryCodeMobile1) {
		this.countryCodeMobile1 = countryCodeMobile1;
	}
	public String getCountryCodeMobile2() {
		return countryCodeMobile2;
	}
	public void setCountryCodeMobile2(String countryCodeMobile2) {
		this.countryCodeMobile2 = countryCodeMobile2;
	}









	public Date getLastComingDate() {
		return lastComingDate;
	}
	public void setLastComingDate(Date lastComingDate) {
		this.lastComingDate = lastComingDate;
	}

	@Column
	String lastName;
	@Column
	String fatherName;
	@Column
	String motherName;
	@Column()
	String mob1;
	@Column()
	String mob2;
	@Column
	String email;
	
	@Column(name="dob")
	@Temporal(TemporalType.DATE)
	Date dob;
	
	
	@Column(name="date")
	@Temporal(TemporalType.DATE)
	Date lastComingDate;
	
	
	
	@Column
	String address;
	
	
	@ManyToOne(fetch = FetchType.EAGER)
	@Cascade(value={CascadeType.MERGE, CascadeType.PERSIST})
	@JoinColumn(name="locality")
	private Locality locality;
	
	
	@Column()
	String countryCodeMobile1;
	
	@Column()
	String countryCodeMobile2;

}
