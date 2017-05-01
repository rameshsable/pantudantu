package com.xanandu.pantudantu.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class games {
	
	@Id
	int gid;
	public int getGid() {
		return gid;
	}
	public void setGid(int gid) {
		this.gid = gid;
	}
	public String getGname() {
		return gname;
	}
	public void setGname(String gname) {
		this.gname = gname;
	}
	String gname;

}
