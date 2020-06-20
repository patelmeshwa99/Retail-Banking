<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
					      <th scope="col" class="first">Customer Id: </th>
					      <th scope="col"><input style="width: 100%" type="text" id="fname" name="account_id" value="<%=request.getAttribute("customerId")%>" readonly="true"></th>
					    </tr>
					    <tr><% request.setAttribute("accIds", request.getAttribute("accIds")); %>
					      <th scope="col" class="first">Account Id: <span style="color:red">*</span></th><%System.out.println("In intermediate"); %>
					      <th scope="col"><select name="select_id">
										    <c:forEach var="line" items="${accIds}">
										        <option><c:out value="${line}"/></option>
										    </c:forEach>
 										</select>
						  </th>
					    </tr>
					    <tr>
					      <th scope="col" class="first"><button type="submit" name="view2" style="width: 100%" class="btn custom-button">View</button></th>
					      <th scope="col"><button type="submit" style="width: 82%" name="delete2" class="btn custom-button">Delete</button></th>
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