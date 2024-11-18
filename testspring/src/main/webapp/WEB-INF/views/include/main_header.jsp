<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
// 현재 URI 가져오기
String currentURI = request.getRequestURI();

String homeActive = currentURI.contains("main") ? "active" : "";
String shopActive = currentURI.contains("shopGrid") ? "active" : "";
String blogActive = currentURI.contains("blog") ? "active" : "";
String contactActive = currentURI.contains("contact") ? "active" : "";
%>

<!-- Humberger Begin -->
<div class="humberger__menu__overlay"></div>
<div class="humberger__menu__wrapper">
	<div class="humberger__menu__logo">
		<a href="#"><img src="img/logo.png" alt=""></a>
	</div>
	<div class="humberger__menu__cart">
		<ul>
			<li><a href="#"><i class="fa fa-heart"></i> <span>1</span></a></li>
			<li><a href="#"><i class="fa fa-shopping-bag"></i> <span>3</span></a></li>
		</ul>
		<div class="header__cart__price">
			item: <span>$150.00</span>
		</div>
	</div>
	<div class="humberger__menu__widget">
		<div class="header__top__right__language">
			<img src="img/language.png" alt="">
			<div>English</div>
			<span class="arrow_carrot-down"></span>
			<ul>
				<li><a href="#">Spanis</a></li>
				<li><a href="#">English</a></li>
			</ul>
		</div>
		<div class="header__top__right__auth">
			<c:if test="${user==null }">
				<div class="header__top__right__auth">
					<a href="projectLogin"><i class="fa fa-user"></i> Login</a>
				</div>
			</c:if>

			<c:if test="${user!=null }">
				<div class="header__top__right__auth">
					<a href="myPage"><i class="fa fa-user"></i>
						${user.CUSTOMER_NAME}</a>
				</div>
			</c:if>
		</div>
	</div>
	<nav class="humberger__menu__nav mobile-menu">
		<ul>
			<li class="active"><a href="/">Home</a></li>
			<li><a href="shopGrid">Shop</a></li>
			<li><a href="#">Pages</a>
				<ul class="header__menu__dropdown">
					<li><a href="shopDetails">Shop Details</a></li>
					<li><a href="shoppingCart">Shoping Cart</a></li>
					<li><a href="checkout">Check Out</a></li>
					<li><a href="blogDetails">Blog Details</a></li>
				</ul></li>
			<li><a href="blog">Blog</a></li>
			<li><a href="contact">Contact</a></li>
		</ul>
	</nav>
	<div id="mobile-menu-wrap"></div>
	<div class="header__top__right__social">
		<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
			class="fa fa-twitter"></i></a> <a href="#"><i class="fa fa-linkedin"></i></a>
		<a href="#"><i class="fa fa-pinterest-p"></i></a>
	</div>
	<div class="humberger__menu__contact">
		<ul>
			<li><i class="fa fa-envelope"></i> hello@colorlib.com</li>
			<li>Free Shipping for all Order of $99</li>
		</ul>
	</div>
</div>
<!-- Humberger End -->

<!-- Header Section Begin -->
<header class="header">
	<div class="header__top">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 col-md-6">
					<div class="header__top__left">
						<ul>
							<li><i class="fa fa-envelope"></i> hello@colorlib.com</li>
							<li>Free Shipping for all Order of $99</li>
						</ul>
					</div>
				</div>
				<div class="col-lg-6 col-md-6">
					<div class="header__top__right">
						<div class="header__top__right__social">
							<a href="review"><i class="fa fa-facebook"></i></a> 
							<a href="#"><i class="fa fa-twitter"></i></a> <a href="#"><i
								class="fa fa-linkedin"></i></a> <a href="#"><i
								class="fa fa-pinterest-p"></i></a>
						</div>
						<div class="header__top__right__language">
							<img src="img/language.png" alt="">
							<div>English</div>
							<span class="arrow_carrot-down"></span>
							<ul>
								<li><a href="#">Spanis</a></li>
								<li><a href="#">English</a></li>
							</ul>
						</div>


						<c:if test="${user==null }">
							<div class="header__top__right__auth">
								<a href="projectLogin"><i class="fa fa-user"></i> Login</a>
							</div>
						</c:if>

						<c:if test="${user!=null }">
							<div class="header__top__right__auth">
								<a href="myPage"><i class="fa fa-user"></i>
									${user.CUSTOMER_NAME}</a>
							</div>
						</c:if>


					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-lg-3">
				<div class="header__logo">
					<a href="./index.html"><img src="img/logo.png" alt=""></a>
				</div>
			</div>
			<div class="col-lg-6">
				<nav class="header__menu">
					<ul>
						<li class="<%=homeActive%>"><a href="/">Home</a></li>
						<li class="<%=shopActive%>"><a href="shopGrid">Shop</a></li>
						<li><a href="#">Pages</a>
							<ul class="header__menu__dropdown">
								<li><a href="shopDetails">Shop Details</a></li>
								<li><a href="shoppingCart">Shoping Cart</a></li>
								<li><a href="checkout">Check Out</a></li>
								<li><a href="blogDetails">Blog Details</a></li>
							</ul></li>
						<li class="<%=blogActive%>"><a href="blog">Blog</a></li>
						<li class="<%=contactActive%>"><a href="contact">Contact</a></li>
					</ul>
				</nav>
			</div>
			<div class="col-lg-3">
				<div class="header__cart">
					<ul>
						<li><a href="#"><i class="fa fa-heart"></i> <span>1</span></a></li>
						<li><a href="#"><i class="fa fa-shopping-bag"></i> <span>3</span></a></li>
					</ul>
					<div class="header__cart__price">
						item: <span>$150.00</span>
					</div>
				</div>
			</div>
		</div>
		<div class="humberger__open">
			<i class="fa fa-bars"></i>
		</div>
	</div>
</header>
<!-- Header Section End -->
