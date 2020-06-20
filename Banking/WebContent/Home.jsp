<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<style>
.center{
	margin: 0; 
	position: absolute; 
	top: 45%; 
	left: 50%;
	-ms-transform: translate(-50%, -50%); 
	transform: translate(-50%, -50%);"
}
</style>
</head>
<body>

<%

	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
	if(session.getAttribute("username")==null){
		response.sendRedirect("login.jsp");
	}
%>

 <%@ include file = "header.jsp" %>
 	
 	<div class="jumbotron jumbotron-fluid" style="text-align: center; height: 60vh;">
 		<h4 class="center">Welcome to FedChoice Bank!!!</h4>
 	</div>
 
 <%@ include file = "footer.jsp" %>

</body>
</html>