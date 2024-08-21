package com.laptrinhjavaweb.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.laptrinhjavaweb.entity.CategoryEntity;

public interface CategoryResponsitory extends JpaRepository<CategoryEntity, Long> {
	
	CategoryEntity findOneByCode(String code);

}
