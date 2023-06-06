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
	background-image:url(https://wallpaper-mania.com/wp-content/uploads/2018/09/High_resolution_wallpaper_background_ID_77700350973.jpg);

}
</style>


<body class="bg-secondary">


	<div class="container ">


		<div class="row">

			<div class="container col-md-6 offset-ad-3">

				<h1 class="text-center mb-3 mt-3 text-info text-capitalize">Fill the new package detail's</h1>

				<form action="handle-package" method="post">
					<div class="form-group">
						<label for="name" class="text-dark">Package Name</label> <input type="text"
							class="form-control" id="name" aria-describedby="emailHelp"
							name="package_Name" placeholder="Enter the package name here">
					</div>

					<div class="form-group">

						<label for="description">Package Details</label>

						<textarea class="form-control" name="package_Details"
							id="description" rows="5" placeholder="Enter the package details"></textarea>

					</div>

					<div class="form-group">

						<label for="price">Package Price</label> <input type="number"
							placeholder="Enter Package Price" name="package_Price"
							class="form-control" id="price">

					</div>
					<div class="form-group">

						<label for="price">Tour Days</label> <input type="number"
							placeholder="Enter Package Price" name="tour_Days"
							class="form-control" id="price">

					</div>
					<!-- <div class="form-group">

						<label for="price">Tour Start Date</label> <input type="date"
							placeholder="Enter Tour Start Date" name="tour_StartDate"
							class="form-control" id="price">

					</div> -->


					<div class="container text-center mt-2">

						<a href="${pageContext.request.contextPath }/"
							class="btn btn-outline-danger">&#171; Back</a>
						<button type="submit" class="btn btn-primary">Add</button>

					</div>

				</form>

			</div>
		</div>
	</div>

</body>
</html>