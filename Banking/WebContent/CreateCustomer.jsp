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
  <script src="js/validate.js"></script>
<script>
function check_ssn() {
	const ssnId = document.getElementById("ssn").value;
	if(ssnId.length==9){
		document.getElementById("myForm").action = "CreateCustomer";
		return true;
	}
		alert("SSN should be 9 characters long!!");
		reset();
		
}

	function reset(){
	  document.getElementById("myForm").reset();
	}


</script>
</head>
<body>
<%

	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
	if(session.getAttribute("username")==null){
		response.sendRedirect("login.jsp");
	}
%>

<%response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); %>
<%@ include file = "header.jsp" %>
<div class="jumbotron jumbotron-fluid">
  <div class="container">
    <div class="row">
	    <div class="col-3"></div>
	    <div class="col-6">
	    <center><h3 style="margin-top: -20px">Create Customer Screen</h3></center><br>
	    	<form id="myForm" action="" method="POST" onsubmit="check_ssn()">
		    	<table class="table table-borderless">
				    <tr>
				      <th scope="col" class="first">Customer SSM Id: <span style="color:red">*</span></th>
				      <th scope="col"><input style="width: 100%" type="text" id="ssn" name="ssnId" required></th>
				    </tr>
				    <tr>
				      <th scope="col" class="first">Customer Name: <span style="color:red">*</span></th>
				      <th scope="col"><input style="width: 100%" type="text" id="fname" name="name" required></th>
				    </tr>
				    <tr>
				      <th scope="col" class="first">Age: <span style="color:red">*</span></th>
				      <th scope="col"><input style="width: 100%" type="text" id="fname" name="age" required></th>
				    </tr>
				    <tr>
				      <th scope="col" class="first">Address: <span style="color:red">*</span></th>
				      <th scope="col"><input style="width: 100%" type="text" id="fname" name="address" required></th>
				    </tr>
				    <tr>
				      <th scope="col" class="first">State: <span style="color:red">*</span></th>
				      <th scope="col">
					      <select id="cars" name="state">
						    <option value="Gujarat">Gujarat</option>
						    <option value="Maharashtra">Maharashtra</option>
						    <option value="West Bengal">West Bengal</option>
						    <option value="Delhi">Delhi</option>
						  </select>
					 </th>
				    </tr>
				    <tr>
				      <th scope="col" class="first">City: <span style="color:red">*</span></th>
				      <th scope="col">
				      	<select id="cars" name="city">
						    <option value="Ahmedabad">Ahmedabad</option>
						    <option value="Gandhinagar">Gandhinagar</option>
						    <option value="Rajkot">Rajkot</option>
						    <option value="Surat">Surat</option>
						  </select>
				      </th>
				    </tr>
				    <tr><th colspan="2"><span style="color: red">(*)Fields are mandatory</span></th></tr>
				    <tr>
				      <th scope="col" class="first"><button type="submit" style="width: 100%" class="btn custom-button">Submit</button></th>
				      <th scope="col"><button type="button" style="width: 82%" onclick="reset()" class="btn custom-button">Reset</button></th>
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