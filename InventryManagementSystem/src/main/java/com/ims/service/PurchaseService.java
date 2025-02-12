package com.ims.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ims.dto.PurchaseDetailsReportDTO;
import com.ims.dto.PurchaseTempDTO;
import com.ims.entity.Purchase;
import com.ims.entity.PurchaseDetails;
import com.ims.entity.PurchaseTemp;
import com.ims.repository.PurchaseDetailsRepo;
import com.ims.repository.PurchaseRepo;
import com.ims.repository.PurchaseTempRepo;

@Service
public class PurchaseService {

	@Autowired
	private PurchaseTempRepo purchaseTempRepo;

	@Autowired
	private PurchaseDetailsRepo purchaseDetailsRepo;

	@Autowired
	private PurchaseRepo purchaseRepo;

	public boolean savePurchaseTemp(PurchaseTemp temp) throws NullPointerException{
		purchaseTempRepo.save(temp);
		return false;
	}
	public PurchaseDetails savePurchaseDetails(PurchaseDetails details) {
		PurchaseDetails save = purchaseDetailsRepo.save(details);
		return save;
	}
	
	// Finding product if already available in purchase temp
	public PurchaseTemp findPurchaseTempById(Integer productId) {
		return purchaseTempRepo.findByProductId(productId);
		
	}
	
	public void savePurchase(Purchase purchase) {
		purchaseRepo.save(purchase);
	}
	
	public List<PurchaseTemp> findPurchaseTempAll() {
		return purchaseTempRepo.findAll();
	}
	
	public List<PurchaseTempDTO> getTempProductWithName() {
		return purchaseTempRepo.getProductWithProductName();
	}
	
	public void deleteTempProductById(Integer productId) {
		purchaseTempRepo.deleteById(productId);
	}
	
	public void deletePurchaseTemp() {
		purchaseTempRepo.deleteAll();
	}
	
	public List<PurchaseDetailsReportDTO> getAllByInvoiceNumber(Long invoice) {
		return purchaseDetailsRepo.findAllByInvoice(invoice);
	}
	
}
