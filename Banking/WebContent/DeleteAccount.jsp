<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
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
<title>Delete Account</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
  <script>
function cancel(){
	const form = document.getElementById("myForm");
	form.action="AccountSearch.jsp";
}
</script>
  
</head>
<body>
<<<<<<< HEAD
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
		    <center><h3 style="margin-top: -20px">Delete/View Account</h3></center><br>
		    	<form action="DeleteAccountServlet" method="POST" id="myForm">
			    	<table class="table table-borderless">
					    <tr>
					      <th scope="col" class="first">Account Id</th>
					      <th scope="col"><input style="width: 100%" type="text" id="fname" name="accountId" value="<%=request.getAttribute("aId")%>" readonly="true"></th>
					    </tr>
					    <tr>
					      <th scope="col" class="first">Account Type</th>
					      <th scope="col"><input style="width: 100%" type="text" id="fname" name="accountType" value="<%=request.getAttribute("aType")%>" disabled></th>
					    </tr>
					    <tr>
					      <th scope="col" class="first"><button type="submit" style="width: 100%" class="btn custom-button">Confirm Delete</button></th>
					      <th scope="col"><button type="submit" onclick="cancel()" style="width: 82%" class="btn custom-button">Cancel</button></th>
					    </tr> 
					</table>
				</form>
		    </div>
	    	<div class="col-3"></div>
	  	</div>
  	  </div>
  </div>
	
	<%@ include file = "footer.jsp" %>

=======
<%@ include file = "header.jsp" %>
	<div class="content">
        <div class="heading">
            <h4>Delect Account</h4>
        </div>
            <div class="inner_table">
                <form action="delete" method="post">
                <table>
                    <tr>
                        <td class="label">Account Id</td>
                        <td class="box">      <input type="text" name="account_id" placeholder="100******">
                        </td>
                    </tr>
                    <tr>
                        <td class="label">
                            Account Type
                        </td>
                        <td class="box">     <input type="text" name="account_type" pattern="[A-Za-z]{1,}" placeholder="Current"></td>
                    </tr>
                    <tr>
                        <td></td>
                    
                        <td class="button">
                            
                            <input class="btn" type="Submit" value="Delete">
                        </td>
                    </tr>
                </table>
                </form>   </div>
        </div>
<%@ include file = "footer.jsp" %>
>>>>>>> 8eb99d115e25ae5fd24dfa9e236c5beffae6d0e1
</body>
</html>
