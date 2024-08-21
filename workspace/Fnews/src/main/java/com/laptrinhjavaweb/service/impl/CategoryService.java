package com.laptrinhjavaweb.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.laptrinhjavaweb.entity.CategoryEntity;
import com.laptrinhjavaweb.repository.CategoryResponsitory;
import com.laptrinhjavaweb.service.ICategoryService;

@Service
public class CategoryService implements ICategoryService {

	
	
	
	@Autowired
	private CategoryResponsitory categoryResponsitory;

	@Override
	public Map<String, String> FindAll() {
		Map<String, String> result = new HashMap<>();
		List<CategoryEntity> entities = categoryResponsitory.findAll();

		for (CategoryEntity entity : entities) {
			result.put(entity.getCode(), entity.getName());
		}
		return result;
	}

	
	

	
	

}
