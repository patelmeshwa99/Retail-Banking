<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<style>
.top-navbar {
	background-color: #F7E100;
}

.top-navbar .navbar-nav .nav-link {
    color: black;
    font-weight: bold;
    display: inline-block;
    white-space: nowrap;
}

@media only screen and (max-width: 995px) {
  .top-navbar .navbar-nav .nav-link {
  font-size: 75%;
  }
  
}

</style>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
  <script>
  function callServlet(){
	  document.newForm.action = "LogoutServlet";
      document.newForm.submit();
  }
  </script>
</head>
<body>
<div class="container-fluid" style="background-color: black; margin-top: -16px">
		<div class="container"><p style="padding-top: 10px"><h4><span style="color: #F7E100">FedChoice</span> <span style="color: white">Bank</span></h4></p></div>
		<div class="container">
			<nav class="navbar navbar-expand-md top-navbar">
			  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar" style="background-color:black; color: #F7E100">Expand</button>
			    <span class="navbar-toggler-icon"></span>
			  <div class="collapse navbar-collapse" id="collapsibleNavbar">
			    <ul class="navbar-nav">
			      <li class="nav-item active">
				      <a class="nav-link" href="Home.jsp">Home</a>
                  </li>
				  <li class="nav-item dropdown" style="width:77%">
				      <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">Customer Management</a>
						  <div class="dropdown-menu">
						     <a class="dropdown-item" href="CreateCustomer.jsp">Create Customer</a>
						     <a class="dropdown-item" href="CustomerSearch.jsp">Update Customer</a>
						     <a class="dropdown-item" href="CustomerSearch.jsp">Delete Customer</a>
					      </div>
			      </li>
			      <li class="nav-item dropdown">
				      <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">Account Management</a>
						  <div class="dropdown-menu">
						      <a class="dropdown-item" href="CreateAccount.jsp">Create Account</a>
						      <a class="dropdown-item" href="AccountSearch.jsp">Delete Account</a>
						  </div>
				  </li>
				  <li class="nav-item dropdown">
					  <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">Status Details</a>
						  <div class="dropdown-menu">
						      <a class="dropdown-item" href="CustomerStatus.jsp">Customer Status</a>
						      <a class="dropdown-item" href="AccountStatus.jsp">Account Status</a>
						  </div>
				  </li>
			      <li class="nav-item dropdown">
					  <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">Account Operations</a>
						   <div class="dropdown-menu">
						      <a class="dropdown-item" href="AccountSearch.jsp">Deposit</a>
						      <a class="dropdown-item" href="AccountSearch.jsp">Withdraw</a>
						   </div>
				  </li>
				  <li class="nav-item">
					<form name="newForm" method="GET"><a class="nav-link" href="#" onclick="callServlet();">Logout</a></form>
				  </li>
			    </ul>
			  </div>  
			</nav>
		</div>
	</div>
</body>
</html>