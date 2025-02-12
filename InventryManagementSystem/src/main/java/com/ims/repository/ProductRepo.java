package com.ims.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.ims.entity.Product;

@Repository
public interface ProductRepo extends JpaRepository<Product, Long> {
	
	@Query("SELECT s.price FROM Product s WHERE s.id = :productId")
	public Double findRateById(@Param("productId") Integer productId);
}
