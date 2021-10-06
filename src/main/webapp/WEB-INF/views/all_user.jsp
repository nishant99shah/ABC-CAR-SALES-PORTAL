<%@ page contentType="text/html; charset=US-ASCII"  %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

<!--  Enable Bootstrap -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Lato"
	rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Montserrat"
	rel="stylesheet" type="text/css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>


<!--  Access the Static Resources without using spring URL -->
<link href="/ABC_Car_Portal/css/style.css" rel="stylesheet" />


</head>

<body>

	<%@ include file="header.jsp"%>


	<!-- First Container -->
	<div class="container-fluid bg-1">
		<div>
			<h3 class="text-center text-primary">User List</h3>
			<br>

			<div class="row">

				<div class="col-md-12">
				
					<c:if test="${not empty userlists}">
					
					<table class="table table-striped table-bordered table-hover">

						<thead>
							<tr>
								<th class="text-center text-primary">No.</th>
								<th class="text-center text-primary">User ID </th>
								<th class="text-center text-primary">Full Name</th>
								<th class="text-center text-primary">User Name </th>
								<th class="text-center text-primary">Password</th>
								<th class="text-center text-primary">Actions</th>
							</tr>
						</thead>
						
						<tbody>
						
						<% int i=1; %>
						<c:forEach var="user" items="${userlists}">
						
							<tr>
								<td class="text-center text-dark"><%=i %></td>
								<td class="text-center text-dark">${user.id}</td>
								<td class="text-center text-dark">${user.name}</td>
								<td class="text-center text-dark">${user.userName}</td>
								<td class="text-center text-dark">${user.password}</td>

								<td class="text-center" >
									<button class="btn btn-success">View </button>
								</td>
							</tr>
							<% i++; %>
						</c:forEach>

						</tbody>
					</table>
					
					</c:if>
					
				</div>
			</div>
			
			<!--  End User Lists  -->

		</div>
	</div>


	<%@ include file="footer.jsp"%>
	</body>
	</html>