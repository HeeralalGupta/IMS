package com.ims.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.ims.dto.PurchaseTempDTO;
import com.ims.entity.PurchaseTemp;

@Repository
public interface PurchaseTempRepo extends JpaRepository<PurchaseTemp, Integer> {
	
	 @Query("SELECT new com.ims.dto.PurchaseTempDTO(p.id, p.productId, p.rate, p.qty, p.tota, p.status, p.date, pr.name) " +
	           "FROM PurchaseTemp p INNER JOIN Product pr ON p.productId = pr.id")
	public List<PurchaseTempDTO> getProductWithProductName();
	 
	 public PurchaseTemp findByProductId(Integer productId);
}
