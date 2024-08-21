package com.laptrinhjavaweb.util;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Component;

@Component
public class MessageUtil {

	public Map<String, String> getMessage(String massage){
		Map<String, String> result = new HashMap<>();
		if(massage.equals("update_success")) {
			result.put("message", "Update success");
			result.put("alert", "success");
		}else if(massage.equals("insert_success")) {
			result.put("message", "Insert success");
			result.put("alert", "success");
		}else if(massage.equals("error_system")) {
			result.put("message", "Error System");
			result.put("alert", "danger");
		}else if(massage.equals("delete_success")) {
			result.put("message", "Delete success");
			result.put("alert", "success");
		}
		
		return result;
 	}
}
