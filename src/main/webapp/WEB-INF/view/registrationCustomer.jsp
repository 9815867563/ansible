<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="url"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width,initial-scale=1">
<!-- Latest compiled and minified CSS -->
<!-- DC Gradient Buttons CSS -->
<link type="text/css" rel="stylesheet" href="http://cdn.dcodes.net/2/gradient_buttons/css/dc_gradient_buttons.css" />

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.css">
<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!-- <link rel="stylesheet" href='../resources/theme1/css/checkoutcss.css'> -->
<title>Registration</title>


<!-- DC Contact Form CSS -->
<link type="text/css" rel="stylesheet"

	href="http://cdn.dcodes.net/2/contact_forms/css/dc_form_contact_dark.css" />
<link type="text/css" rel="stylesheet"
	href="http://cdn.dcodes.net/2/contact_forms/css/dc_form_contact_light.css" />
<!-- DC Contact Form JS -->
<script type="text/javascript"
	src="http://cdn.dcodes.net/2/contact_forms/js/dc_form_contact.js"></script>
	
	
</head>


<%-- for background image --%>
<style type="text/css">
body { background:#fe5f03 url('http://cdn.dcodes.net/2/bg_images/color/c17.jpg'); }
</style>

</head>
<body>
	<%@ include file="header.jsp"%>
	<center>
	<h2>User Registration</h2>


	<div class="container-wrapper">
		<div class="container">
			<div class="page-header">
			
				<h1>Register Customer</h1>
				

				<p class="lead">Please fill in your information below:</p>
			</div>
			</center>
			<c:url value="/customer/registration" var="url"></c:url>
			<center>
			
			<form:form action="${url}" method="post" commandName="customer"
				
 class="dc_form_contact_light frame tbar">
				<h3>Basic Info:</h3>


				<div class="form-group">
					<label for="name">Name</label>


					<form:errors path="customerName" cssStyle="color: #ff0000" />
					<form:input path="customerName" class="form-Control" />
				</div>

				<div class="form-group">
					<label for="email">Email</label>

					<form:errors path="customerEmail" cssStyle="color: #ff0000" />
					<form:input path="customerEmail" class="form-Control" />
					<c:if test="${duplicateEmail!=null }">
        ${duplicateEmail }
        </c:if>

				</div>


				<div class="form-group">
					<label for="phone">Phone</label>
					<form:input path="customerPhone" class="form-Control" />

				</div>

				<div class="form-group">
					<label for="username">Username</label>
					<form:errors path="user.name" cssStyle="color: #ff0000" />
					<form:input path="user.name" class="form-Control" />
					<c:if test="${duplicateUname!=null }">
       			 ${duplicateUname }
            </c:if>
				</div>

				<div class="form-group">
					<label for="password">Password</label>
					<form:errors path="user.password" cssStyle="color: #ff0000" />
					<form:password path="user.password" class="form-Control" />
				</div>


				<br />

				<h3>Billing Address:</h3>

				<div class="form-group">
					<label for="billingStreet">Street Name</label>
					<form:input path="billingAddress.streetName" class="form-Control" />
				</div>

				<div class="form-group">
					<label for="billingApartmentNumber">Apartment Number</label>
					<form:input path="billingAddress.apartmentNumber"
						class="form-Control" />
				</div>

				<div class="form-group">
					<label for="billingCity">City</label>
					<form:input path="billingAddress.city" class="form-Control" />
				</div>

				<div class="form-group">
					<label for="billingState">State</label>
					<form:input path="billingAddress.state" class="form-Control" />
				</div>

				<div class="form-group">
					<label for="billingCountry">Country</label>
					<form:input path="billingAddress.country" class="form-Control" />
				</div>

				<div class="form-group">
					<label for="billingZip">Zipcode</label>
					<form:input path="billingAddress.zipcode" class="form-Control" />
				</div>

				<br />

				<h3>Shipping Address:</h3>

				<div class="form-group">
					<label for="shippingStreet">Street Name</label>
					<form:input path="shippingAddress.streetName" class="form-Control" />
				</div>

				<div class="form-group">
					<label for="shippingApartmentNumber">Apartment Number</label>
					<form:input path="shippingAddress.apartmentNumber"
						class="form-Control" />
				</div>

				<div class="form-group">
					<label for="shippingCity">City</label>
					<form:input path="shippingAddress.city" class="form-Control" />
				</div>

				<div class="form-group">
					<label for="shippingState">State</label>
					<form:input path="shippingAddress.state" class="form-Control" />
				</div>

				<div class="form-group">
					<label for="shippingCountry">Country</label>
					<form:input path="shippingAddress.country" class="form-Control" />
				</div>

				<div class="form-group">
					<label for="shippingZip">Zipcode</label>
					<form:input path="shippingAddress.zipcode" class="form-Control" />
				</div>

				<br />
				<br />

				<input type="submit" value="Submit" class="dc_gradient_button orange">
				<a href="<c:url value="/" />" class="dc_gradient_button orange">Cancel</a>
				

			</form:form>
			</center>
		</div>
	</div>

	</div>
</body>
<%@ include file="footer.jsp"%>

</html>