<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="./base_package.jsp"%>
</head>
<style type="text/css">

body{
	background-image:url(https://wallpaperswide.com/download/purple_leaves-wallpaper-1440x900.jpg);

}
</style>

<body class="bg-success">




	<div class="row">

		<div class="col-md-6 offset-ad-3 container">

			<h1 class="text-center mb-3 mt-3 text-warning text-capitalize">Change <span class="text-info bg-dark">${packages.package_Name }</span>  package detail's</h1>


			<form action="${pageContext.request.contextPath }/handle-package"
				method="post">
				<input type="hidden" value="${packages.package_Id }" name="package_Id">
				<br>
				<div class="form-group">
					<label for="name">Package Name</label> <input type="text"
						class="form-control" id="name" aria-describedby="emailHelp"
						name="package_Name" placeholder="Enter the package name here"
						value="${packages.package_Name }">

				</div>

				<div class="form-group">

					<label for="details">Package Details</label>

					<textarea class="form-control" name="package_Details" id="description"
						rows"5" placeholder="Enter the product description">${packages.package_Details }</textarea>

				</div>
				<div class="form-group">

					<label for="price">Package Price</label> <input type="text"
						placeholder="Enter Product Price" name="package_Price"
						class="form-control" id="price" value=" &#8377; ${packages.package_Price }">

				</div>
				<div class="form-group">

					<label for="price">Package Tour Days</label> <input type="text"
						placeholder="Enter Product Price" name="tour_Days"
						class="form-control" id="price" value="${packages.tour_Days }">

				</div>
				<div class="container text-center mt-2">

					<a href="${pageContext.request.contextPath }/"
						class="btn btn-outline-primary">&#171; Back</a>
					<button type="submit" class="btn btn-warning">update</button>

				</div>

			</form>

		</div>
	</div>

</body>
</html>