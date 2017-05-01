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

import org.springframework.stereotype.Controller;

@Entity
@Table(name="permission")
public class Permission {
	
	@Id
	@GeneratedValue
	int permission_id;



	@ManyToOne(fetch =FetchType.EAGER)
	@JoinColumn(name="userId",nullable=false)
	UserModel user;
	
	@Column(name="type")
	int type;
	
	public int getPermission_id() {
		return permission_id;
	}

	public void setPermission_id(int permission_id) {
		this.permission_id = permission_id;
	}

	public UserModel getUser() {
		return user;
	}

	public void setUser(UserModel user) {
		this.user = user;
	}

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}
	

}


