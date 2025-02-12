package com.ims.entity;

import java.time.LocalDate;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "purchase_detials")
public class PurchaseDetails {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	private Long invoice;
	private Integer productId;
	private double rate;
	private Integer qty;
	private double tota;
	private String status;
	private LocalDate date;
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
	public Integer getProductId() {
		return productId;
	}
	public void setProductId(Integer productId) {
		this.productId = productId;
	}
	public double getRate() {
		return rate;
	}
	public void setRate(double rate) {
		this.rate = rate;
	}
	public Integer getQty() {
		return qty;
	}
	public void setQty(Integer qty) {
		this.qty = qty;
	}
	public double getTota() {
		return tota;
	}
	public void setTota(double tota) {
		this.tota = tota;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public LocalDate getDate() {
		return date;
	}
	public void setDate(LocalDate date) {
		this.date = date;
	}
	public PurchaseDetails(Integer id, Long invoice, Integer productId, double rate, Integer qty, double tota,
			String status, LocalDate date) {
		super();
		this.id = id;
		this.invoice = invoice;
		this.productId = productId;
		this.rate = rate;
		this.qty = qty;
		this.tota = tota;
		this.status = status;
		this.date = date;
	}
	@Override
	public String toString() {
		return "PurchaseDetials [id=" + id + ", invoice=" + invoice + ", productId=" + productId + ", rate=" + rate
				+ ", qty=" + qty + ", tota=" + tota + ", status=" + status + ", date=" + date + "]";
	}
	public PurchaseDetails() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
