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

import com.ims.entity.Product;
import com.ims.service.ProductService;

import jakarta.servlet.http.HttpSession;

@Controller
public class ProductController {

	@Autowired
	private ProductService productService;

	@PostMapping("/save-product")
	public String saveProduct(@ModelAttribute Product product, Model model, HttpSession session) {
		Product createProduct = productService.createProduct(product);
		if(createProduct!=null) {
			session.setAttribute("product-add", "added");
		}
		List<Product> products = productService.getAllProducts();
		model.addAttribute("products", products);
		model.addAttribute("active", "save-product");
		return "add-product";
	}

//	@GetMapping("/add-product")
//	public String listProducts(Model model) {
//		List<Product> products = productService.getAllProducts();
//		model.addAttribute("products", products);
//		return "add-product"; // returns products.jsp
//	}

	@PostMapping("/update/{id}")
	public String updateProduct(@ModelAttribute @PathVariable Long id, Product product, Model model, HttpSession session) {
		Product update = productService.updateProduct(id, product);
		if(update!=null) {
			session.setAttribute("updateSuccess", "Update Success");
		}
		model.addAttribute("active", "save-product");
		return "redirect:/add-products"; // returns new-product.jsp
	}

	@PostMapping("/edit")
	public String editProduct(@RequestParam("productId") Long productId, Model model) {
		Product product = productService.getProductById(productId);
		model.addAttribute("product", product);
		return "update-product"; // returns edit-product.jsp
	}

	@GetMapping("/deleteProduct/{productId}")
    public String deleteProduct(@PathVariable Long productId) {
        	System.out.println(productId);
            productService.deleteProduct(productId);
            return "redirect:/add-products"; // It goes to request mapping where add-products has mapped
        
    }
}
