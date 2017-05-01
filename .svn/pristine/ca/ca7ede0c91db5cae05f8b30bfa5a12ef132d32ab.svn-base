package com.xanandu.pantudantu.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="rock")
public class Rock {

	@Id
	@GeneratedValue
	@Column(name="attempId")
	int attempId;
	public int getAttempId() {
		return attempId;
	}
	public void setAttempId(int attempId) {
		this.attempId = attempId;
	}
	public int getAttempts() {
		return attempts;
	}
	public void setAttempts(int attempts) {
		this.attempts = attempts;
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
	int attempts;
	double price;
	String type;
}
