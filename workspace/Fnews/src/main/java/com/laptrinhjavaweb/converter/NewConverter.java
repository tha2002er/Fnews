package com.laptrinhjavaweb.converter;

import java.sql.Timestamp;
import java.util.Date;

import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Component;

import com.laptrinhjavaweb.dto.NewDTO;
import com.laptrinhjavaweb.entity.NewEntity;

@Component
public class NewConverter {

	public NewDTO toDto(NewEntity entity) {
		NewDTO result = new NewDTO();
		BeanUtils.copyProperties(entity, result);
		result.setCreatedBy(entity.getCreateBy());
		Date date = entity.getCreatedDate();
		if (date != null) {
			Timestamp timestamp = new Timestamp(date.getTime());
			result.setCreatedDate(timestamp);
		}
		Date date1 = entity.getModifiedDate();
		if (date1 != null) {
			Timestamp timestamp1 = new Timestamp(date1.getTime());
			result.setModifiedDate(timestamp1);
		}
		
		result.setModifiedBy(entity.getModifiedBy());
		result.setCategoryId(entity.getCategory().getId());
		result.setCategoryCode(entity.getCategory().getCode());
		return result;
	}

	public NewEntity toEntity(NewDTO dto) {
		NewEntity result = new NewEntity();
		BeanUtils.copyProperties(dto, result);
		return result;
	}

	public NewEntity toEntity(NewEntity result, NewDTO dto) {
		BeanUtils.copyProperties(dto, result);
		return result;
	}

}
