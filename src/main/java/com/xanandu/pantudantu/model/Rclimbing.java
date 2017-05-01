package com.xanandu.pantudantu.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="rclimbing")
public class Rclimbing {
	
	
	@Id
	@GeneratedValue
	@Column(name="rclimbingId")
	int rclimbingId;
	public int getRclimbingId() {
		return rclimbingId;
	}
	public void setRclimbingId(int rclimbingId) {
		this.rclimbingId = rclimbingId;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	String time;
	double price;
	String type;

}
