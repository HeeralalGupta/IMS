package com.ims.entity;

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
	public Supplier(Long id, String name, String contactPerson, String phoneNumber) {
		super();
		this.id = id;
		this.name = name;
		this.contactPerson = contactPerson;
		this.phoneNumber = phoneNumber;
	}
	public Supplier() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Supplier [id=" + id + ", name=" + name + ", contactPerson=" + contactPerson + ", phoneNumber="
				+ phoneNumber + "]";
	}
	
	
}
