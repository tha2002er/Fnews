<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp"%>
<c:url var="newAPI" value="/api/new"/>
<c:url var="newURL" value="/quan-tri/bai-viet/danh-sach"/>
<c:url var="editURL" value="/quan-tri/bai-viet/chinh-sua"/>						
<html>

<head>
	<title>Chỉnh sửa bài viết</title>
</head>

<body>
<div class="main-content">
	<div class="card card-register mx-auto mt-5">
	<c:if test="${not empty message}">
	<div class="alert alert-${alert}">
	<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
			${message} 
	</div>
	
	</c:if>
	
		<form:form id="formSubmit" role="form"  modelAttribute="model">
			<div class="card-header" style="display: flex; justify-content: center; align-items: center;"> <b>Chỉnh
						sửa bài viết
				</b></div>
			<br>
		<div class="form-group">
			<div class="form-row">

					<div class="col-md-6">
						<label for="categoryCode" >Thể lọai bài viết</label>
						<form:select cssClass="form-control" path="categoryCode" id="categoryCode" >
						<form:option value="" label="--Chọn thể loại--"/>
						<form:options items="${categories}"/>
						</form:select>
					</div>
					<div class="col-md-6">
					<label for="title" >Tên bài viết</label>
							<form:input type="text"  path="title" placeholder="Tên bài viết"  id="title"  required="required" cssClass="form-control" style="height: calc(1.5em + .75rem + 2px);" />	
					
					</div>
				</div>
			</div>
			<div class="form-group">
				<div class="col-md-16">
				<label for="thumbnail" >Ảnh đại diện</label>
					<form:input path="thumbnail"  id="thumbnail" type="file" cssClass="form-control"  required="required" />
				</div>
			</div>

			<div class="form-group">
				<div class="col-md-16">	
				<label for="shortDescription" >Mô tả ngắn</label>
						<form:textarea path="shortDescription" id="shortDescription"  class="form-control" placeholder="Mô tả ngắn"  required="required"/>
				</div>

			</div>
			<div class="form-group">

				<div class="col-md-16">
				<label for="content" >Nội dung</label>
						<form:textarea path="content" id="content"  class="form-control" placeholder="Nội dung"  required="required"/>
				</div>
			</div>
			<div class="form-group" style="display: flex; justify-content: space-evenly; align-items: center;">
				<div class="col-md-16">
						<button class="nav-link btn-primary"
							style="background-color: #212529; border: 0px; justify-content: center; align-items: center;"
							id="btnUpdateNew"  title="Chỉnh sửa bài viết">
							<span style="color: #f8f9fa; font-family: -apple-system, BlinkMacSystemFont, " Segoe
								UI";">Chỉnh sửa</span>
						</button>						
				</div>

				<!-- <div class="col-md-16">
					<button class="nav-link "
						style="background-color: #d03b49; border: 0px #f8f9fa ; justify-content: center; align-items: center;"
						id="" data-toggle="tooltip" title="Hủy">
						<span style="color: #f8f9fa; font-family: -apple-system, BlinkMacSystemFont, " Segoe
							UI";">Hủy</span>
					</button>
				</div> -->


			</div>
			<form:hidden path="id" id="newId" />
		</form:form>
	</div>

</div>

<!--  -->
<script type="text/javascript">
$('#btnUpdateNew').click(function (e) {
    e.preventDefault();
    var data = {};
    var formData = $('#formSubmit').serializeArray();
    $.each(formData, function (i, v) {
        data[""+v.name+""] = v.value;
    });
    editNew(data);
});

function editNew(data) {
	$.ajax({
		url:'${newAPI}',
		type:'PUT',
		contentType:'application/json',
		data:JSON.stringify(data),
		dataType:'json',
		success:function(result){
			window.location.href =  "${editURL}?id="+result.id+"&message=update_success";
		},
		error:function(error){
			window.location.href =  "${editURL}?id="+result.id+"&message=error_system";
		}	
	});
	
}
</script>
</body>
</html>