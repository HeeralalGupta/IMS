package com.ims.entity;

import java.time.LocalDate;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "purchase_temp")
public class PurchaseTemp {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
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
	public PurchaseTemp(Integer id, Integer productId, double rate, Integer qty, double tota, String status,
			LocalDate date) {
		super();
		this.id = id;
		this.productId = productId;
		this.rate = rate;
		this.qty = qty;
		this.tota = tota;
		this.status = status;
		this.date = date;
	}
	@Override
	public String toString() {
		return "PurchaseTemp [id=" + id + ", productId=" + productId + ", rate=" + rate + ", qty=" + qty + ", tota="
				+ tota + ", status=" + status + ", date=" + date + "]";
	}
	public PurchaseTemp() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
