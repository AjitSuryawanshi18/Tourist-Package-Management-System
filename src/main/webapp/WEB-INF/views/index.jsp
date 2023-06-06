<html>
<head>
<%@include file="./base_package.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link href="<c:out value="/resources/css/style.css" />">
<script src="<c:out value="/resources/js/script.js" />"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css">

<style type="text/css">

body{
	background-image:url(https://wallpapercave.com/wp/BvDS17F.jpg);

}
</style>



</head>
<body >

	<div class="container mt-3 ">
		<div class="row">
			<div class="clo-md-12">
				<h1 class="text-center  mb-2 text-capitalize"><span class="bg-light"> Welcome to tourist's Package Management </span></h1>
				<table class="table table-info ">
<!-- colspan="2" class="table-active"
 -->					<thead class="table-dark table-striped">
						<tr>
							<th scope="col">Package Id</th>
							<th scope="col">Package Name</th>
							<th scope="col">Package details</th>
							<th scope="col">Package Price</th>
							<th scope="col">Tour Days</th>
							<th scope="col">Action</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${packages }" var="p">
							<tr>
								<th scope="row">pro_sr${p.package_Id }</th>
								<td >${p.package_Name }</td>
								<td >${p.package_Details }</td>
								<td class="font-weight-bold"> &#8377; ${p.package_Price }</td>
								<td > ${p.tour_Days }</td>
								<td>
								<a href="delete/${p.package_Id } "><i class="fa-solid fa-trash-can text-danger" style="font-size:20px"></i></a>
								<a href="update/${p.package_Id }"><i class="fa-regular fa-pen-to-square text-success ms-3" style="font-size:20px"></i></a>
							    
							    </td>
							</tr>
						</c:forEach>
					</tbody>
				</table>

				<div class="container text-center">

					<a href="add-package" class="btn btn-outline-info text-white">Add
						Package</a>
				</div>
			</div>
		</div>
	</div>

</body>
</html>
