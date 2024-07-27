package com.ims.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ims.entity.Supplier;
import com.ims.service.SupplierService;

import jakarta.servlet.http.HttpSession;

@Controller
public class SupplierController {
	
	@Autowired
	private SupplierService supplierService;
	
	@PostMapping("/save-supplier")
	public String saveSupplier(@ModelAttribute Supplier supplier, HttpSession session, Model model) {
		Supplier supplierDetials = supplierService.saveSupplier(supplier);
		if(supplierDetials!=null) {
			System.out.println("Supplier Added");
			session.setAttribute("supplierAddedSuccess", supplierDetials);
		}
		List<Supplier> supplierDetails = supplierService.getSupplierDetails();
		model.addAttribute("suppliers", supplierDetails);
		model.addAttribute("active", "add-supplier");
		return "add-supplier";
	}
	
	@GetMapping("/deleteSupplier/{supplierId}")
	public String deleteSupplier(@PathVariable Long supplierId) {
		supplierService.deleteSupplier(supplierId);
		return "redirect:/add-supplier";
	}
	
	@PostMapping("/edit-supplier")
	public String edit(@RequestParam Long supplierId, Model model) {
		Supplier supplier = supplierService.editSupplier(supplierId);
		model.addAttribute("supplier", supplier);
		return "update-supplier";
	}
	
	@PostMapping("/update-supplier/{supplierId}")
	public String updateSupplier(@ModelAttribute @PathVariable Long supplierId, Supplier supplier, HttpSession session) {
		Supplier updateSupplier = supplierService.updateSupplier(supplierId, supplier);
		if(updateSupplier!=null) {
			session.setAttribute("updateSuccess", updateSupplier);
		}
		return "redirect:/add-supplier";
		
	}
	
}
