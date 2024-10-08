<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp"%>
<c:url var="newAPI" value="/api/new"/>
<c:url var="listURL" value="/quan-tri/bai-viet/danh-sach"/>					
<c:url var="editURL" value="/quan-tri/bai-viet/chinh-sua"/>
<c:url var="uploadAPI" value="/api/uploadFile"/>


<html>

<head>
	<title>Thêm bài viết mới</title>
</head>

<body>
<div class="main-content">
	<div class="card card-register mx-auto mt-5">
		<form id="formSubmit" enctype="multipart/form-data">
			<div class="card-header" style="display: flex; justify-content: center; align-items: center;"> <b>Thêm bài viết mới
				</b></div>
			<br>
			<div class="form-group">
				<div class="form-row">

					<div class="col-md-6">
						<label for="categoryCode">Thể loại bài viết</label>
						<select class=" form-control" id="categoryCode" name="categoryCode">
								<option value="">--Chọn thể loại--</option>
								<c:forEach var="item" items="${categories}">
									<option value="${item.key}">${item.value}</option>
								</c:forEach>
							
						</select>
					</div>
					<div class="col-md-6">
					<label for="shortDescription">Tên bài viết</label>
						<textarea  class="form-control"  id="title" required="required"name="title" 
							style="height: calc(1.5em + .75rem + 2px);"></textarea>
					</div>
				</div>
			</div>
			<div class="form-group">
				
				
				<div class="col-md-16">
				<label for="thumbnail">Hình đại diện</label>
					<input type="file" class="form-control"  id="fileInput"
						name="fileInput"  required="required"/>
					<input type="hidden" id="thumbnail" name="thumbnail">
				</div>
			</div>
			<div class="form-group">
				<div class="col-md-16">
				<label for="shortDescription">Mô tả ngắn</label>
					<textarea class="form-control" id="shortDescription"  required="required"
						name="shortDescription" ></textarea>
				</div>
			</div>
			<div class="form-group">

				<div class="col-md-16">
				<label for="content">Nội dung</label>
					<textarea  class="form-control"  id="content" name="content" required="required" ></textarea>
				</div>
			</div>
			<div class="form-group" style="display: flex; justify-content: space-evenly; align-items: center;">
				<div class="col-md-16">
					
						<button class="nav-link " 
							style="background-color: #212529; border: 0px; justify-content: center; align-items: center;"
							id="btnCreateNew" title="Thêm mới bài viết" >
							<span style="color: #f8f9fa; ">Thêm bài viết</span>
						</button>
				</div>
				
				<div class="col-md-16">
					<button class="nav-link"
						style="background-color: #d03b49; border: 0px #f8f9fa ; justify-content: center; align-items: center;"
						 title="Hủy">
						<span style="color: #f8f9fa; font-family: -apple-system, BlinkMacSystemFont, " Segoe
							UI";">Hủy</span>
					</button>
				</div>
			</div>
		</form>
	</div>

</div>

<script type="text/javascript">
$('#btnCreateNew').click(function (e) {
	e.preventDefault();
	var fileInput = $('#fileInput')[0].files[0];
	 if (window.FormData) {
		    formdata = new FormData();
		  }
	if (fileInput) {
		formData = new FormData();
		formData.append("file", fileInput);

		// Upload file mp3
		$.ajax({
			url: '${uploadAPI}',
			type: 'POST',
			data: formData,
			processData: false,
			contentType: false,
			success: function(response) {
				// Giả sử response có chứa đường dẫn của file
				var filePath = response.filePath;
				$('#thumbnail').val(filePath); // Set file path to hidden input
				
				// Submit form sau khi upload file thành công
				submitForm();
			},
			error: function() {
				alert('Upload file thất bại!');
			}
		});
	} else {
		alert('Vui lòng chọn file mp3!');
	}
});


function submitForm() {
	var data = {};
    var formData = $('#formSubmit').serializeArray();
    $.each(formData, function (i, v) {
        data[""+v.name+""] = v.value;
    });
    addNew(data)
}



function addNew(data) {
	$.ajax({
	 	url: '${newAPI}',
        type: 'POST',
        contentType: 'application/json',
        data: JSON.stringify(data),
        dataType: 'json',
        success: function (result) {
        	window.location.href = "${editURL}?id="+result.id+"&message=insert_success";
        },
		error:function(error){
			window.location.href =  "${listURL}?page=1&limit=5&sortBy=asc&sortName=title&message=error_system";
		}	
	});
}

</script>
</body>

</html>