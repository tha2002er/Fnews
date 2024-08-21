<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<ul class="sidebar navbar-nav">

  <li class="nav-item">
  						<c:url var="listURL" value="/quan-tri/bai-viet/danh-sach">
  						
						<c:param name="page" value="1"/>
						<c:param name="limit" value="5"/>
						<c:param name="sortBy" value="asc"/>
						<c:param name="sortName" value="title"/>
						
						
					</c:url>
    <a class="nav-link" href="${listURL}">
      <i class="fas fa-fw fa-table"></i>
      <span>Danh sách tin tức</span></a>
  </li>
</ul>