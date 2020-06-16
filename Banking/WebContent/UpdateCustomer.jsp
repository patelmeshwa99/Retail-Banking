<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>

.table>tbody>tr>td,
.table>tbody>tr>th {
  border-top: none;
}


.first {
	width: 45%;
}


@media only screen and (max-width: 995px) {
  .top-navbar .navbar-nav .nav-link {
  font-size: 75%;
  }
  
  h3 {
  	font-size: 80%;
  }
  
  .first {
  font-size: 80%;
  }
  
}

.custom-button{
	background-color: black;
	color: white;
}

</style>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

</head>
<body>

	<%@ include file = "header.jsp" %>
		
	<div class="jumbotron jumbotron-fluid">
	  <div class="container">
	    <div class="row">
		    <div class="col-3"></div>
		    <div class="col-6">
		    <center><h3 style="margin-top: -20px">Update Customer</h3></center><br>
		    	<form action="UpdateCustomerServlet" method="POST">
			    	<table class="table table-borderless">
					    <tr>
					      <th scope="col" class="first">Customer SSN Id</th>
					      <th scope="col"><input style="width: 100%" type="text" id="fname" name="ssnId" value="<%=request.getAttribute("ssn")%>" disabled></th>
					    </tr>
					    <tr>
					      <th scope="col" class="first">Customer Id</th>
					      <th scope="col"><input style="width: 100%" type="text" id="fname" name="customerId" value="<%=request.getAttribute("cId")%>" disabled></th>
					    </tr>
					    <tr>
					      <th scope="col" class="first">Old Customer Name</th>
					      <th scope="col"><input style="width: 100%" type="text" id="fname" name="old_name" value="<%=request.getAttribute("name")%>" disabled></th>
					    </tr>
					    <tr>
					      <th scope="col" class="first">New Customer Name <span style="color:red">*</span></th>
					      <th scope="col"><input style="width: 100%" type="text" id="fname" name="new_name" required></th>
					    </tr>
					    <tr>
					    <tr>
					      <th scope="col" class="first">Old Address<span style="color:red">*</span></th>
					      <th scope="col"><input style="width: 100%" type="text" id="fname" name="old_address" value="<%=request.getAttribute("address")%>" disabled></th>
					    </tr>
					    <tr>
					    <tr>
					      <th scope="col" class="first">New Address <span style="color:red">*</span></th>
					      <th scope="col"><input style="width: 100%" type="text" id="fname" name="new_address" required></th>
					    </tr>
					    <tr>
					    <tr>
					      <th scope="col" class="first">Old Age<span style="color:red">*</span></th>
					      <th scope="col"><input style="width: 100%" type="text" id="fname" name="old_age" value="<%=request.getAttribute("age")%>" disabled></th>
					    </tr>
					    <tr>
					    <tr>
					      <th scope="col" class="first">New Age<span style="color:red">*</span></th>
					      <th scope="col"><input style="width: 100%" type="text" id="fname" name="new_age" required></th>
					    </tr>
					    <tr>
					    	<th colspan="2"><span style="color: red">(*)Fields are mandatory</span></th></tr>
					    <tr>
					      <th scope="col" class="first"><button type="submit" style="width: 100%" class="btn custom-button">Submit</button></th>
					      <th scope="col"><button type="submit" style="width: 82%" class="btn custom-button">Reset</button></th>
					    </tr> 
					</table>
				</form>
		    </div>
	    	<div class="col-3"></div>
	  	</div>
  	  </div>
  </div>
	
	<%@ include file = "footer.jsp" %>

</body>
</html>