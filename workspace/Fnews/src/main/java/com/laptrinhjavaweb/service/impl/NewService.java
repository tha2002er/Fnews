package com.laptrinhjavaweb.service.impl;

import java.util.ArrayList;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.laptrinhjavaweb.converter.NewConverter;
import com.laptrinhjavaweb.dto.NewDTO;
import com.laptrinhjavaweb.entity.NewEntity;
import com.laptrinhjavaweb.repository.CategoryResponsitory;
import com.laptrinhjavaweb.repository.NewRepository;
import com.laptrinhjavaweb.service.INewService;

@Service
public class NewService implements INewService {

	@Autowired
	private NewRepository newRepository;

	@Autowired
	private NewConverter newConverter;

	@Autowired
	private CategoryResponsitory categoryResponsitory;

	@Override
	public List<NewDTO> findAll(Pageable pageable) {
		List<NewDTO> newDTOs = new ArrayList<>();
		List<NewEntity> entities = newRepository.findAll(pageable).getContent();
		for (NewEntity item : entities) {
			NewDTO dto = newConverter.toDto(item);
			newDTOs.add(dto);
		}
		return newDTOs;
	}

	@Override
	public int gettotalItem() {
		return (int) newRepository.count();
	}

	@Override
	public NewDTO findById(long id) {
		NewEntity entity = newRepository.findOne(id);
		return newConverter.toDto(entity);
	}

	@Override
	@Transactional
	public void delete(long[] ids) {
		for(long i : ids) {
			newRepository.delete(i);
		}
	}

	
	@Override
	@Transactional
	public NewDTO save(NewDTO dto) {
		NewEntity result = new NewEntity();
		if(dto.getId()!=null) {
			result = newRepository.findOne(dto.getId());
			result = newConverter.toEntity(result, dto);
		}else {
			result = newConverter.toEntity(dto);
		}
		result.setCategory(categoryResponsitory.findOneByCode(dto.getCategoryCode()));
		return newConverter.toDto(newRepository.save(result));
	}

}
