package com.ims.entity;

import java.time.LocalDate;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "purchase")
public class Purchase {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	private Long invoice;
	private LocalDate date;
	private Integer supplierId;
	private String address;
	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Long getInvoice() {
		return invoice;
	}

	public void setInvoice(Long invoice) {
		this.invoice = invoice;
	}

	public LocalDate getDate() {
		return date;
	}

	public void setDate(LocalDate date) {
		this.date = date;
	}

	public Integer getSupplierId() {
		return supplierId;
	}

	public void setSupplierId(Integer supplierId) {
		this.supplierId = supplierId;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Purchase(Integer id, Long invoice, LocalDate date, Integer supplierId, String address) {
		super();
		this.id = id;
		this.invoice = invoice;
		this.date = date;
		this.supplierId = supplierId;
		this.address = address;
	}

	@Override
	public String toString() {
		return "Purchase [id=" + id + ", invoice=" + invoice + ", date=" + date + ", supplierId=" + supplierId
				+ ", address=" + address + "]";
	}

	public Purchase() {
		super();
		// TODO Auto-generated constructor stub
	}	
	
	
}
