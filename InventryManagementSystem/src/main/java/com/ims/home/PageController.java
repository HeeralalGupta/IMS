package com.ims.home;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ims.dto.PurchaseTempDTO;
import com.ims.entity.Product;
import com.ims.entity.Supplier;
import com.ims.service.ProductService;
import com.ims.service.PurchaseService;
import com.ims.service.SupplierService;

import jakarta.servlet.http.HttpSession;

@Controller
public class PageController {
	
	@Autowired
	private ProductService productService;
	
	@Autowired
	private SupplierService supplierService;
	
	@Autowired
	private PurchaseService pruchaseService;
	
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
	@RequestMapping("/purchase")
	public String purchase(Model model) {
		model.addAttribute("title", "Purchase Product");
		model.addAttribute("active", "purchase");
		List<Supplier> supplierList = supplierService.getSupplierDetails();
		model.addAttribute("supplier",supplierList);
		List<Product> productList = productService.getAllProducts();
		model.addAttribute("productList", productList);
		List<PurchaseTempDTO> tempProductWithName = pruchaseService.getTempProductWithName(); // Getting data with inner join DTO class
		model.addAttribute("purchaseTempList", tempProductWithName);
		return "purchase";
	}
	
	@RequestMapping("/sales")
	public String sales(Model model) {
		model.addAttribute("title", "Sales Product");
		model.addAttribute("active", "sales");
		return "sales";
	}
	
	@RequestMapping("/stock")
	public String stock(Model model) {
		model.addAttribute("title", "Stock");
		model.addAttribute("active", "stock");
		return "stock";
	}

	
}
