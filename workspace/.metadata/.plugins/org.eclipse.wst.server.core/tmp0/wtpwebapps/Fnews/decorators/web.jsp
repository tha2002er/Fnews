<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>



<head>
	<title>
		<dec:title default="Trang chủ" />
	</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!--===============================================================================================-->
	<link href="<c:url value='/template/web/images/icons/f.png'/>" rel="icon" type="image/png" />
	<!--===============================================================================================-->
	<link href=" <c:url value="/template/web/vendor/bootstrap/css/bootstrap.min.css"/>" rel="stylesheet"
		type="text/css" />
	<!--===============================================================================================-->
	<link href=" <c:url value='/template/web/fonts/fontawesome-5 .0.8/css/fontawesome-all.min.css'/>" rel="stylesheet"
		type="text/css" />
	<!--===============================================================================================-->
	<link href=" <c:url value='/template/web/fonts/iconic/css/material-design-iconic-font.min.css'/>" rel="stylesheet"
		type="text/css" />
	<!--===============================================================================================-->
	<link href=" <c:url value='/template/web/vendor/animate/animate.css" rel="stylesheet' />" type="text/css" />
	<!--===============================================================================================-->
	<link href=" <c:url value='/template/web/vendor/css-hamburgers/hamburgers.min.css" rel="stylesheet' />"
		type="text/css" />
	<!--===============================================================================================-->
	<link href=" <c:url value='/template/web/vendor/animsition/css/animsition.min.css" rel="stylesheet' />"
		type="text/css" />
	<!--===============================================================================================-->
	<link href="<c:url value='/template/web/css/util.min.css" rel="stylesheet' />" type="text/css" />
	<!--===============================================================================================-->
	<link href="<c:url value='/template/web/css/main.css" rel="stylesheet' />" type="text/css" />
	<!--===============================================================================================-->
	<script src="/template/paging/jquery.twbsPagination.js"></script>

</head>

<body>
	<!-- Header -->
	<%@ include file="/common/web/header.jsp"%>
	<!-- Header -->
	<dec:body/>
	<!-- Footer -->
	<%@ include file="/common/web/footer.jsp"%>
	<!-- Footer -->

	<!--===============================================================================================-->
	<script src='<c:url value="/template/web/vendor/jquery/jquery-3.2.1.min.js" />'></script>
	<!--===============================================================================================-->
	<script src=" <c:url value='/template/web/vendor/animsition/js/animsition.min.js' />"></script>
	<!--===============================================================================================-->
	<script src="<c:url value='/template/web/vendor/bootstrap/js/popper.js' />"></script>
	<script src="<c:url value='/template/web/vendor/bootstrap/js/bootstrap.min.js' />"></script>
	<!--===============================================================================================-->
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src="<c:url value='/template/web/js/main.js' />"></script>

</body>

</html>