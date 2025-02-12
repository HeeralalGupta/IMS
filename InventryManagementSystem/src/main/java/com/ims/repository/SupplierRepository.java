package com.ims.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.ims.entity.Supplier;

@Repository
public interface SupplierRepository extends JpaRepository<Supplier, Long> {
	
	@Query("SELECT s.address FROM Supplier s WHERE s.id = :supplierId")
	public String findAddressById(@Param("supplierId") Integer supplierId);
}
