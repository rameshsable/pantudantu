package com.xanandu.pantudantu.model;

import static javax.persistence.GenerationType.IDENTITY;

import java.awt.Window.Type;
import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.CascadeType;

@Entity
@Table(name="USER")
public class UserModel{

	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "ID", nullable = false)
	private Integer userId;

	@Column(name = "USER_NAME")
	private String userName;

	@Column(name = "PASSWORD")
	private String password;
     
	@Column(name="IS_ACTIVE", nullable  = false ,columnDefinition = "boolean default true")
	boolean active;
	
	@ManyToOne(fetch = FetchType.EAGER)
	@Cascade(value={CascadeType.MERGE, CascadeType.PERSIST})
	@JoinColumn(name="USER_ROLL")
	private RoleModel userRoll;
	
	
	@ManyToOne(fetch =FetchType.EAGER)
	@JoinColumn(name="type")
	private	UserPermissionType userPermissionType;// it defined the access level of user
	
	public UserPermissionType getUserPermissionType() {
		return userPermissionType;
	}





	public void setUserPermissionType(UserPermissionType userPermissionType) {
		this.userPermissionType = userPermissionType;
	}





	public UserModel() {
		// TODO Auto-generated constructor stub
	}
	
	 
	
	
	
	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public RoleModel getUserRoll() {
		return userRoll;
	}

	public void setUserRoll(RoleModel userRoll) {
		this.userRoll = userRoll;
	}


	public boolean isActive() {
		return active;
	}

	public void setActive(boolean active) {
		this.active = active;
	}
   
	
	
	
}

