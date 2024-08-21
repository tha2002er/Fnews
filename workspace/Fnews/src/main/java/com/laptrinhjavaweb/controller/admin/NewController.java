package com.laptrinhjavaweb.controller.admin;

import java.util.Map;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.laptrinhjavaweb.dto.NewDTO;
import com.laptrinhjavaweb.service.ICategoryService;
import com.laptrinhjavaweb.service.INewService;
import com.laptrinhjavaweb.util.MessageUtil;

@Controller(value = "newControllerOfAdmin")
public class NewController {

	@Autowired
	private INewService newService;

	@Autowired
	private ICategoryService categoryService;
	@Autowired
	private MessageUtil messageUtil;

	@RequestMapping(value = "/quan-tri/bai-viet/danh-sach", method = RequestMethod.GET)
	public ModelAndView showList(@RequestParam("page") int page, @RequestParam("limit") int limit,
			@RequestParam String sortBy, @RequestParam String sortName, HttpServletRequest request) {
		NewDTO model = new NewDTO();
		model.setPage(page);
		model.setLimit(limit);
		model.setSortBy(sortBy);
		model.setSortName(sortName);
		ModelAndView mav = new ModelAndView("admin/new/list");
		Pageable pageable = new PageRequest(page - 1, limit,
				new Sort(Sort.Direction.fromString(model.getSortBy()), model.getSortName()));
		model.setListResult(newService.findAll(pageable));
		model.setTotalItem(newService.gettotalItem());
		model.setTotalPage((int) Math.ceil((double) model.getTotalItem() / model.getLimit()));

		if (request.getParameter("message") != null) {
			Map<String, String> message = messageUtil.getMessage(request.getParameter("message"));
			mav.addObject("message", message.get("message"));
			mav.addObject("alert", message.get("alert"));
		}
		mav.addObject("model", model);
		return mav;
	}

	@RequestMapping(value = "/quan-tri/bai-viet/chinh-sua", method = RequestMethod.GET)
	public ModelAndView editNew(@RequestParam("id") Long id, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("admin/new/edit");
		NewDTO model = new NewDTO();
		Map<String, String> category = categoryService.FindAll();
		model = newService.findById(id);
		if (request.getParameter("message") != null) {
			Map<String, String> message = messageUtil.getMessage(request.getParameter("message"));
			mav.addObject("message", message.get("message"));
			mav.addObject("alert", message.get("alert"));
		}
		mav.addObject("model", model);
		mav.addObject("categories", category);
		return mav;
	}

	@RequestMapping(value = "/quan-tri/bai-viet/them-moi", method = RequestMethod.GET)
	public ModelAndView addNew() {
		ModelAndView mav = new ModelAndView("admin/new/add");
		NewDTO model = new NewDTO();
		mav.addObject("model", model);
		Map<String, String> category = categoryService.FindAll();
		mav.addObject("categories", category);
		return mav;
	}

}
