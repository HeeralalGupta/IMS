package com.ims.service;

import java.util.List;
import java.util.NoSuchElementException;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ims.entity.Supplier;
import com.ims.repository.SupplierRepository;

@Service
public class SupplierService {
	
	@Autowired
	private SupplierRepository supplierRepo;
	
	public Supplier saveSupplier(Supplier supplier) {
		return supplierRepo.save(supplier);
	}
	
	public List<Supplier> getSupplierDetails() {
		return supplierRepo.findAll();
	}
	
	public void deleteSupplier(Long id) {
		supplierRepo.deleteById(id);
	}
	
	public Supplier editSupplier(Long supplierId) {
		Optional<Supplier> supplierDetails = supplierRepo.findById(supplierId);
		if(supplierDetails.isPresent()) {
			return supplierDetails.get();
		}else {
			throw new NoSuchElementException("Not Data Found!");
		}
	}
	
	public Supplier updateSupplier(Long supplierId, Supplier supplier) {
		Optional<Supplier> supplierDetails = supplierRepo.findById(supplierId);
		if(supplierDetails.isPresent()) {
			Supplier supplierData = supplierDetails.get();
			supplierData.setName(supplier.getName());
			supplierData.setContactPerson(supplier.getContactPerson());
			supplierData.setPhoneNumber(supplier.getPhoneNumber());
			supplierRepo.save(supplierData);
			return supplierData;
		}else {
			throw new NoSuchElementException("No Data Found");
		}
	}
	
}
