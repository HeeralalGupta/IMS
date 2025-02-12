package com.ims.dto;

import java.time.LocalDate;

public class PurchaseDetailsReportDTO {
	private Integer id;
	private Integer productId;
	private double rate;
	private Integer qty;
	private double tota;
	private String status;
	private LocalDate date;
	private String itemName; // Inner Join form product table
	
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
	public String getItemName() {
		return itemName;
	}
	public void setItemName(String itemName) {
		this.itemName = itemName;
	}
	public PurchaseDetailsReportDTO(Integer id, Integer productId, double rate, Integer qty, double tota, String status,
			LocalDate date, String itemName) {
		super();
		this.id = id;
		this.productId = productId;
		this.rate = rate;
		this.qty = qty;
		this.tota = tota;
		this.status = status;
		this.date = date;
		this.itemName = itemName;
	}
	@Override
	public String toString() {
		return "PurchaseDetailsReportDTO [id=" + id + ", productId=" + productId + ", rate=" + rate + ", qty=" + qty
				+ ", tota=" + tota + ", status=" + status + ", date=" + date + ", itemName=" + itemName + "]";
	}
	public PurchaseDetailsReportDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	

}
