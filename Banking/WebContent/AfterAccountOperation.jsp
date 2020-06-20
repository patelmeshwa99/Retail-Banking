<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <title>After account operation</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <style>
            .table>tbody>tr>th {
  border-top: none;
}
.first {
	width: 33%;
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

    </head>
    <body>
    <%

	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
	if(session.getAttribute("username")==null){
		response.sendRedirect("login.jsp");
	}
%>
    
                
        <%@ include file = "header.jsp" %>
        
        	<div class="jumbotron jumbotron-fluid">
	  <div class="container">
	    <div class="row">
		    <div class="col-3"></div>
		    <div class="col-6">
		    <center><h3 style="margin-top: -20px">After account operation</h3></center><br>
		    	<form action="AccountStatus.jsp" method="POST">
			    	<table class="table table-borderless">
					    <tr>
					      <th scope="col" class="first">Customer Id:</th>
					      <th scope="col"><input style="width: 100%" type="text" id="fname" name="cust_id" value="<%=request.getAttribute("cId")%>" readonly="true"></th>
					    </tr>
					    <tr>
					      <th scope="col" class="first">Account Id: </th>
					      <th scope="col"><input style="width: 100%" type="text" id="fname" name="account_id" value="<%=request.getAttribute("aId")%>" readonly="true"></th>
					    </tr>
					    <tr>
					      <th scope="col" class="first">Previous Balance: </th>
					      <th scope="col"><input style="width: 100%" type="text" id="fname" name="account_bal" value="<%=request.getAttribute("prev_bal")%>" readonly="true"></th>
					    </tr>
					    <tr>
					      <th scope="col" class="first">Deposit Amount: <span style="color:red">*</span></th>
					      <th scope="col"><input style="width: 100%" type="number" id="fname" name="amount"  value="<%=request.getAttribute("now_bal")%>" readonly="true"></th>
					    </tr>
					    <tr>
					      <th></th>
					      <th></th>
					    </tr>
					    <tr>
					      <th scope="col" colspan="2" class="first"><center><button type="submit" name="deposit" style="width: 40%" class="btn custom-button">Account Status</button></center></th>
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