<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>

li.nav-item
{
	width: 33%;
}

.navbar-custom {
    background-color: #000000;
}

.navbar-custom .navbar-nav .nav-link {
	color: #F7E100;
	font-weight: bold;
}

.details{
	color: #E8E8E8;
	text-align: justify;
	text-justify: inter-word;
	font-size: 80%;
	line-height: 1.5;
	padding-left:30px;
}

@media only screen and (max-width: 995px) {
  .navbar-custom .navbar-nav .nav-link {
  	font-size: 75%;
  }
  
  .details{
  	font-size: 75%;
  	line-height: 1.4;
  }
  
}

</style>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>
	
	<div class="container-fluid" style="height:7px; margin-top:-40px; background-color: #F7E100"></div>
	
	<div class="container-fluid" style="background-color: black">
	<div class="container">
		<nav class="navbar navbar-expand-sm navbar-custom justify-content-center">
		
		  <ul class="navbar-nav"style="width: 100%">
		    <li class="nav-item">
		      <a class="nav-link" href="#" style="text-align:center">About Us</a>
		      <div class="details">Lorem Ipsum is simply dummy text of the printing and type setting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</div>
		    </li>
		    <li class="nav-item">
		      <a class="nav-link" href="#" style="text-align:center">Services</a>
		      <div class="details">Lorem Ipsum is simply dummy text of the printing and type setting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.</div>
		    </li>
		    <li class="nav-item">
		      <a class="nav-link" href="#" style="text-align:center">Contact Us</a>
		      <div class="details">Email: xyz@gmail.com<br>Contact No: +91-9999999999<br>Address: Lorem Ipsum is simply dummy text.</div>
		    </li>
		  </ul>
		</nav>
	</div>
</div>
	

</body>
</html>