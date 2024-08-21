<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<%@ page import="com.laptrinhjavaweb.util.SecurityUtils" %>
<header>
	<!-- Header desktop -->
	<div class="container-menu-desktop">
		<div class="topbar">
			<div class="content-topbar container h-40">
				<div class="left-topbar">
					<span class="left-topbar-item flex-wr-s-c">
						<span>
							Hà Nội 
						</span>

						<img class="m-b-1 m-rl-8" src="/template/web/images/icons/sun.png" alt="IMG">

						<span>
							35°C 
						</span>
					</span>

					<a href="#" class="left-topbar-item">
						Giới thiệu
					</a>

					<a href="#" class="left-topbar-item">
						Liên hệ
					</a>
					<security:authorize access="isAnonymous()">

						<a href="#" class="left-topbar-item">
							Đăng ký
						</a>

						<a href='<c:url value="/dang-nhap" />' class="left-topbar-item">
							Đăng nhập
						</a>
					</security:authorize>

					<security:authorize access="isAuthenticated()">

						<a href="#" class="left-topbar-item">
							<%=SecurityUtils.getPrincipal().getFullName()%>
						</a>
						<a href='<c:url value="/thoat"/>' class="left-topbar-item">
							Đăng xuất
						</a>

					</security:authorize>

				</div>

				<div class="right-topbar">
					<a href="#">
						<span class="fab fa-facebook-f"></span>
					</a>

					<a href="#">
						<span class="fab fa-twitter"></span>
					</a>

					<a href="#">
						<span class="fab fa-pinterest-p"></span>
					</a>

					<a href="#">
						<span class="fab fa-vimeo-v"></span>
					</a>

					<a href="#">
						<span class="fab fa-youtube"></span>
					</a>
				</div>
			</div>
		</div>

		<!-- Header Mobile -->
		<div class="wrap-header-mobile">
			<!-- Logo moblie -->
			<div class="logo-mobile">
				<a href="#"><img src="/template/web/images/icons/logo.png" alt="IMG-LOGO"></a>
			</div>

			<!-- Button show menu -->
			<div class="btn-show-menu-mobile hamburger hamburger--squeeze m-r--8">
				<span class="hamburger-box">
					<span class="hamburger-inner"></span>
				</span>
			</div>
		</div>

		<!-- Menu Mobile -->
		<div class="menu-mobile">
			<ul class="topbar-mobile">
				<li class="left-topbar">
					<span class="left-topbar-item flex-wr-s-c">
						<span>
							Hà Nội
						</span>

						<img class="m-b-1 m-rl-8" src="/template/web/images/icons/icon-night.png" alt="IMG">

						<span>
							35°C
						</span>
					</span>
				</li>

				<li class="left-topbar">
					<a href="#" class="left-topbar-item">
						About
					</a>

					<a href="#" class="left-topbar-item">
						Contact
					</a>

					<security:authorize access="isAnonymous()">

						<a href="#" class="left-topbar-item">
							Đăng ký
						</a>

						<a href='<c:url value="/dang-nhap" />' class="left-topbar-item">
							Đăng nhập
						</a>
					</security:authorize>


					<security:authorize access="isAuthenticated()">

						<a href="#" class="left-topbar-item">
							Wellcome <%=SecurityUtils.getPrincipal().getFullName() %>
						</a>

						<a href='<c:url value="/thoat"/>' class="left-topbar-item">
							Đăng xuất
						</a>

					</security:authorize>


				</li>

				<li class="right-topbar">
					<a href="#">
						<span class="fab fa-facebook-f"></span>
					</a>

					<a href="#">
						<span class="fab fa-twitter"></span>
					</a>

					<a href="#">
						<span class="fab fa-pinterest-p"></span>
					</a>

					<a href="#">
						<span class="fab fa-vimeo-v"></span>
					</a>

					<a href="#">
						<span class="fab fa-youtube"></span>
					</a>
				</li>
			</ul>

			<ul class="main-menu-m">
				<li>
					<a href="#">Trang chủ</a>
					<ul class="sub-menu-m">
						<!-- <li><a href="#">Homepage v1</a></li>
						<li><a href="#">Homepage v2</a></li>
						<li><a href="#">Homepage v3</a></li> -->
					</ul>

					<span class="arrow-main-menu-m">
						<i class="fa fa-angle-right" aria-hidden="true"></i>
					</span>
				</li>

				<li>
					<a href="$">Tin tức</a>
				</li>

				<li>
					<a href="#"></a>
				</li>

				<li>
					<a href="#">Business</a>
				</li>

				<li>
					<a href="#">Travel</a>
				</li>

				<li>
					<a href="#">Life Style</a>
				</li>

				<li>
					<a href="#">Video</a>
				</li>

				<li>
					<a href="#">Featured News</a>
					<ul class="sub-menu-m">
						<!-- <li><a href="#">Category Page v1</a></li>
						<li><a href="#">Category Page v2</a></li>
						<li><a href="#">Blog Grid Sidebar</a></li>
						<li><a href="#">Blog List Sidebar v1</a></li>
						<li><a href="#">Blog List Sidebar v2</a></li>
						<li><a href="#">Blog Detail Sidebar</a></li>
						<li><a href="#">Blog Detail No Sidebar</a></li>
						<li><a href="#">About Us</a></li>
						<li><a href="#">Contact Us</a></li> -->
					</ul>

					<span class="arrow-main-menu-m">
						<i class="fa fa-angle-right" aria-hidden="true"></i>
					</span>
				</li>
			</ul>
		</div>

		<!--  -->
		<div class="wrap-logo no-banner container">
			<!-- Logo desktop -->
			<div class="logo">
				<a href="#"><img src="/template/web/images/icons/Fnews.png" alt="LOGO"></a>
			</div>
		</div>

		<!--  -->
		<div class="wrap-main-nav">
			<div class="main-nav">
				<!-- Menu desktop -->
				<nav class="menu-desktop">
					<a class="logo-stick" href="#">
						<img src="template/web/images/icons/logo-01.png" alt="LOGO">
					</a>

					<ul class="main-menu justify-content-center">
						<li class="main-menu-active">
							<a href="#">Trang chủ</a>
							<ul class="sub-menu">
								<!-- <li><a href="#">Homepage v1</a></li>
								<li><a href="#">Homepage v2</a></li>
								<li><a href="#">Homepage v3</a></li> -->
							</ul>
						</li>

						<li class="mega-menu-item">
							<a href="#">Tin Tức</a>
							<div class="sub-mega-menu">
								<div class="nav flex-column nav-pills" role="tablist">
									<a class="nav-link" data-toggle="pill" href="#news-1" role="tab">Thể thao</a>
									<a class="nav-link" data-toggle="pill" href="#news-2" role="tab">Chính trị</a>
									<a class="nav-link" data-toggle="pill" href="#news-3" role="tab">Thời sự</a>
									<a class="nav-link" data-toggle="pill" href="#news-4" role="tab">Thế giới</a>
									<a class="nav-link" data-toggle="pill" href="#news-5" role="tab">Góc nhìn</a>
								</div>

								<!-- <div class="tab-content">
									<div class="tab-pane show active" id="news-0" role="tabpanel">
										<div class="row">
											<div class="col-3">
												Item post
												<div>
													<a href="#" class="wrap-pic-w hov1 trans-03">
														<img src="/template/web/images/post-05.jpg" alt="IMG">
													</a>

													<div class="p-t-10">
														<h5 class="p-b-5">
															<a href="#" class="f1-s-5 cl3 hov-cl10 trans-03">
																Donec metus orci, malesuada et lectus vitae
															</a>
														</h5>

														<span class="cl8">
															<a href="#" class="f1-s-6 cl8 hov-cl10 trans-03">
																Music
															</a>

															<span class="f1-s-3 m-rl-3">
																-
															</span>

															<span class="f1-s-3">
																Feb 18
															</span>
														</span>
													</div>
												</div>
											</div>

											<div class="col-3">
												Item post
												<div>
													<a href="#" class="wrap-pic-w hov1 trans-03">
														<img src="/template/web/images/post-10.jpg" alt="IMG">
													</a>

													<div class="p-t-10">
														<h5 class="p-b-5">
															<a href="#" class="f1-s-5 cl3 hov-cl10 trans-03">
																Donec metus orci, malesuada et lectus vitae
															</a>
														</h5>

														<span class="cl8">
															<a href="#" class="f1-s-6 cl8 hov-cl10 trans-03">
																Finance
															</a>

															<span class="f1-s-3 m-rl-3">
																-
															</span>

															<span class="f1-s-3">
																Jan 15
															</span>
														</span>
													</div>
												</div>
											</div>

											<div class="col-3">
												Item post
												<div>
													<a href="#" class="wrap-pic-w hov1 trans-03">
														<img src="/template/web/images/post-14.jpg" alt="IMG">
													</a>

													<div class="p-t-10">
														<h5 class="p-b-5">
															<a href="#" class="f1-s-5 cl3 hov-cl10 trans-03">
																Donec metus orci, malesuada et lectus vitae
															</a>
														</h5>

														<span class="cl8">
															<a href="#" class="f1-s-6 cl8 hov-cl10 trans-03">
																Beach
															</a>

															<span class="f1-s-3 m-rl-3">
																-
															</span>

															<span class="f1-s-3">
																Feb 12
															</span>
														</span>
													</div>
												</div>
											</div>

											<div class="col-3">
												Item post
												<div>
													<a href="#" class="wrap-pic-w hov1 trans-03">
														<img src="/template/web/images/post-36.jpg" alt="IMG">
													</a>

													<div class="p-t-10">
														<h5 class="p-b-5">
															<a href="#" class="f1-s-5 cl3 hov-cl10 trans-03">
																Donec metus orci, malesuada et lectus vitae
															</a>
														</h5>

														<span class="cl8">
															<a href="#" class="f1-s-6 cl8 hov-cl10 trans-03">
																Technology
															</a>

															<span class="f1-s-3 m-rl-3">
																-
															</span>

															<span class="f1-s-3">
																Jan 20
															</span>
														</span>
													</div>
												</div>
											</div>
										</div>
									</div>

									<div class="tab-pane" id="news-1" role="tabpanel">
										<div class="row">
											<div class="col-3">
												Item post
												<div>
													<a href="#" class="wrap-pic-w hov1 trans-03">
														<img src="/template/web/images/post-50.jpg" alt="IMG">
													</a>

													<div class="p-t-10">
														<h5 class="p-b-5">
															<a href="#" class="f1-s-5 cl3 hov-cl10 trans-03">
																Donec metus orci, malesuada et lectus vitae
															</a>
														</h5>

														<span class="cl8">
															<a href="#" class="f1-s-6 cl8 hov-cl10 trans-03">
																Music
															</a>

															<span class="f1-s-3 m-rl-3">
																-
															</span>

															<span class="f1-s-3">
																Feb 18
															</span>
														</span>
													</div>
												</div>
											</div>

											<div class="col-3">
												Item post
												<div>
													<a href="#" class="wrap-pic-w hov1 trans-03">
														<img src="/template/web/images/post-08.jpg" alt="IMG">
													</a>

													<div class="p-t-10">
														<h5 class="p-b-5">
															<a href="#" class="f1-s-5 cl3 hov-cl10 trans-03">
																Donec metus orci, malesuada et lectus vitae
															</a>
														</h5>

														<span class="cl8">
															<a href="#" class="f1-s-6 cl8 hov-cl10 trans-03">
																Music
															</a>

															<span class="f1-s-3 m-rl-3">
																-
															</span>

															<span class="f1-s-3">
																Feb 12
															</span>
														</span>
													</div>
												</div>
											</div>

											<div class="col-3">
												Item post
												<div>
													<a href="#" class="wrap-pic-w hov1 trans-03">
														<img src="/template/web/images/post-07.jpg" alt="IMG">
													</a>

													<div class="p-t-10">
														<h5 class="p-b-5">
															<a href="#" class="f1-s-5 cl3 hov-cl10 trans-03">
																Donec metus orci, malesuada et lectus vitae
															</a>
														</h5>

														<span class="cl8">
															<a href="#" class="f1-s-6 cl8 hov-cl10 trans-03">
																Music
															</a>

															<span class="f1-s-3 m-rl-3">
																-
															</span>

															<span class="f1-s-3">
																Jan 20
															</span>
														</span>
													</div>
												</div>
											</div>

											<div class="col-3">
												Item post
												<div>
													<a href="#" class="wrap-pic-w hov1 trans-03">
														<img src="/template/web/images/post-06.jpg" alt="IMG">
													</a>

													<div class="p-t-10">
														<h5 class="p-b-5">
															<a href="#" class="f1-s-5 cl3 hov-cl10 trans-03">
																Donec metus orci, malesuada et lectus vitae
															</a>
														</h5>

														<span class="cl8">
															<a href="#" class="f1-s-6 cl8 hov-cl10 trans-03">
																Music
															</a>

															<span class="f1-s-3 m-rl-3">
																-
															</span>

															<span class="f1-s-3">
																Jan 15
															</span>
														</span>
													</div>
												</div>
											</div>
										</div>
									</div>

									<div class="tab-pane" id="news-2" role="tabpanel">
										<div class="row">
											<div class="col-3">
												Item post
												<div>
													<a href="#" class="wrap-pic-w hov1 trans-03">
														<img src="/template/web/images/post-21.jpg" alt="IMG">
													</a>

													<div class="p-t-10">
														<h5 class="p-b-5">
															<a href="#" class="f1-s-5 cl3 hov-cl10 trans-03">
																Donec metus orci, malesuada et lectus vitae
															</a>
														</h5>

														<span class="cl8">
															<a href="#" class="f1-s-6 cl8 hov-cl10 trans-03">
																Music
															</a>

															<span class="f1-s-3 m-rl-3">
																-
															</span>

															<span class="f1-s-3">
																Feb 18
															</span>
														</span>
													</div>
												</div>
											</div>

											<div class="col-3">
												Item post
												<div>
													<a href="#" class="wrap-pic-w hov1 trans-03">
														<img src="/template/web/images/post-24.jpg" alt="IMG">
													</a>

													<div class="p-t-10">
														<h5 class="p-b-5">
															<a href="#" class="f1-s-5 cl3 hov-cl10 trans-03">
																Donec metus orci, malesuada et lectus vitae
															</a>
														</h5>

														<span class="cl8">
															<a href="#" class="f1-s-6 cl8 hov-cl10 trans-03">
																Music
															</a>

															<span class="f1-s-3 m-rl-3">
																-
															</span>

															<span class="f1-s-3">
																Jan 15
															</span>
														</span>
													</div>
												</div>
											</div>

											<div class="col-3">
												Item post
												<div>
													<a href="#" class="wrap-pic-w hov1 trans-03">
														<img src="/template/web/images/post-22.jpg" alt="IMG">
													</a>

													<div class="p-t-10">
														<h5 class="p-b-5">
															<a href="blog-detail-01.html"
																class="f1-s-5 cl3 hov-cl10 trans-03">
																Donec metus orci, malesuada et lectus vitae
															</a>
														</h5>

														<span class="cl8">
															<a href="#" class="f1-s-6 cl8 hov-cl10 trans-03">
																Music
															</a>

															<span class="f1-s-3 m-rl-3">
																-
															</span>

															<span class="f1-s-3">
																Feb 12
															</span>
														</span>
													</div>
												</div>
											</div>

											<div class="col-3">
												Item post
												<div>
													<a href="#" class="wrap-pic-w hov1 trans-03">
														<img src="/template/web/images/post-23.jpg" alt="IMG">
													</a>

													<div class="p-t-10">
														<h5 class="p-b-5">
															<a href="blog-detail-01.html"
																class="f1-s-5 cl3 hov-cl10 trans-03">
																Donec metus orci, malesuada et lectus vitae
															</a>
														</h5>

														<span class="cl8">
															<a href="#" class="f1-s-6 cl8 hov-cl10 trans-03">
																Music
															</a>

															<span class="f1-s-3 m-rl-3">
																-
															</span>

															<span class="f1-s-3">
																Jan 20
															</span>
														</span>
													</div>
												</div>
											</div>
										</div>
									</div>

									<div class="tab-pane" id="news-3" role="tabpanel">
										<div class="row">
											<div class="col-3">
												Item post
												<div>
													<a href="#" class="wrap-pic-w hov1 trans-03">
														<img src="/template/web/images/post-25.jpg" alt="IMG">
													</a>

													<div class="p-t-10">
														<h5 class="p-b-5">
															<a href="#" class="f1-s-5 cl3 hov-cl10 trans-03">
																Donec metus orci, malesuada et lectus vitae
															</a>
														</h5>

														<span class="cl8">
															<a href="#" class="f1-s-6 cl8 hov-cl10 trans-03">
																Music
															</a>

															<span class="f1-s-3 m-rl-3">
																-
															</span>

															<span class="f1-s-3">
																Feb 18
															</span>
														</span>
													</div>
												</div>
											</div>

											<div class="col-3">
												Item post
												<div>
													<a href="#" class="wrap-pic-w hov1 trans-03">
														<img src="/template/web/images/post-27.jpg" alt="IMG">
													</a>

													<div class="p-t-10">
														<h5 class="p-b-5">
															<a href="#" class="f1-s-5 cl3 hov-cl10 trans-03">
																Donec metus orci, malesuada et lectus vitae
															</a>
														</h5>

														<span class="cl8">
															<a href="#" class="f1-s-6 cl8 hov-cl10 trans-03">
																Music
															</a>

															<span class="f1-s-3 m-rl-3">
																-
															</span>

															<span class="f1-s-3">
																Jan 20
															</span>
														</span>
													</div>
												</div>
											</div>

											<div class="col-3">
												Item post
												<div>
													<a href="#" class="wrap-pic-w hov1 trans-03">
														<img src="/template/web/images/post-26.jpg" alt="IMG">
													</a>

													<div class="p-t-10">
														<h5 class="p-b-5">
															<a href="#" class="f1-s-5 cl3 hov-cl10 trans-03">
																Donec metus orci, malesuada et lectus vitae
															</a>
														</h5>

														<span class="cl8">
															<a href="#" class="f1-s-6 cl8 hov-cl10 trans-03">
																Music
															</a>

															<span class="f1-s-3 m-rl-3">
																-
															</span>

															<span class="f1-s-3">
																Feb 12
															</span>
														</span>
													</div>
												</div>
											</div>

											<div class="col-3">
												Item post
												<div>
													<a href="#" class="wrap-pic-w hov1 trans-03">
														<img src="/template/web/images/post-34.jpg" alt="IMG">
													</a>

													<div class="p-t-10">
														<h5 class="p-b-5">
															<a href="#" class="f1-s-5 cl3 hov-cl10 trans-03">
																Donec metus orci, malesuada et lectus vitae
															</a>
														</h5>

														<span class="cl8">
															<a href="#" class="f1-s-6 cl8 hov-cl10 trans-03">
																Music
															</a>

															<span class="f1-s-3 m-rl-3">
																-
															</span>

															<span class="f1-s-3">
																Jan 15
															</span>
														</span>
													</div>
												</div>
											</div>
										</div>
									</div>

									<div class="tab-pane" id="news-4" role="tabpanel">
										<div class="row">
											<div class="col-3">
												Item post
												<div>
													<a href="#" class="wrap-pic-w hov1 trans-03">
														<img src="/template/web/images/post-35.jpg" alt="IMG">
													</a>

													<div class="p-t-10">
														<h5 class="p-b-5">
															<a href="#" class="f1-s-5 cl3 hov-cl10 trans-03">
																Donec metus orci, malesuada et lectus vitae
															</a>
														</h5>

														<span class="cl8">
															<a href="#" class="f1-s-6 cl8 hov-cl10 trans-03">
																Music
															</a>

															<span class="f1-s-3 m-rl-3">
																-
															</span>

															<span class="f1-s-3">
																Feb 18
															</span>
														</span>
													</div>
												</div>
											</div>

											<div class="col-3">
												Item post
												<div>
													<a href="#" class="wrap-pic-w hov1 trans-03">
														<img src="/template/web/images/post-36.jpg" alt="IMG">
													</a>

													<div class="p-t-10">
														<h5 class="p-b-5">
															<a href="#" class="f1-s-5 cl3 hov-cl10 trans-03">
																Donec metus orci, malesuada et lectus vitae
															</a>
														</h5>

														<span class="cl8">
															<a href="#" class="f1-s-6 cl8 hov-cl10 trans-03">
																Music
															</a>

															<span class="f1-s-3 m-rl-3">
																-
															</span>

															<span class="f1-s-3">
																Feb 12
															</span>
														</span>
													</div>
												</div>
											</div>

											<div class="col-3">
												Item post
												<div>
													<a href="#" class="wrap-pic-w hov1 trans-03">
														<img src="/template/web/images/post-37.jpg" alt="IMG">
													</a>

													<div class="p-t-10">
														<h5 class="p-b-5">
															<a href="#" class="f1-s-5 cl3 hov-cl10 trans-03">
																Donec metus orci, malesuada et lectus vitae
															</a>
														</h5>

														<span class="cl8">
															<a href="#" class="f1-s-6 cl8 hov-cl10 trans-03">
																Music
															</a>

															<span class="f1-s-3 m-rl-3">
																-
															</span>

															<span class="f1-s-3">
																Jan 20
															</span>
														</span>
													</div>
												</div>
											</div>

											<div class="col-3">
												Item post
												<div>
													<a href="#" class="wrap-pic-w hov1 trans-03">
														<img src="/template/web/images/post-38.jpg" alt="IMG">
													</a>

													<div class="p-t-10">
														<h5 class="p-b-5">
															<a href="#" class="f1-s-5 cl3 hov-cl10 trans-03">
																Donec metus orci, malesuada et lectus vitae
															</a>
														</h5>

														<span class="cl8">
															<a href="#" class="f1-s-6 cl8 hov-cl10 trans-03">
																Music
															</a>

															<span class="f1-s-3 m-rl-3">
																-
															</span>

															<span class="f1-s-3">
																Jan 15
															</span>
														</span>
													</div>
												</div>
											</div>
										</div>
									</div>

									<div class="tab-pane" id="news-5" role="tabpanel">
										<div class="row">
											<div class="col-3">
												Item post
												<div>
													<a href="#" class="wrap-pic-w hov1 trans-03">
														<img src="/template/web/images/post-39.jpg" alt="IMG">
													</a>

													<div class="p-t-10">
														<h5 class="p-b-5">
															<a href="#" class="f1-s-5 cl3 hov-cl10 trans-03">
																Donec metus orci, malesuada et lectus vitae
															</a>
														</h5>

														<span class="cl8">
															<a href="#" class="f1-s-6 cl8 hov-cl10 trans-03">
																Music
															</a>

															<span class="f1-s-3 m-rl-3">
																-
															</span>

															<span class="f1-s-3">
																Feb 18
															</span>
														</span>
													</div>
												</div>
											</div>

											<div class="col-3">
												Item post
												<div>
													<a href="#" class="wrap-pic-w hov1 trans-03">
														<img src="/template/web/images/post-41.jpg" alt="IMG">
													</a>

													<div class="p-t-10">
														<h5 class="p-b-5">
															<a href="#" class="f1-s-5 cl3 hov-cl10 trans-03">
																Donec metus orci, malesuada et lectus vitae
															</a>
														</h5>

														<span class="cl8">
															<a href="#" class="f1-s-6 cl8 hov-cl10 trans-03">
																Music
															</a>

															<span class="f1-s-3 m-rl-3">
																-
															</span>

															<span class="f1-s-3">
																Jan 20
															</span>
														</span>
													</div>
												</div>
											</div>

											<div class="col-3">
												Item post
												<div>
													<a href="#" class="wrap-pic-w hov1 trans-03">
														<img src="/template/web/images/post-42.jpg" alt="IMG">
													</a>

													<div class="p-t-10">
														<h5 class="p-b-5">
															<a href="#" class="f1-s-5 cl3 hov-cl10 trans-03">
																Donec metus orci, malesuada et lectus vitae
															</a>
														</h5>

														<span class="cl8">
															<a href="#" class="f1-s-6 cl8 hov-cl10 trans-03">
																Music
															</a>

															<span class="f1-s-3 m-rl-3">
																-
															</span>

															<span class="f1-s-3">
																Jan 15
															</span>
														</span>
													</div>
												</div>
											</div>

											<div class="col-3">
												Item post
												<div>
													<a href="#" class="wrap-pic-w hov1 trans-03">
														<img src="/template/web/images/post-40.jpg" alt="IMG">
													</a>

													<div class="p-t-10">
														<h5 class="p-b-5">
															<a href="#" class="f1-s-5 cl3 hov-cl10 trans-03">
																Donec metus orci, malesuada et lectus vitae
															</a>
														</h5>

														<span class="cl8">
															<a href="#" class="f1-s-6 cl8 hov-cl10 trans-03">
																Music
															</a>

															<span class="f1-s-3 m-rl-3">
																-
															</span>

															<span class="f1-s-3">
																Feb 12
															</span>
														</span>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div> -->
						</li>

						<li class="mega-menu-item">
							<a href="#">Thể thao </a>

							<div class="sub-mega-menu">
								<div class="nav flex-column nav-pills" role="tablist">
									<a class="nav-link active" data-toggle="pill" href="#enter-1" role="tab">Bóng đá</a>
									<a class="nav-link" data-toggle="pill" href="#enter-3" role="tab">Các môn khác</a>
								</div>

								<div class="tab-content">
									<div class="tab-pane show active" id="enter-1" role="tabpanel">
										<div class="row">
											<div class="col-3">
												<!-- Item post -->
												<div>
													<a href="#" class="wrap-pic-w hov1 trans-03">
														<img src="/template/web/images/bongda5.png" alt="IMG">
													</a>

													<div class="p-t-10">
														<h5 class="p-b-5">
															<a href="#" class="f1-s-5 cl3 hov-cl10 trans-03">
																
							Nga gọi 38 cầu thủ chuẩn bị đấu Việt Nam
															</a>
														</h5>

														<span class="cl8">
															<a href="#" class="f1-s-6 cl8 hov-cl10 trans-03">
																Thể thao
															</a>

															<span class="f1-s-3 m-rl-3">
																-
															</span>

															<span class="f1-s-3">
																20-8
															</span>
														</span>
													</div>
												</div>
											</div>

											<div class="col-3">
												<!-- Item post -->
												<div>
													<a href="#" class="wrap-pic-w hov1 trans-03">
														<img src="template/web/images/bongda2.jpg" alt="IMG">
													</a>

													<div class="p-t-10">
														<h5 class="p-b-5">
															<a href="#" class="f1-s-5 cl3 hov-cl10 trans-03">
																Hạ Nhật Bản, Việt Nam về nhì giải giao hữu U16
															</a>
														</h5>

														<span class="cl8">
															<a href="#" class="f1-s-6 cl8 hov-cl10 trans-03">
																Thể thao
															</a>

															<span class="f1-s-3 m-rl-3">
																-
															</span>

															<span class="f1-s-3">
																20-8
															</span>
														</span>
													</div>
												</div>
											</div>

											<div class="col-3">
												<!-- Item post -->
												<div>
													<a href="#" class="wrap-pic-w hov1 trans-03">
														<img src="template/web/images/bongda3.jpg" alt="IMG">
													</a>

													<div class="p-t-10">
														<h5 class="p-b-5">
															<a href="#" class="f1-s-5 cl3 hov-cl10 trans-03">
																
															Khánh Hòa dự giải, hạng Nhất giữ nguyên thể thức
															</a>
														</h5>

														<span class="cl8">
															<a href="#" class="f1-s-6 cl8 hov-cl10 trans-03">
																Thể thao
															</a>

															<span class="f1-s-3 m-rl-3">
																-
															</span>

															<span class="f1-s-3">
																20-8
															</span>
														</span>
													</div>
												</div>
											</div>

											<div class="col-3">
												<!-- Item post -->
												<div>
													<a href="#" class="wrap-pic-w hov1 trans-03">
														<img src="/template/web/images/bongda4.png" alt="IMG">
													</a>

													<div class="p-t-10">
														<h5 class="p-b-5">
															<a href="#" class="f1-s-5 cl3 hov-cl10 trans-03">
																Thủ môn Đặng Văn Lâm có thể ra Hà Nội thi đấu
															</a>
														</h5>

														<span class="cl8">
															<a href="#" class="f1-s-6 cl8 hov-cl10 trans-03">
																Thể thao
															</a>

															<span class="f1-s-3 m-rl-3">
																-
															</span>

															<span class="f1-s-3">
																20-8
															</span>
														</span>
													</div>
												</div>
											</div>
										</div>
									</div>

									<!-- <div class="tab-pane" id="enter-2" role="tabpanel">
										<div class="row">
											<div class="col-3">
												Item post
												<div>
													<a href="#" class="wrap-pic-w hov1 trans-03">
														<img src="/template/web/images/cacmonkhac1.jpg" alt="IMG">
													</a>

													<div class="p-t-10">
														<h5 class="p-b-5">
															<a href="#" class="f1-s-5 cl3 hov-cl10 trans-03">
																Donec metus orci, malesuada et lectus vitae
															</a>
														</h5>

														<span class="cl8">
															<a href="#" class="f1-s-6 cl8 hov-cl10 trans-03">
																Music
															</a>

															<span class="f1-s-3 m-rl-3">
																-
															</span>

															<span class="f1-s-3">
																Feb 18
															</span>
														</span>
													</div>
												</div>
											</div>

											<div class="col-3">
												Item post
												<div>
													<a href="#" class="wrap-pic-w hov1 trans-03">
														<img src="template/web/images/post-36.jpg" alt="IMG">
													</a>

													<div class="p-t-10">
														<h5 class="p-b-5">
															<a href="#" class="f1-s-5 cl3 hov-cl10 trans-03">
																Donec metus orci, malesuada et lectus vitae
															</a>
														</h5>

														<span class="cl8">
															<a href="#" class="f1-s-6 cl8 hov-cl10 trans-03">
																Music
															</a>

															<span class="f1-s-3 m-rl-3">
																-
															</span>

															<span class="f1-s-3">
																Feb 12
															</span>
														</span>
													</div>
												</div>
											</div>

											<div class="col-3">
												Item post
												<div>
													<a href="#" class="wrap-pic-w hov1 trans-03">
														<img src="template/web/images/post-37.jpg" alt="IMG">
													</a>

													<div class="p-t-10">
														<h5 class="p-b-5">
															<a href="#" class="f1-s-5 cl3 hov-cl10 trans-03">
																Donec metus orci, malesuada et lectus vitae
															</a>
														</h5>

														<span class="cl8">
															<a href="#" class="f1-s-6 cl8 hov-cl10 trans-03">
																Music
															</a>

															<span class="f1-s-3 m-rl-3">
																-
															</span>

															<span class="f1-s-3">
																Jan 20
															</span>
														</span>
													</div>
												</div>
											</div>

											<div class="col-3">
												Item post
												<div>
													<a href="#" class="wrap-pic-w hov1 trans-03">
														<img src="template/web/images/post-38.jpg" alt="IMG">
													</a>

													<div class="p-t-10">
														<h5 class="p-b-5">
															<a href="#" class="f1-s-5 cl3 hov-cl10 trans-03">
																Donec metus orci, malesuada et lectus vitae
															</a>
														</h5>

														<span class="cl8">
															<a href="#" class="f1-s-6 cl8 hov-cl10 trans-03">
																Music
															</a>

															<span class="f1-s-3 m-rl-3">
																-
															</span>

															<span class="f1-s-3">
																Jan 15
															</span>
														</span>
													</div>
												</div>
											</div>
										</div>
									</div> -->

									<div class="tab-pane" id="enter-3" role="tabpanel">
										<div class="row">
											<div class="col-3">
												<!-- Item post -->
												<div>
													<a href="#" class="wrap-pic-w hov1 trans-03">
														<img src="template/web/images/cacmonkhac1.jpg" alt="IMG">
													</a>

													<div class="p-t-10">
														<h5 class="p-b-5">
															<a href="#" class="f1-s-5 cl3 hov-cl10 trans-03">
																Việt Nam có nhiều đại diện nhất dự giải billiard thế giới
															</a>
														</h5>

														<span class="cl8">
															<a href="#" class="f1-s-6 cl8 hov-cl10 trans-03">
																Music
															</a>

															<span class="f1-s-3 m-rl-3">
																-
															</span>

															<span class="f1-s-3">
																Feb 18
															</span>
														</span>
													</div>
												</div>
											</div>

											<div class="col-3">
												<!-- Item post -->
												<div>
													<a href="#" class="wrap-pic-w hov1 trans-03">
														<img src="template/web/images/cacmonkhac2.jpg" alt="IMG">
													</a>

													<div class="p-t-10">
														<h5 class="p-b-5">
															<a href="#" class="f1-s-5 cl3 hov-cl10 trans-03">
																VĐV chuyển giới tự nhận là hình mẫu khi dự Paralympic
															</a>
														</h5>

														<span class="cl8">
															<a href="#" class="f1-s-6 cl8 hov-cl10 trans-03">
																Music
															</a>

															<span class="f1-s-3 m-rl-3">
																-
															</span>

															<span class="f1-s-3">
																Jan 20
															</span>
														</span>
													</div>
												</div>
											</div>

											<div class="col-3">
												<!-- Item post -->
												<div>
													<a href="#" class="wrap-pic-w hov1 trans-03">
														<img src="/template/web/images/cacmonkhac3.jpg" alt="IMG">
													</a>

													<div class="p-t-10">
														<h5 class="p-b-5">
															<a href="#" class="f1-s-5 cl3 hov-cl10 trans-03">
																Cơ thủ Quốc Hoàng thắng 9-0 ở trận ra quân US Open
															</a>
														</h5>

														<span class="cl8">
															<a href="#" class="f1-s-6 cl8 hov-cl10 trans-03">
																Music
															</a>

															<span class="f1-s-3 m-rl-3">
																-
															</span>

															<span class="f1-s-3">
																Jan 15
															</span>
														</span>
													</div>
												</div>
											</div>

											<div class="col-3">
												<!-- Item post -->
												<div>
													<a href="#" class="wrap-pic-w hov1 trans-03">
														<img src="/template/web/images/cacmonkhac4.jpg" alt="IMG">
													</a>

													<div class="p-t-10">
														<h5 class="p-b-5">
															<a href="#" class="f1-s-5 cl3 hov-cl10 trans-03">
																Hủy Đại hội thể thao trong nhà và võ thuật châu Á tại Thái Lan
															</a>
														</h5>

														<span class="cl8">
															<a href="#" class="f1-s-6 cl8 hov-cl10 trans-03">
																Music
															</a>

															<span class="f1-s-3 m-rl-3">
																-
															</span>

															<span class="f1-s-3">
																Feb 12
															</span>
														</span>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</li>

						<li class="mega-menu-item">
							<a href="#">Chính trị</a>

							<div class="sub-mega-menu">
								<div class="nav flex-column nav-pills" role="tablist">
									<a class="nav-link active" data-toggle="pill" href="#business-1" role="tab">Dân sinh</a>
									<a class="nav-link" data-toggle="pill" href="#business-2" role="tab">Lao Động - Việc Làm</a>
								</div>

								<div class="tab-content">
									<div class="tab-pane show active" id="business-1" role="tabpanel">
										<div class="row">
											<div class="col-3">
												<!-- Item post -->
												<div>
													<a href="#" class="wrap-pic-w hov1 trans-03">
														<img src="/template/web/images/dansinh1.jpg" alt="IMG">
													</a>

													<div class="p-t-10">
														<h5 class="p-b-5">
															<a href="#" class="f1-s-5 cl3 hov-cl10 trans-03">
																Kinh phí đền bù ở dự án kênh Đôi tăng lên 6.000 tỷ đồng
															</a>
														</h5>

														<span class="cl8">
															<a href="#" class="f1-s-6 cl8 hov-cl10 trans-03">
																Music
															</a>

															<span class="f1-s-3 m-rl-3">
																-
															</span>

															<span class="f1-s-3">
																Feb 18
															</span>
														</span>
													</div>
												</div>
											</div>

											<div class="col-3">
												<!-- Item post -->
												<div>
													<a href="#" class="wrap-pic-w hov1 trans-03">
														<img src="/template/web/images/dansinh2.jpg" alt="IMG">
													</a>

													<div class="p-t-10">
														<h5 class="p-b-5">
															<a href="#" class="f1-s-5 cl3 hov-cl10 trans-03">
																
																Cô giáo cưu mang nhiều học trò mồ côi
															</a>
														</h5>

														<span class="cl8">
															<a href="#" class="f1-s-6 cl8 hov-cl10 trans-03">
																Music
															</a>

															<span class="f1-s-3 m-rl-3">
																-
															</span>

															<span class="f1-s-3">
																Jan 20
															</span>
														</span>
													</div>
												</div>
											</div>

											<div class="col-3">
												<!-- Item post -->
												<div>
													<a href="#" class="wrap-pic-w hov1 trans-03">
														<img src="/template/web/images/dansinh3.jpg" alt="IMG">
													</a>

													<div class="p-t-10">
														<h5 class="p-b-5">
															<a href="#" class="f1-s-5 cl3 hov-cl10 trans-03">
																Trồng ớt A Riêu đặc sản
															</a>
														</h5>

														<span class="cl8">
															<a href="#" class="f1-s-6 cl8 hov-cl10 trans-03">
																Music
															</a>

															<span class="f1-s-3 m-rl-3">
																-
															</span>

															<span class="f1-s-3">
																Feb 12
															</span>
														</span>
													</div>
												</div>
											</div>

											<div class="col-3">
												<!-- Item post -->
												<div>
													<a href="#" class="wrap-pic-w hov1 trans-03">
														<img src="/template/web/images/dansinh4.jpg" alt="IMG">
													</a>

													<div class="p-t-10">
														<h5 class="p-b-5">
															<a href="#" class="f1-s-5 cl3 hov-cl10 trans-03">
																Cựu binh gần 8 năm tình nguyện nhặt rác ở Hội An
															</a>
														</h5>

														<span class="cl8">
															<a href="#" class="f1-s-6 cl8 hov-cl10 trans-03">
																Music
															</a>

															<span class="f1-s-3 m-rl-3">
																-
															</span>

															<span class="f1-s-3">
																Jan 15
															</span>
														</span>
													</div>
												</div>
											</div>
										</div>
									</div>

									<div class="tab-pane" id="business-2" role="tabpanel">
										<div class="row">
											<div class="col-3">
												<!-- Item post -->
												<div>
													<a href="#" class="wrap-pic-w hov1 trans-03">
														<img src="/template/web/images/ldvl1.jpg" alt="IMG">
													</a>

													<div class="p-t-10">
														<h5 class="p-b-5">
															<a href="#" class="f1-s-5 cl3 hov-cl10 trans-03">
																300 lao động có thể tham gia trao đổi tài năng tại Singapore
															</a>
														</h5>

														<span class="cl8">
															<a href="#" class="f1-s-6 cl8 hov-cl10 trans-03">
																Music
															</a>

															<span class="f1-s-3 m-rl-3">
																-
															</span>

															<span class="f1-s-3">
																Feb 18
															</span>
														</span>
													</div>
												</div>
											</div>

											<div class="col-3">
												<!-- Item post -->
												<div>
													<a href="#" class="wrap-pic-w hov1 trans-03">
														<img src="/template/web/images/ldvl2.jpg" alt="IMG">
													</a>

													<div class="p-t-10">
														<h5 class="p-b-5">
															<a href="#" class="f1-s-5 cl3 hov-cl10 trans-03">
																Quỹ Bảo hiểm thất nghiệp thu - chi thế nào?
															</a>
														</h5>

														<span class="cl8">
															<a href="#" class="f1-s-6 cl8 hov-cl10 trans-03">
																Music
															</a>

															<span class="f1-s-3 m-rl-3">
																-
															</span>

															<span class="f1-s-3">
																Feb 12
															</span>
														</span>
													</div>
												</div>
											</div>

											<div class="col-3">
												<!-- Item post -->
												<div>
													<a href="#" class="wrap-pic-w hov1 trans-03">
														<img src="/template/web/images/ldvl3.jpg" alt="IMG">
													</a>

													<div class="p-t-10">
														<h5 class="p-b-5">
															<a href="#" class="f1-s-5 cl3 hov-cl10 trans-03">
																Điều tra tiền lương tại 3.400 doanh nghiệp
															</a>
														</h5>

														<span class="cl8">
															<a href="#" class="f1-s-6 cl8 hov-cl10 trans-03">
																Music
															</a>

															<span class="f1-s-3 m-rl-3">
																-
															</span>

															<span class="f1-s-3">
																Jan 20
															</span>
														</span>
													</div>
												</div>
											</div>

											<div class="col-3">
												<!-- Item post -->
												<div>
													<a href="#" class="wrap-pic-w hov1 trans-03">
														<img src="/template/web/images/ldvl4.jpg" alt="IMG">
													</a>

													<div class="p-t-10">
														<h5 class="p-b-5">
															<a href="#" class="f1-s-5 cl3 hov-cl10 trans-03">
																Xuất khẩu lao động đem về cho Đồng Tháp 1.000 tỷ đồng mỗi năm
															</a>
														</h5>

														<span class="cl8">
															<a href="#" class="f1-s-6 cl8 hov-cl10 trans-03">
																Music
															</a>

															<span class="f1-s-3 m-rl-3">
																-
															</span>

															<span class="f1-s-3">
																Jan 15
															</span>
														</span>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</li>

						<li class="mega-menu-item">
							<a href="#">Thời sự</a>

							<div class="sub-mega-menu">
								<div class="nav flex-column nav-pills" role="tablist">
									<a class="nav-link active" data-toggle="pill" href="#travel-1" role="tab">Thời sự-chính trị</a>
									<!-- <a class="nav-link" data-toggle="pill" href="#travel-2" role="tab">Hotels</a> -->
								</div>

								<div class="tab-content">
									<div class="tab-pane show active" id="travel-1" role="tabpanel">
										<div class="row">
											<div class="col-3">
												<!-- Item post -->
												<div>
													<a href="#" class="wrap-pic-w hov1 trans-03">
														<img src="/template/web/images/thoisu1.jpg" alt="IMG">
													</a>

													<div class="p-t-10">
														<h5 class="p-b-5">
															<a href="#" class="f1-s-5 cl3 hov-cl10 trans-03">
																Ba bộ trưởng trả lời chất vấn sáng nay
															</a>
														</h5>

														<span class="cl8">
															<a href="#" class="f1-s-6 cl8 hov-cl10 trans-03">
																Music
															</a>

															<span class="f1-s-3 m-rl-3">
																-
															</span>

															<span class="f1-s-3">
																Feb 18
															</span>
														</span>
													</div>
												</div>
											</div>

											<div class="col-3">
												<!-- Item post -->
												<div>
													<a href="#" class="wrap-pic-w hov1 trans-03">
														<img src="/template/web/images/thoisu2.jpg" alt="IMG">
													</a>

													<div class="p-t-10">
														<h5 class="p-b-5">
															<a href="#" class="f1-s-5 cl3 hov-cl10 trans-03">
																'Trả lương phù hợp với cống hiến để không cần tham nhũng'
															</a>
														</h5>

														<span class="cl8">
															<a href="#" class="f1-s-6 cl8 hov-cl10 trans-03">
																Music
															</a>

															<span class="f1-s-3 m-rl-3">
																-
															</span>

															<span class="f1-s-3">
																Jan 20
															</span>
														</span>
													</div>
												</div>
											</div>

											<div class="col-3">
												<!-- Item post -->
												<div>
													<a href="#" class="wrap-pic-w hov1 trans-03">
														<img src="/template/web/images/thoisu3.jpg" alt="IMG">
													</a>

													<div class="p-t-10">
														<h5 class="p-b-5">
															<a href="#" class="f1-s-5 cl3 hov-cl10 trans-03">
																Việt - Trung ra tuyên bố chung
															</a>
														</h5>

														<span class="cl8">
															<a href="#" class="f1-s-6 cl8 hov-cl10 trans-03">
																Music
															</a>

															<span class="f1-s-3 m-rl-3">
																-
															</span>

															<span class="f1-s-3">
																Jan 15
															</span>
														</span>
													</div>
												</div>
											</div>

											<div class="col-3">
												<!-- Item post -->
												<div>
													<a href="#" class="wrap-pic-w hov1 trans-03">
														<img src="/template/web/images/thoisu4.jpg" alt="IMG">
													</a>

													<div class="p-t-10">
														<h5 class="p-b-5">
															<a href="#" class="f1-s-5 cl3 hov-cl10 trans-03">
																Thường vụ Quốc hội sẽ giám sát về phát triển nhân lực chất lượng cao
															</a>
														</h5>

														<span class="cl8">
															<a href="#" class="f1-s-6 cl8 hov-cl10 trans-03">
																Music
															</a>

															<span class="f1-s-3 m-rl-3">
																-
															</span>

															<span class="f1-s-3">
																Feb 12
															</span>
														</span>
													</div>
												</div>
											</div>
										</div>
									</div>

									<div class="tab-pane" id="travel-2" role="tabpanel">
										<div class="row">
											<div class="col-3">
												<!-- Item post -->
												<div>
													<a href="#" class="wrap-pic-w hov1 trans-03">
														<img src="template/web/images/post-35.jpg" alt="IMG">
													</a>

													<div class="p-t-10">
														<h5 class="p-b-5">
															<a href="#" class="f1-s-5 cl3 hov-cl10 trans-03">
																Donec metus orci, malesuada et lectus vitae
															</a>
														</h5>

														<span class="cl8">
															<a href="#" class="f1-s-6 cl8 hov-cl10 trans-03">
																Music
															</a>

															<span class="f1-s-3 m-rl-3">
																-
															</span>

															<span class="f1-s-3">
																Feb 18
															</span>
														</span>
													</div>
												</div>
											</div>

											<div class="col-3">
												<!-- Item post -->
												<div>
													<a href="#" class="wrap-pic-w hov1 trans-03">
														<img src="template/web/images/post-36.jpg" alt="IMG">
													</a>

													<div class="p-t-10">
														<h5 class="p-b-5">
															<a href="template/web/blog-detail-01.html"
																class="f1-s-5 cl3 hov-cl10 trans-03">
																Donec metus orci, malesuada et lectus vitae
															</a>
														</h5>

														<span class="cl8">
															<a href="#" class="f1-s-6 cl8 hov-cl10 trans-03">
																Music
															</a>

															<span class="f1-s-3 m-rl-3">
																-
															</span>

															<span class="f1-s-3">
																Feb 12
															</span>
														</span>
													</div>
												</div>
											</div>

											<div class="col-3">
												<!-- Item post -->
												<div>
													<a href="#" class="wrap-pic-w hov1 trans-03">
														<img src="template/web/images/post-37.jpg" alt="IMG">
													</a>

													<div class="p-t-10">
														<h5 class="p-b-5">
															<a href="#" class="f1-s-5 cl3 hov-cl10 trans-03">
																Donec metus orci, malesuada et lectus vitae
															</a>
														</h5>

														<span class="cl8">
															<a href="#" class="f1-s-6 cl8 hov-cl10 trans-03">
																Music
															</a>

															<span class="f1-s-3 m-rl-3">
																-
															</span>

															<span class="f1-s-3">
																Jan 20
															</span>
														</span>
													</div>
												</div>
											</div>

											<div class="col-3">
												<!-- Item post -->
												<div>
													<a href="#" class="wrap-pic-w hov1 trans-03">
														<img src="template/web/images/post-38.jpg" alt="IMG">
													</a>

													<div class="p-t-10">
														<h5 class="p-b-5">
															<a href="#" class="f1-s-5 cl3 hov-cl10 trans-03">
																Donec metus orci, malesuada et lectus vitae
															</a>
														</h5>

														<span class="cl8">
															<a href="#" class="f1-s-6 cl8 hov-cl10 trans-03">
																Music
															</a>

															<span class="f1-s-3 m-rl-3">
																-
															</span>

															<span class="f1-s-3">
																Jan 15
															</span>
														</span>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</li>

						<li class="mega-menu-item">
							<a href="#">Thế giới</a>

							<div class="sub-mega-menu">
								<div class="nav flex-column nav-pills" role="tablist">
									<a class="nav-link active" data-toggle="pill" href="#life-1" role="tab">Tư liệu</a>
								</div>

								<div class="tab-content">
									<div class="tab-pane show active" id="life-1" role="tabpanel">
										<div class="row">
											<div class="col-3">
												<!-- Item post -->
												<div>
													<a href="#" class="wrap-pic-w hov1 trans-03">
														<img src="/template/web/images/tulieu1.jpg" alt="IMG">
													</a>

													<div class="p-t-10">
														<h5 class="p-b-5">
															<a href="#" class="f1-s-5 cl3 hov-cl10 trans-03">
																Người ủng hộ lo lắng với chiến thuật tranh cử của Trump
															</a>
														</h5>

														<span class="cl8">
															<a href="#" class="f1-s-6 cl8 hov-cl10 trans-03">
																Music
															</a>

															<span class="f1-s-3 m-rl-3">
																-
															</span>

															<span class="f1-s-3">
																Feb 18
															</span>
														</span>
													</div>
												</div>
											</div>

											<div class="col-3">
												<!-- Item post -->
												<div>
													<a href="#" class="wrap-pic-w hov1 trans-03">
														<img src="/template/web/images/tulieu2.jpg" alt="IMG">
													</a>

													<div class="p-t-10">
														<h5 class="p-b-5">
															<a href="#" class="f1-s-5 cl3 hov-cl10 trans-03">
																Binh nghiệp gây tranh cãi của phó tướng bà Harris
															</a>
														</h5>

														<span class="cl8">
															<a href="#" class="f1-s-6 cl8 hov-cl10 trans-03">
																Music
															</a>

															<span class="f1-s-3 m-rl-3">
																-
															</span>

															<span class="f1-s-3">
																Jan 20
															</span>
														</span>
													</div>
												</div>
											</div>

											<div class="col-3">
												<!-- Item post -->
												<div>
													<a href="#" class="wrap-pic-w hov1 trans-03">
														<img src="/template/web/images/tulieu3.jpg" alt="IMG">
													</a>

													<div class="p-t-10">
														<h5 class="p-b-5">
															<a href="#" class="f1-s-5 cl3 hov-cl10 trans-03">
																Chính sách có thể giúp tân Thủ tướng Thái Lan vực dậy kinh tế
															</a>
														</h5>

														<span class="cl8">
															<a href="#" class="f1-s-6 cl8 hov-cl10 trans-03">
																Music
															</a>

															<span class="f1-s-3 m-rl-3">
																-
															</span>

															<span class="f1-s-3">
																Feb 12
															</span>
														</span>
													</div>
												</div>
											</div>

											<div class="col-3">
												<!-- Item post -->
												<div>
													<a href="#" class="wrap-pic-w hov1 trans-03">
														<img src="/template/web/images/tulieu4.jpg" alt="IMG">
													</a>

													<div class="p-t-10">
														<h5 class="p-b-5">
															<a href="#" class="f1-s-5 cl3 hov-cl10 trans-03">
																Đồng minh bất lực nhìn Trump 'chệch đường ray' tranh cử
															</a>
														</h5>

														<span class="cl8">
															<a href="#" class="f1-s-6 cl8 hov-cl10 trans-03">
																Music
															</a>

															<span class="f1-s-3 m-rl-3">
																-
															</span>

															<span class="f1-s-3">
																Jan 15
															</span>
														</span>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</li>

						<li class="mega-menu-item">
							<a href="#">Góc nhìn</a>

							<div class="sub-mega-menu">
								<div class="nav flex-column nav-pills" role="tablist">
									<a class="nav-link active" data-toggle="pill" href="#video-1" role="tab">Tất cả</a>
								</div>

								<div class="tab-content">
									<div class="tab-pane show active" id="video-1" role="tabpanel">
										<div class="row">
											<div class="col-3">
												<!-- Item post -->
												<div>
													<!-- <a href="#" class="wrap-pic-w hov1 trans-03">
														<img src="template/web/images/post-50.jpg" alt="IMG">
													</a> -->

													<div class="p-t-10">
														<h5 class="p-b-5">
															<a href="#" class="f1-s-5 cl3 hov-cl10 trans-03">
																
Tiền túi ông chủ tư nhân
Những doanh nghiệp lớn mạnh bằng cách làm ăn chính trực sẽ trở thành rường cột cho nền kinh tế đất nước.e
															</a>
														</h5>

														<span class="cl8">
															<a href="#" class="f1-s-6 cl8 hov-cl10 trans-03">
																Music
															</a>

															<span class="f1-s-3 m-rl-3">
																-
															</span>

															<span class="f1-s-3">
																Feb 18
															</span>
														</span>
													</div>
												</div>
											</div>

											<div class="col-3">
												<!-- Item post -->
												<div>
													<!-- <a href="#" class="wrap-pic-w hov1 trans-03">
														<img src="template/web/images/post-08.jpg" alt="IMG">
													</a> -->

													<div class="p-t-10">
														<h5 class="p-b-5">
															<a href="#" class="f1-s-5 cl3 hov-cl10 trans-03">
																Không hài cốt, không một kỷ vật, tất cả những gì bà tôi còn lưu lại về con trai là tấm bằng Tổ quốc ghi công.
															</a>
														</h5>

														<span class="cl8">
															<a href="#" class="f1-s-6 cl8 hov-cl10 trans-03">
																Music
															</a>

															<span class="f1-s-3 m-rl-3">
																-
															</span>

															<span class="f1-s-3">
																Feb 12
															</span>
														</span>
													</div>
												</div>
											</div>

											<div class="col-3">
												<!-- Item post -->
												<div>
													<!-- <a href="#" class="wrap-pic-w hov1 trans-03">
														<img src="/template/web/images/post-07.jpg" alt="IMG">
													</a> -->

													<div class="p-t-10">
														<h5 class="p-b-5">
															<a href="#" class="f1-s-5 cl3 hov-cl10 trans-03">
																Ngày nào bán vé, bà Tư cũng giữ lại một tờ, để 'trúng độc đắc là nghỉ hẳn', nhưng bao năm qua, bà mới trúng chừng 3 triệu đồng.
															</a>
														</h5>

														<span class="cl8">
															<a href="#" class="f1-s-6 cl8 hov-cl10 trans-03">
																Music
															</a>

															<span class="f1-s-3 m-rl-3">
																-
															</span>

															<span class="f1-s-3">
																Jan 20
															</span>
														</span>
													</div>
												</div>
											</div>

											<div class="col-3">
												<!-- Item post -->
												<div>
													<!-- <a href="#" class="wrap-pic-w hov1 trans-03">
														<img src="template/web/images/post-06.jpg" alt="IMG">
													</a> -->

													<div class="p-t-10">
														<h5 class="p-b-5">
															<a href="#" class="f1-s-5 cl3 hov-cl10 trans-03">
																Hơn 20 năm trước, khi lần đầu đến sân bay Changi, tôi thấy hành khách khuyết tật được phục vụ bởi một người cao tuổi.
															</a>
														</h5>

														<span class="cl8">
															<a href="#" class="f1-s-6 cl8 hov-cl10 trans-03">
																Music
															</a>

															<span class="f1-s-3 m-rl-3">
																-
															</span>

															<span class="f1-s-3">
																Jan 15
															</span>
														</span>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</li>

						<li>
							<a href="#">Tin tức nổi bật</a>
							<!-- <ul class="sub-menu">
								<li><a href="#">Category Page v1</a></li>
								<li><a href="#">Category Page v2</a></li>
								<li><a href="#">Blog Grid Sidebar</a></li>
								<li><a href="#">Blog List Sidebar v1</a></li>
								<li><a href="#">Blog List Sidebar v2</a></li>
								<li><a href="#">Blog Detail Sidebar</a></li>
								<li><a href="#">Blog Detail No Sidebar</a></li>
								<li><a href="#">About Us</a></li>
								<li><a href="#">Contact Us</a></li>
							</ul> -->
						</li>
					</ul>
				</nav>
			</div>
		</div>
	</div>
</header>


<div class="container">
	<div class="bg0 flex-wr-sb-c p-rl-20 p-tb-8">
		<div class="f2-s-1 p-r-30 size-w-0 m-tb-6 flex-wr-s-c">
			<span class="text-uppercase cl2 p-r-8">
				Tin tức nổi bật:
			</span>

			<span class="dis-inline-block cl6 slide100-txt pos-relative size-w-0" data-in="fadeInDown"
				data-out="fadeOutDown">
				<span class="dis-inline-block slide100-txt-item animated visible-false">
					Khu nghỉ dưỡng ghi điểm với du khách bởi vị trí, hệ sinh thái hoang sơ cùng nhiều tiện ích nghỉ dưỡng.
				</span>

				<span class="dis-inline-block slide100-txt-item animated visible-false">
					Ba luật về bất động sản, quy định mới về giá đất, bồi thường hỗ trợ tái định cư là những chính sách có hiệu lực từ tháng 8.
				</span>

				<span class="dis-inline-block slide100-txt-item animated visible-false">
					Libera Nha Trang sở hữu hai km bờ biển và ba bãi tắm riêng biệt, hướng nhìn đa dạng, nâng tầm trải nghiệm nghỉ dưỡng của du khách.
				</span>
			</span>
		</div>

		<div class="pos-relative size-a-2 bo-1-rad-22 of-hidden bocl11 m-tb-6">
			<input class="f1-s-1 cl6 plh9 s-full p-l-25 p-r-45" type="text" name="Tìm kiếm" placeholder="Search">
			<button class="flex-c-c size-a-1 ab-t-r fs-20 cl2 hov-cl10 trans-03">
				<i class="zmdi zmdi-search"></i>
			</button>
		</div>
	</div>
</div>