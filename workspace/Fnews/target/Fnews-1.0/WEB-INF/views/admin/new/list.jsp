<%@include file="/common/taglib.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<c:url var="newURL" value="/quan-tri/bai-viet/danh-sach"/>
	<c:url var="newAPI" value="/api/new"/>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>Danh sách bài viết</title>
</head>

<body>
<div class="main-content">
	<form  action='<c:url value="/quan-tri/bai-viet/danh-sach?page=${model.page}&limit=${model.limit}&sortName=${model.sortName}&sortBy=${modle.sortBy}"/>' id="formSubmit" method="get">
		
		<div class="navbar navbar-expand navbar-dark static-top">
			<div class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0"></div>
			<ul class="navbar-nav ml-auto ml-md-0">
				<li class="nav-item dropdown no-arrow mx-1">	
					<a class="nav-link dropdown-toggle" data-toggle="tooltip" title='Thêm bài viết'
						href='<c:url value="/quan-tri/bai-viet/them-moi"/>'>
						<i class="fas fa-plus fa-lg fa-fw" style="color: #686d72;"></i>
					</a>

				</li>
				<li class="nav-item dropdown no-arrow mx-1">
					<a type="button" id="btnDelete" onclick="warningBeforDelete()" class="nav-link dropdown-toggle" data-toggle="tooltip" title='Xóa bài viết'
						>
						<i class="fas fa-trash-alt fa-fw fa-lg" style="color: #686d72;"></i>
					</a>
				</li>
			</ul>
		</div>

		<div class="card mb-3">

			<div class="card-body">
				<c:if test="${not empty message}">
					<div class="alert alert-${alert}">
					<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
					${message} 
					</div>
	
			</c:if>
				

				<div class="table-responsive">
				<c:if test="${empty sortSelectProperty}">
				<label>
					<select  id="sortSelectProperty" class="custom-select custom-select-sm form-control form-control-sm">						
					<option value="title"            <c:if test="${model.sortName=='title'}">selected="selected" </c:if>>Tên bài viết</option>
					<option value="createdDate"      <c:if test="${model.sortName=='createdDate'}">selected="selected" </c:if>>Ngày tạo</option>
					<option value="modifiedDate"     <c:if test="${model.sortName=='modifiedDate'}">selected="selected" </c:if>>Ngày sửa</option>
					<option value="shortDescription" <c:if test="${model.sortName=='shortDescription'}">selected="selected" </c:if>>Mô tả ngắn</option>
					
					</select>	
				</label>					
				</c:if>
				
				<c:if test="${empty sortSelectBy}">
				<label>
					<select  id="sortSelectBy" class="custom-select custom-select-sm form-control form-control-sm">	
					<option value="asc" <c:if test="${model.sortBy=='asc'}">selected="selected" </c:if>>Tăng dần</option>					
					<option value="desc"<c:if test="${model.sortBy=='desc'}">selected="selected" </c:if>>Giảm dần</option>			
					</select>	
				</label>				
				</c:if>
				<br>
				<!-- <label>
				
				<button type="button" onclick="find()" class="custom-select-sm form-control form-control-sm" >Lọc</button>
				</label> -->
				
				
					<table class="table table-bordered" width="100%" cellspacing="0">
						<thead>
							<tr>
								<th> <input type="checkbox" id="checkAll"></th>
								<th>Tên bài viết</th>
								<th>Mô tả ngắn</th>
								<th>Ngày tạo</th>
								<th>Ngày sửa</th>
								<th>Thao tác</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="item" items="${model.listResult}">
								<tr>
									<td> <input type="checkbox" id="checkbox_${item.id}" value="${item.id}" ></td>
									<td>${item.title}</td>
									<td>${item.shortDescription}</td>
									<td>${item.createdDate}</td>
									<td>${item.modifiedDate}</td>
									<td>
									<c:url var="updateNewURL" value="/quan-tri/bai-viet/chinh-sua">
									<c:param name="id" value="${item.id}"/>
									</c:url>
										<a id="btnDelete" class="nav-link" data-toggle="tooltip"
											title='chỉnh sửa bài viết'
											href='${updateNewURL}'>
											<i class="fas fa-pen fa-fw fa-lg " style="color: #686d72;"></i>
										</a>
									</td>

								</tr>
							</c:forEach>

						</tbody>
					</table>



					
					
				</div>
			</div>

		</div>
		<div class="nav-link " style=" justify-content: center; align-items: center;">
			<ul class="pagination " id="pagination" style="justify-content: center; align-items: center;"></ul>
		</div>
		<input type="hidden" value="" id="page" name="page" />
		<input type="hidden" value="" id="limit" name="limit" />
		<input type="hidden" value="" id="sortBy" name="sortBy" />
		<input type="hidden" value="" id="sortName" name="sortName" />
		
	</form>

</div>
	<!-- /.main-content -->
<script type="text/javascript">
const sortSelectProperty = document.getElementById('sortSelectProperty');
const sortSelectBy       = document.getElementById('sortSelectBy');
var totalPage = ${model.totalPage};
var currentPage = ${model.page};
var limit = 5;

$('#pagination').twbsPagination({
	totalPages: totalPage,
	visiblePages: 10,
	startPage: currentPage,
	onPageClick: function (event, page) {
		if (currentPage != page) {
			$('#limit').val(limit);
			$('#page').val(page);
			$('#sortName').val(sortSelectProperty.value);
			$('#sortBy').val(sortSelectBy.value);
			$('#formSubmit').submit();
		}
	}
});


function warningBeforDelete(){
	var idcheck = $('tbody input[type=checkbox]:checked').map(function(){
		return $(this).val();
	}).get();
	if(idcheck.length>0){
		swal({
			  title: "Xác nhận xóa?",
			  text: "Bạn chắc chắn muốn xóa!",
			  icon: "warning",
			  buttons: true,
			  dangerMode: true,
			})
			.then((willDelete) => {
			  if (willDelete) {
					var ids = $('tbody input[type=checkbox]:checked').map(function(){
						return $(this).val();
					}).get();
					deleteNew(ids);
			    	swal("bài viết đã được xóa!", {
			      	icon: "success",
			    });
			  } else {
			    swal("bài viết được giữ lại!");
			  }
			});
		
	}else{
		swal("Vui lòng chọn bài viết cần xóa!");
	}
	
	
}
function deleteNew(data) {
	$.ajax({
		url:'${newAPI}',
		type:'DELETE',
		contentType:'application/json',
		data:JSON.stringify(data),
		success:function(result){
			window.location.href =  "${newURL}?page=1&limit=5&sortBy=asc&sortName=title&message=delete_success";
			
		},
		error:function(error){
			window.location.href =  "${newURL}?page=1&limit=5&sortBy=asc&sortName=title&message=error_system";
		}	
	});
}
	
</script>

</body>

</html>