package com.ims.controller;

import java.time.LocalDate;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ims.dto.PurchaseDetailsReportDTO;
import com.ims.entity.Purchase;
import com.ims.entity.PurchaseDetails;
import com.ims.entity.PurchaseTemp;
import com.ims.service.PurchaseService;

import jakarta.servlet.http.HttpSession;

@Controller
public class PurchaseController {

	@Autowired
	private PurchaseService purchaseService;
	
	

	@PostMapping("/cart")
	public String purchase(@ModelAttribute PurchaseTemp temp, HttpSession session) throws NullPointerException {
		PurchaseTemp product = purchaseService.findPurchaseTempById(temp.getProductId());
		
		try {
			if(product == null) {
				temp.setStatus("Active");
				temp.setDate(LocalDate.now());
				purchaseService.savePurchaseTemp(temp);
			}else {
				session.setAttribute("itemExist", "success");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "redirect:/purchase";
	}
	
	@PostMapping("/purchase")
	public String savePurchaseDetails(
	        @RequestParam(value = "invoice", required = false) Long invoice,
	        @RequestParam(value = "date", required = false) LocalDate date,
	        @RequestParam(value = "supplierId", required = false) Integer supplierId,
	        @RequestParam(value = "address", required = false) String address, HttpSession session, Model model) {

	    List<PurchaseTemp> purchaseTempList = purchaseService.findPurchaseTempAll();

	    if (!purchaseTempList.isEmpty()) {
	        for (PurchaseTemp temp : purchaseTempList) {
	            PurchaseDetails purchaseDetails = new PurchaseDetails(); // Create a new object for each iteration
	            purchaseDetails.setProductId(temp.getProductId());
	            purchaseDetails.setQty(temp.getQty());
	            purchaseDetails.setRate(temp.getRate());
	            purchaseDetails.setStatus("Active");
	            purchaseDetails.setTota(temp.getTota()); // Assuming `total` is the correct field name
	            purchaseDetails.setDate(date);
	            purchaseDetails.setInvoice(invoice);
	            
	            purchaseService.savePurchaseDetails(purchaseDetails);
	        }

	        // Create and save the purchase record
	        Purchase purchase = new Purchase();
	        purchase.setInvoice(invoice);
	        purchase.setDate(date);
	        purchase.setSupplierId(supplierId);
	        purchase.setAddress(address);
	        
	        purchaseService.savePurchase(purchase);
	        purchaseService.deletePurchaseTemp(); // Clear temporary records
	        session.setAttribute("successOrder", "success");
	    }else {
	    	session.setAttribute("cartEmpty", "empty");
	    }
	    
	    List<PurchaseDetailsReportDTO> purchaseDetails = purchaseService.getAllByInvoiceNumber(invoice);
	    model.addAttribute("purchaseDetials",purchaseDetails);

	    return "purchase-report";
	}

	@RequestMapping("/delete")
	public String deletePurchaseTemp(@RequestParam("productId") Integer productId) {
	    System.out.println("Deleting product with ID: " + productId);
	    purchaseService.deleteTempProductById(productId);
	    return "redirect:/purchase"; // Redirecting to purchase page
	}
	
	

}
