<%-- 
    Document   : US009
    Created on : Jun 13, 2020, 4:08:25 PM
    Author     : Manoj
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Customer Search</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <style>
            .table>tbody>tr>th {
  border-top: none;
}
.first {
	width: 45%;
}
li.nav-item
{
	width: 33%;
}

@media only screen and (max-width: 995px) {
  
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


    </head>
    <body>
                
        <%@ include file = "header.jsp" %>
        
        	<div class="jumbotron jumbotron-fluid" style="height:75vh">
	  <div class="container">
	    <div class="row">
		    <div class="col-3"></div>
		    <div class="col-6">
		    <center><h3 style="margin-top: -20px">Customer Search</h3></center><br>
		    	<form action="SearchCustomerServlet" method="POST">
			    	<table class="table table-borderless">
					    <tr>
					      <th scope="col" class="first">Enter SSN Id: <span style="color:red">*</span></th>
					      <th scope="col"><input style="width: 100%" type="text" id="fname"pattern="[0-9]{1,9}" placeholder="100******" name="ssn_id" required></th>
					    </tr>
					    <tr>
					    	<th colspan="2">OR</th>
					    </tr>
					    <tr>
					      <th scope="col" class="first">Enter Customer_Id<span style="color:red">*</span></th>
					      <th scope="col"><input style="width: 100%" type="text" id="fname" name="customer_id" pattern="[0-9]{1,9}" placeholder="100******" required></th>
					    </tr>
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