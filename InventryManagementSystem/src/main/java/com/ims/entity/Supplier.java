package com.ims.entity;

import java.time.LocalDate;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "supplier_details")
public class Supplier {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	private String name;
	private String contactPerson;
	private String phoneNumber;
	private String address;
	private LocalDate date;
	private String status;
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getContactPerson() {
		return contactPerson;
	}
	public void setContactPerson(String contactPerson) {
		this.contactPerson = contactPerson;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public LocalDate getDate() {
		return date;
	}
	public void setDate(LocalDate date) {
		this.date = date;
	}
	
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
	public Supplier(Long id, String name, String contactPerson, String phoneNumber, String address, LocalDate date,
			String status) {
		super();
		this.id = id;
		this.name = name;
		this.contactPerson = contactPerson;
		this.phoneNumber = phoneNumber;
		this.address = address;
		this.date = date;
		this.status = status;
	}
	@Override
	public String toString() {
		return "Supplier [id=" + id + ", name=" + name + ", contactPerson=" + contactPerson + ", phoneNumber="
				+ phoneNumber + ", address=" + address + ", date=" + date + ", status=" + status + "]";
	}
	public Supplier() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
