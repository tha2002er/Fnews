<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>

<head>
	<title>
		<dec:title default="Trang chủ" />
	</title>
	<link href="<c:url value='/template/admin/vendor/fontawesome-free/css/all.min.css' />" rel="stylesheet"
		type="text/css">
	<link href="<c:url value='/template/admin/css/sb-admin.css'/>" rel="stylesheet">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	<link rel="stylesheet" href="/template/admin/sweetalert/sweetalert2.min.css"/>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js" ></script>
	 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script type="text/javascript" src="/template/paging/jquery.twbsPagination.js"></script>
</head>

<body id="page-top">
	<!-- header -->
	<%@ include file="/common/admin/header.jsp" %>
	<!-- header -->

	<div id="wrapper">
		<!-- header -->
		<%@ include file="/common/admin/menu.jsp"%>
		<!-- header -->
		<div id="content-wrapper">
			<dec:body />

			<!-- footer -->
			<%@ include file="/common/admin/footer.jsp"%>
			<!-- footer -->
		</div>
	</div>
	<a class="scroll-to-top rounded" href="#page-top">
		<i class="fas fa-angle-up"></i>
	</a>





	<!--JavaScript-->
	
	<script src=" <c:url value='/template/admin/vendor/jquery/jquery.min.js'/>"></script>
	<script src=" <c:url value='/template/admin/vendor/bootstrap/js/bootstrap.bundle.min.js'/>"></script>
	<script src=" <c:url value='/template/admin/vendor/jquery-easing/jquery.easing.min.js'/>"></script>
	<script src=" <c:url value='/template/admin/js/sb-admin.min.js'/>"></script>
	
	 
	
	

</body>

</html>