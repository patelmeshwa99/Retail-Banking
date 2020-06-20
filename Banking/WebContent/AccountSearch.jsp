<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Account Search</title>
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
<script>
jQuery(function ($) {
    var $inputs = $('input[name=account_id],input[name=customer_id]');
    $inputs.on('input', function () {
        // Set the required property of the other input to false if this input is not empty.
        $inputs.not(this).prop('required', !$(this).val().length);
    });
});
</script>
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
		    <center><h3 style="margin-top: -20px">Account Search</h3></center><br>
		    	<form action="SearchAccountServlet" method="POST">
			    	<table class="table table-borderless">
					    <tr>
					      <th scope="col" class="first">Account Id: <span style="color:red">*</span></th>
					      <th scope="col"><input style="width: 100%" type="text" id="fname" pattern="[0-9]{1,9}" placeholder="100******" name="account_id" required></th>
					    </tr>
					    <tr>
					    	<th colspan="2">OR</th>
					    </tr>
					    <tr>
					      <th scope="col" class="first">Customer Id: <span style="color:red">*</span></th>
					      <th scope="col"><input style="width: 100%" type="text" id="fname" name="customer_id" pattern="[0-9]{1,9}" placeholder="100******" required></th>
					    </tr>
					    <tr>
					      <th scope="col" class="first"><button type="submit" name="view" style="width: 100%" class="btn custom-button">View</button></th>
					      <th scope="col"><button type="submit" style="width: 82%" name="delete" class="btn custom-button">Delete</button></th>
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