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
							New York, NY
						</span>

						<img class="m-b-1 m-rl-8" src="template/web/images/icons/icon-night.png" alt="IMG">

						<span>
							HI 58° LO 56°
						</span>
					</span>

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
				<a href="#"><img src="template/web/images/icons/logo-01.png" alt="IMG-LOGO"></a>
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
							New York, NY
						</span>

						<img class="m-b-1 m-rl-8" src="template/web/images/icons/icon-night.png" alt="IMG">

						<span>
							HI 58° LO 56°
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
					<a href="#">Home</a>
					<ul class="sub-menu-m">
						<li><a href="#">Homepage v1</a></li>
						<li><a href="#">Homepage v2</a></li>
						<li><a href="#">Homepage v3</a></li>
					</ul>

					<span class="arrow-main-menu-m">
						<i class="fa fa-angle-right" aria-hidden="true"></i>
					</span>
				</li>

				<li>
					<a href="$">News</a>
				</li>

				<li>
					<a href="#">Entertainment </a>
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
					<a href="#">Features</a>
					<ul class="sub-menu-m">
						<li><a href="#">Category Page v1</a></li>
						<li><a href="#">Category Page v2</a></li>
						<li><a href="#">Blog Grid Sidebar</a></li>
						<li><a href="#">Blog List Sidebar v1</a></li>
						<li><a href="#">Blog List Sidebar v2</a></li>
						<li><a href="#">Blog Detail Sidebar</a></li>
						<li><a href="#">Blog Detail No Sidebar</a></li>
						<li><a href="#">About Us</a></li>
						<li><a href="#">Contact Us</a></li>
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
				<a href="#"><img src="template/web/images/icons/logo-01.png" alt="LOGO"></a>
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
							<a href="#">Home</a>
							<ul class="sub-menu">
								<li><a href="#">Homepage v1</a></li>
								<li><a href="#">Homepage v2</a></li>
								<li><a href="#">Homepage v3</a></li>
							</ul>
						</li>

						<li class="mega-menu-item">
							<a href="#">News</a>

							<div class="sub-mega-menu">
								<div class="nav flex-column nav-pills" role="tablist">
									<a class="nav-link active" data-toggle="pill" href="#news-0" role="tab">All</a>
									<a class="nav-link" data-toggle="pill" href="#news-1" role="tab">Entertaiment</a>
									<a class="nav-link" data-toggle="pill" href="#news-2" role="tab">Fashion</a>
									<a class="nav-link" data-toggle="pill" href="#news-3" role="tab">Life Style</a>
									<a class="nav-link" data-toggle="pill" href="#news-4" role="tab">Technology</a>
									<a class="nav-link" data-toggle="pill" href="#news-5" role="tab">Travel</a>
								</div>

								<div class="tab-content">
									<div class="tab-pane show active" id="news-0" role="tabpanel">
										<div class="row">
											<div class="col-3">
												<!-- Item post -->
												<div>
													<a href="#" class="wrap-pic-w hov1 trans-03">
														<img src="template/web/images/post-05.jpg" alt="IMG">
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
														<img src="template/web/images/post-10.jpg" alt="IMG">
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
												<!-- Item post -->
												<div>
													<a href="#" class="wrap-pic-w hov1 trans-03">
														<img src="template/web/images/post-14.jpg" alt="IMG">
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
												<!-- Item post -->
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
												<!-- Item post -->
												<div>
													<a href="#" class="wrap-pic-w hov1 trans-03">
														<img src="template/web/images/post-50.jpg" alt="IMG">
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
														<img src="template/web/images/post-08.jpg" alt="IMG">
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
												<!-- Item post -->
												<div>
													<a href="#" class="wrap-pic-w hov1 trans-03">
														<img src="template/web/images/post-07.jpg" alt="IMG">
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
														<img src="template/web/images/post-06.jpg" alt="IMG">
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
												<!-- Item post -->
												<div>
													<a href="#" class="wrap-pic-w hov1 trans-03">
														<img src="template/web/images/post-21.jpg" alt="IMG">
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
														<img src="template/web/images/post-24.jpg" alt="IMG">
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
												<!-- Item post -->
												<div>
													<a href="#" class="wrap-pic-w hov1 trans-03">
														<img src="template/web/images/post-22.jpg" alt="IMG">
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
												<!-- Item post -->
												<div>
													<a href="#" class="wrap-pic-w hov1 trans-03">
														<img src="template/web/images/post-23.jpg" alt="IMG">
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
												<!-- Item post -->
												<div>
													<a href="#" class="wrap-pic-w hov1 trans-03">
														<img src="template/web/images/post-25.jpg" alt="IMG">
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
														<img src="template/web/images/post-27.jpg" alt="IMG">
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
														<img src="template/web/images/post-26.jpg" alt="IMG">
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
												<!-- Item post -->
												<div>
													<a href="#" class="wrap-pic-w hov1 trans-03">
														<img src="template/web/images/post-34.jpg" alt="IMG">
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

									<div class="tab-pane" id="news-5" role="tabpanel">
										<div class="row">
											<div class="col-3">
												<!-- Item post -->
												<div>
													<a href="#" class="wrap-pic-w hov1 trans-03">
														<img src="template/web/images/post-39.jpg" alt="IMG">
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
														<img src="template/web/images/post-41.jpg" alt="IMG">
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
														<img src="template/web/images/post-42.jpg" alt="IMG">
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
												<!-- Item post -->
												<div>
													<a href="#" class="wrap-pic-w hov1 trans-03">
														<img src="template/web/images/post-40.jpg" alt="IMG">
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
							</div>
						</li>

						<li class="mega-menu-item">
							<a href="#">Entertainment </a>

							<div class="sub-mega-menu">
								<div class="nav flex-column nav-pills" role="tablist">
									<a class="nav-link active" data-toggle="pill" href="#enter-1" role="tab">All</a>
									<a class="nav-link" data-toggle="pill" href="#enter-2" role="tab">Game</a>
									<a class="nav-link" data-toggle="pill" href="#enter-3" role="tab">Celebrity</a>
								</div>

								<div class="tab-content">
									<div class="tab-pane show active" id="enter-1" role="tabpanel">
										<div class="row">
											<div class="col-3">
												<!-- Item post -->
												<div>
													<a href="#" class="wrap-pic-w hov1 trans-03">
														<img src="template/web/images/post-25.jpg" alt="IMG">
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
														<img src="template/web/images/post-27.jpg" alt="IMG">
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
														<img src="template/web/images/post-26.jpg" alt="IMG">
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
												<!-- Item post -->
												<div>
													<a href="#" class="wrap-pic-w hov1 trans-03">
														<img src="template/web/images/post-34.jpg" alt="IMG">
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

									<div class="tab-pane" id="enter-2" role="tabpanel">
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

									<div class="tab-pane" id="enter-3" role="tabpanel">
										<div class="row">
											<div class="col-3">
												<!-- Item post -->
												<div>
													<a href="#" class="wrap-pic-w hov1 trans-03">
														<img src="template/web/images/post-39.jpg" alt="IMG">
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
														<img src="template/web/images/post-41.jpg" alt="IMG">
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
														<img src="template/web/images/post-42.jpg" alt="IMG">
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
												<!-- Item post -->
												<div>
													<a href="#" class="wrap-pic-w hov1 trans-03">
														<img src="template/web/images/post-40.jpg" alt="IMG">
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
							</div>
						</li>

						<li class="mega-menu-item">
							<a href="category-01.html">Business</a>

							<div class="sub-mega-menu">
								<div class="nav flex-column nav-pills" role="tablist">
									<a class="nav-link active" data-toggle="pill" href="#business-1" role="tab">All</a>
									<a class="nav-link" data-toggle="pill" href="#business-2" role="tab">Economy</a>
								</div>

								<div class="tab-content">
									<div class="tab-pane show active" id="business-1" role="tabpanel">
										<div class="row">
											<div class="col-3">
												<!-- Item post -->
												<div>
													<a href="#" class="wrap-pic-w hov1 trans-03">
														<img src="template/web/images/post-10.jpg" alt="IMG">
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
														<img src="template/web/images/post-11.jpg" alt="IMG">
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
														<img src="template/web/images/post-26.jpg" alt="IMG">
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
												<!-- Item post -->
												<div>
													<a href="#" class="wrap-pic-w hov1 trans-03">
														<img src="template/web/images/post-34.jpg" alt="IMG">
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

									<div class="tab-pane" id="business-2" role="tabpanel">
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
							<a href="#">Travel</a>

							<div class="sub-mega-menu">
								<div class="nav flex-column nav-pills" role="tablist">
									<a class="nav-link active" data-toggle="pill" href="#travel-1" role="tab">All</a>
									<a class="nav-link" data-toggle="pill" href="#travel-2" role="tab">Hotels</a>
								</div>

								<div class="tab-content">
									<div class="tab-pane show active" id="travel-1" role="tabpanel">
										<div class="row">
											<div class="col-3">
												<!-- Item post -->
												<div>
													<a href="#" class="wrap-pic-w hov1 trans-03">
														<img src="template/web/images/post-39.jpg" alt="IMG">
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
														<img src="template/web/images/post-41.jpg" alt="IMG">
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
														<img src="template/web/images/post-42.jpg" alt="IMG">
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
												<!-- Item post -->
												<div>
													<a href="#" class="wrap-pic-w hov1 trans-03">
														<img src="template/web/images/post-40.jpg" alt="IMG">
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
							<a href="#">Life Style</a>

							<div class="sub-mega-menu">
								<div class="nav flex-column nav-pills" role="tablist">
									<a class="nav-link active" data-toggle="pill" href="#life-1" role="tab">All</a>
								</div>

								<div class="tab-content">
									<div class="tab-pane show active" id="life-1" role="tabpanel">
										<div class="row">
											<div class="col-3">
												<!-- Item post -->
												<div>
													<a href="#" class="wrap-pic-w hov1 trans-03">
														<img src="template/web/images/post-25.jpg" alt="IMG">
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
														<img src="template/web/images/post-27.jpg" alt="IMG">
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
														<img src="template/web/images/post-26.jpg" alt="IMG">
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
												<!-- Item post -->
												<div>
													<a href="#" class="wrap-pic-w hov1 trans-03">
														<img src="template/web/images/post-34.jpg" alt="IMG">
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
							<a href="#">Video</a>

							<div class="sub-mega-menu">
								<div class="nav flex-column nav-pills" role="tablist">
									<a class="nav-link active" data-toggle="pill" href="#video-1" role="tab">All</a>
								</div>

								<div class="tab-content">
									<div class="tab-pane show active" id="video-1" role="tabpanel">
										<div class="row">
											<div class="col-3">
												<!-- Item post -->
												<div>
													<a href="#" class="wrap-pic-w hov1 trans-03">
														<img src="template/web/images/post-50.jpg" alt="IMG">
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
														<img src="template/web/images/post-08.jpg" alt="IMG">
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
												<!-- Item post -->
												<div>
													<a href="#" class="wrap-pic-w hov1 trans-03">
														<img src="template/web/images/post-07.jpg" alt="IMG">
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
														<img src="template/web/images/post-06.jpg" alt="IMG">
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

						<li>
							<a href="#">Features</a>
							<ul class="sub-menu">
								<li><a href="#">Category Page v1</a></li>
								<li><a href="#">Category Page v2</a></li>
								<li><a href="#">Blog Grid Sidebar</a></li>
								<li><a href="#">Blog List Sidebar v1</a></li>
								<li><a href="#">Blog List Sidebar v2</a></li>
								<li><a href="#">Blog Detail Sidebar</a></li>
								<li><a href="#">Blog Detail No Sidebar</a></li>
								<li><a href="#">About Us</a></li>
								<li><a href="#">Contact Us</a></li>
							</ul>
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
				Trending Now:
			</span>

			<span class="dis-inline-block cl6 slide100-txt pos-relative size-w-0" data-in="fadeInDown"
				data-out="fadeOutDown">
				<span class="dis-inline-block slide100-txt-item animated visible-false">
					Interest rate angst trips up US equity bull market
				</span>

				<span class="dis-inline-block slide100-txt-item animated visible-false">
					Designer fashion show kicks off Variety Week
				</span>

				<span class="dis-inline-block slide100-txt-item animated visible-false">
					Microsoft quisque at ipsum vel orci eleifend ultrices
				</span>
			</span>
		</div>

		<div class="pos-relative size-a-2 bo-1-rad-22 of-hidden bocl11 m-tb-6">
			<input class="f1-s-1 cl6 plh9 s-full p-l-25 p-r-45" type="text" name="search" placeholder="Search">
			<button class="flex-c-c size-a-1 ab-t-r fs-20 cl2 hov-cl10 trans-03">
				<i class="zmdi zmdi-search"></i>
			</button>
		</div>
	</div>
</div>