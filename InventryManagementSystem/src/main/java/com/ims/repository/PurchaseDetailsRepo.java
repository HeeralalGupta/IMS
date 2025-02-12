package com.ims.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.ims.dto.PurchaseDetailsReportDTO;
import com.ims.entity.PurchaseDetails;

@Repository
public interface PurchaseDetailsRepo extends JpaRepository<PurchaseDetails, Integer> {
	@Query("SELECT new com.ims.dto.PurchaseDetailsReportDTO(p.id, p.productId, p.rate, p.qty, p.tota, p.status, p.date, pr.name) " +
		       "FROM PurchaseDetails p INNER JOIN Product pr ON p.productId = pr.id " +
		       "WHERE p.invoice = :invoice")
	public List<PurchaseDetailsReportDTO> findAllByInvoice(Long invoice);
}
