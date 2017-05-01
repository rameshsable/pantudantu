package com.xanandu.pantudantu.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="servicetax")
public class ServiceTax {

@Id
@GeneratedValue
int id;
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public double getTax() {
	return tax;
}
public void setTax(double tax) {
	this.tax = tax;
}
public int getStatus() {
	return status;
}
public void setStatus(int status) {
	this.status = status;
}
@Column(name="service_tax")
double tax;
int status;

}
