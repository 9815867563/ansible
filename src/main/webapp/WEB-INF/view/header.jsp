<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
	<%@ taglib uri="http://www.springframework.org/tags" prefix="url" %>

<%@ page isELIgnored="false"%>

<html>
<head>
<meta charset="utf-8" />

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Header</title>


<!-- bootstrap -->
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


<link rel="stylesheet"
	href="<c:url value="/resources/css/scrolling-nav.css"/>" />


<!-- Scrolling Nav JavaScript -->
<!-- for smooth scrolling effect -->
<script
	src="<c:url value="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"/>"></script>
<!-- for nav bar to reduce size -->
<script src="<c:url value="/resources/js/scrolling-nav.js"/>"></script>


<!-- for social media glyphs -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
	
	<script>
	$(document).ready(function (){
		$('.dropdown-toggle').dropdown();
	});</script>

</head>


<body>


	<!-- Navigation bar-->

	<nav class="navbar navbar-inverse" role="navigation">
		<div class="container-fluid">

			<ul class="nav navbar-nav ">
			
			
 <c:forEach items="${categoryList }" var="c2">
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href='#'>${c2.name}<span class="caret"></span></a>
      <ul class="dropdown-menu">
      <c:forEach items="${c2.products }" var="c3">
      <url:url value="/getProductsByProductId/${c3.id }" var="url"></url:url>
      <li><a href="${url }">${c3.name}</ a></li>
      </c:forEach>
      </ul>
      </li>
      </c:forEach>

				<c:if test="${pageContext.request.userPrincipal.name!=null}">
					<security:authorize access="hasRole('ROLE_ADMIN')">
						<li><a href="<c:url value="/getAllProducts"/>">Browse All
								Products</a></li>


						<li><a href="<c:url value="/getAllCategories"/>">Browse
								All Categories</a></li>
						<li><a href="<c:url value="/getAllSuppliers"/>">Browse
								All Suppliers</a></li>
					</security:authorize>
				</c:if>


				<security:authorize access="hasRole('ROLE_USER')">
					<li><a href="<c:url value="/getAllProducts"/>">Browse All
							Products</a></li>
				</security:authorize>

				<security:authorize access="hasRole('ROLE_USER')">
					<li><a href="<c:url value="/cart/getCartId"></c:url>">Cart</a></li>
				</security:authorize>

			</ul>
			
			
			
		<%-- 	<li><c:url var="allProducts" value="/all/product/getAllProducts"></c:url></li>
			<li><a href="${allProducts }">Browse All Products</a>
			<li class="dropdown"><a href="" class="dropdown-toggle"
				data-toggle="dropdown"> Select by Category<b class="caret"></b></a>
				<ul class="dropdown-menu">
					<c:url var="url1"
						value="/all/product/productsByCategory?searchCondition=Interior"></c:url>
					<li><a href="${url1}">INTERIOR</a></li>

					<c:url var="url_2"
						value="/all/product/productsByCategory?searchCondition=Audio & Video"></c:url>
					<li><a href="${url_2}">AUDIO & VIDEO</a></li>

					<c:url var="url3"
						value="/all/product/productsByCategory?searchCondition=Exterior"></c:url>
					<li><a href="${url3}">EXTERIOR</a></li>
					</ul>

--%>




			<c:if test="${pageContext.request.userPrincipal.name==null}">


				<ul class="nav navbar-nav  navbar-right">

					<li><a href="<c:url value="/login"></c:url>">LOGIN</a></li>
					<li><a href="<c:url value="/customer/registration" ></c:url>">REGISTER</a></li>
					 <li><a href="<c:url value="/aboutUs"></c:url>">About Us</a></li>
                     <li><a href="<c:url value="/contactUs"></c:url>">Contact Us</a></li>
					



				</ul>

			</c:if>

			<c:if test="${pageContext.request.userPrincipal.name!=null}">
				<ul class="nav navbar-nav  navbar-right">

					<li><a>Welcome ${pageContext.request.userPrincipal.name }</a></li>

					<li><a
						href="<c:url value="/j_spring_security_logout"></c:url>">logout</a></li>

				</ul>
			</c:if>

		</div>
		<!-- ends logo and unordered list -->

	</nav> 
	
<%-- 	<!-- DC Page Header Start -->
  <div class="dc_gradient4">
    <h1><span></span>Yuzu</h1>
    <h2>The Electronics world</h2>
  </div>
<!-- DC Page Header End -->

	<nav class="navbar navbar-inverse">

		<div class="container-fluid">

			<ul class="nav navbar-nav ">

				<li><a href="<c:url value="/home"/>">Home</a></li>

				<li><a href="<c:url value="/aboutUs"/>">About us</a></li>


				<c:if test="${pageContext.request.userPrincipal.name!=null}">
					<security:authorize access="hasRole('ROLE_ADMIN')">
						<li><a href="<c:url value="/getAllProducts"/>">Browse All
							Products</a></li>


						<li><a href="<c:url value="/getAllCategories"/>">Browse All
							Categories</a></li>
							<li><a href="<c:url value="/getAllSuppliers"/>">Browse All
							Suppliers</a></li>
					</security:authorize>
						<security:authorize access="hasRole('ROLE_USER')">
					<li><a href="<c:url value="/getAllProducts"/>">Browse All
							Products</a></li>
</security:authorize>

					<security:authorize access="hasRole('ROLE_USER')">
						<li><a href="<c:url value="/cart/getCartId"></c:url>">Cart</a></li>
					</security:authorize>
					<li><a>Welcome ${pageContext.request.userPrincipal.name }</a></li>

					<li><a
						href="<c:url value="/j_spring_security_logout"></c:url>">logout</a></li>
				</c:if>

				<c:if test="${pageContext.request.userPrincipal.name==null}">
					<li><a href="<c:url value="/login"></c:url>">Login</a></li>
					<c:url value="/customer/registration" var="url"></c:url>
					<li><a href="${url }">Register</a></li>
				</c:if>
			</ul>

		</div>





	</nav>

--%>
	
</body>
</html>

