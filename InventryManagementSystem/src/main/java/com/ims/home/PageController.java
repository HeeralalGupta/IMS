package com.ims.home;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.ims.entity.Product;
import com.ims.entity.Supplier;
import com.ims.service.ProductService;
import com.ims.service.SupplierService;

import jakarta.servlet.http.HttpSession;

@Controller
public class PageController {
	
	@Autowired
	private ProductService productService;
	
	@Autowired
	private SupplierService supplierService;
	
	@GetMapping("/")
	public String homePage(Model model) {
		model.addAttribute("title", "Dashboard");
		model.addAttribute("active", "dashboard");
		List<Product> products = productService.getAllProducts();
		model.addAttribute("products", products);
		return "index";
	}
	
	// Adding and showing all products
	@GetMapping("/add-products")
	public String addProducts(Model model) {
		model.addAttribute("title", "Add Products");
		model.addAttribute("active", "add-product");
		List<Product> products = productService.getAllProducts();
		model.addAttribute("products", products);
		return "add-product";
	}
	@GetMapping("/add-supplier")
	public String addSupplier(Model model) {
		model.addAttribute("title", "Add Supplier");
		model.addAttribute("active", "add-supplier");
		List<Supplier> supplierDetails = supplierService.getSupplierDetails();
		model.addAttribute("suppliers", supplierDetails);
		return "add-supplier";
	}
	@GetMapping("/edit-product")
	public String editProduct(Model model, HttpSession session) {
		Object attribute = model.getAttribute("product");
		model.addAttribute("product",attribute);
		model.addAttribute("title", "Update Product");
		model.addAttribute("active", "edit-product");
		return "update-product";
	}
	
	
	
}
