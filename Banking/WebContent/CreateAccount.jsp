<%-- 
    Document   : Create_Account
    Created on : 13 Jun, 2020, 1:08:24 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Create Account</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
<<<<<<< HEAD
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<style>

.table>tbody>tr>td,
.table>tbody>tr>th {
  border-top: none;
=======
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <style>
            body{
                background-color: rgb(240, 240, 245);
                text-align: center;
}
form {
    display: inline-block;
>>>>>>> 8eb99d115e25ae5fd24dfa9e236c5beffae6d0e1
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
<<<<<<< HEAD

</style>     
    </head>
    <body>
    
    <%

	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
	if(session.getAttribute("username")==null){
		response.sendRedirect("login.jsp");
	}
%>
=======
  </style>
    </head>
    <body>
 <div class="container">
    <center><h2><strong>Create Account</strong></h2></center>
    
    <form action="http://localhost:8084/CaseStudyTcs/AccountCreateController" method="POST" >
<table>
    <tr>
>>>>>>> 8eb99d115e25ae5fd24dfa9e236c5beffae6d0e1
    
    	<%@ include file = "header.jsp" %>
<div class="jumbotron jumbotron-fluid">
  <div class="container">
    <div class="row">
	    <div class="col-3"></div>
	    <div class="col-6">
	    <center><h3 style="margin-top: -20px">Create Account</h3></center><br>
	    	<form id="myForm" action="CreateAccountServlet" method="POST">
		    	<table class="table table-borderless">
				    <tr>
				      <th scope="col" class="first">Customer Id: <span style="color:red">*</span></th>
				      <th scope="col"><input style="width: 100%" type="text" id="cId" name="customerId" required></th>
				    </tr>
				    <tr>
				      <th scope="col" class="first">Account type: <span style="color:red">*</span></th>
				      <th scope="col">
					      <select id="account" name="account">
						    <option value="Current">Current</option>
						    <option value="Savings">Savings</option>
						  </select>
					  </th>
				    </tr>
				    <tr>
				      <th scope="col" class="first">Deposit Amount: <span style="color:red">*</span></th>
				      <th scope="col"><input style="width: 100%" type="text" id="da" name="deposit_amount" required></th>
				    </tr>
				    <tr>
				    	<th colspan="2"><span style="color: red">(*)Fields are mandatory</span></th>
				    </tr>
				    <tr>
				    	<th></th>
				    </tr>
				    <tr>
				      <th scope="col" colspan="2" class="first"><center><button type="submit" style="width: 40%" class="btn custom-button">Create</button></center></th>
				    </tr> 
				</table>
			</form>
	    </div>
    	<div class="col-3"></div>
  	</div>
  </div>
</div>

<<<<<<< HEAD
<%@ include file = "footer.jsp" %>
</body>
</html>
=======
        <td><label>Customer Id</label></td>
        <td><input type="text" name="customerId" id="customerId" class="form-control"/></td>
  
</tr>
<tr>

<td><label>Account Type</label></td>
<td><select name="accountType" id="accountType" name="accountType" id="accountType" class="form-control">
        <option value="savings">Savings</option>
        <option value="current">Current</option>
      </select></td>

</tr>

<tr>
    <td> <label>Deposit Amount</label></td>
    <td><input type="text" name="depositAmount" id="depositAmount" class="form-control"></td>
</tr>
</table>
        <input type="hidden" name="action" value="createAccount"/>
        <input type="submit" style="background-color:black;color:yellow;margin: 0px" class="btn btn-default" value="Submit"/>
 
</form>
        </div>
	    
 </body>
</html>
>>>>>>> 8eb99d115e25ae5fd24dfa9e236c5beffae6d0e1
