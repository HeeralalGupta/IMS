package com.ims.entity;

import java.time.LocalDate;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "purchase_detials")
public class Purchase {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@ManyToOne
	@JoinColumn(name = "product_id")
	private Product product;
	
	@ManyToOne
	@JoinColumn(name = "supplier_id")
	private Supplier supplier;
	
	private int quantity;
	
	private double unitPrice;
	
	private LocalDate purchaseDate;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public Supplier getSupplier() {
		return supplier;
	}

	public void setSupplier(Supplier supplier) {
		this.supplier = supplier;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public double getUnitPrice() {
		return unitPrice;
	}

	public void setUnitPrice(double unitPrice) {
		this.unitPrice = unitPrice;
	}

	public LocalDate getPurchaseDate() {
		return purchaseDate;
	}

	public void setPurchaseDate(LocalDate purchaseDate) {
		this.purchaseDate = purchaseDate;
	}

	public Purchase() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Purchase(Long id, Product product, Supplier supplier, int quantity, double unitPrice,
			LocalDate purchaseDate) {
		super();
		this.id = id;
		this.product = product;
		this.supplier = supplier;
		this.quantity = quantity;
		this.unitPrice = unitPrice;
		this.purchaseDate = purchaseDate;
	}

	@Override
	public String toString() {
		return "Purchase [id=" + id + ", product=" + product + ", supplier=" + supplier + ", quantity=" + quantity
				+ ", unitPrice=" + unitPrice + ", purchaseDate=" + purchaseDate + "]";
	}
	
	
}
