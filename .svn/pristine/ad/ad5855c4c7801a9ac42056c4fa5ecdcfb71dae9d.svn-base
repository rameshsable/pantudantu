package com.xanandu.pantudantu.model;

import static javax.persistence.GenerationType.IDENTITY;

import java.io.Serializable;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.CascadeType;

@Entity
@Table(name="feedback")
public class FeedModel {

	
	
	@Id
	@GeneratedValue(strategy=IDENTITY)
	@Column(name = "feedid", nullable = false)
	private int feedid;
	
	@Column(name = "custname")
	private String custname;

	@Column(name = "email")
	private String email;

	@Column(name = "mobno")
	private String mobno;
     
	@Column(name = "feedback")
	private String feedback;
	
	@Column(name = "respons")
	private String resp;
	
	@Column(name = "date")
	private String dat;

		
	
	public String getCustname() {
		return custname;
	}

	public void setCustname(String custname) {
		this.custname = custname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMobno() {
		return mobno;
	}

	public void setMobno(String mobno) {
		this.mobno = mobno;
	}

	public String getFeedback() {
		return feedback;
	}

	public void setFeedback(String feedback) {
		this.feedback = feedback;
	}

	public Integer getFeedid() {
	    return feedid;
	}

	public void setFeedid(Integer feedid) {
	    this.feedid = feedid;
	}
	
	public String getDat() {
		return dat;
	}

	public void setDat(String dat) {
		this.dat = dat;
	}
	
	public String getResp() {
		return resp;
	}

	public void setResp(String resp) {
		this.resp = resp;
	}
	
	
	}
