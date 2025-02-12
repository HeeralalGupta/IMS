package com.ims.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.ims.entity.Purchase;

@Repository
public interface PurchaseRepo extends JpaRepository<Purchase, Integer> {

}
