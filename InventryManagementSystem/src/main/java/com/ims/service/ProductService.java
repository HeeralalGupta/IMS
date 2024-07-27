package com.ims.service;

import java.util.List;
import java.util.NoSuchElementException;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ims.entity.Product;
import com.ims.repository.ProductRepo;

@Service
public class ProductService {
	
	@Autowired
	private ProductRepo productRepository;
	
	public Product createProduct(Product product) {
		return productRepository.save(product);
	}
	public List<Product> getAllProducts(){
		return productRepository.findAll();
	}

    public Product getProductById(Long id) {
        return productRepository.findById(id).orElse(null);
    }
    
    public Product updateProduct(Long id, Product product) {
    	Optional<Product> optional = productRepository.findById(id);
    	if(optional.isPresent()) {
    		Product getProductData = optional.get();
    		getProductData.setName(product.getName());
    		getProductData.setPrice(product.getPrice());
    		getProductData.setQuantity(product.getQuantity());
    		return productRepository.save(getProductData);
    	}else {    		
    		throw new NoSuchElementException("No value present");
    	}    	
    }
    
    public void deleteProduct(Long id) {
        productRepository.deleteById(id);
    }
}
