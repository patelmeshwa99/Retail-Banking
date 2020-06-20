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
<<<<<<< HEAD
    <body>
    
    <%
=======
    <body onload="document.form1.text1.focus()">
                <div class="container-fluid" style="background-color: black; margin-top: -16px">
		<div class="container"><p style="padding-top: 10px"><h4><span style="color: #F7E100">FedChoice</span> <span style="color: white">Bank</span></h4></p></div>
		<div class="container">
			<nav class="navbar navbar-expand-md top-navbar">
			  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar" style="background-color:black; color: #F7E100">Expand</button>
			    <span class="navbar-toggler-icon"></span>
			  </button>
			  <div class="collapse navbar-collapse" id="collapsibleNavbar">
			    <ul class="navbar-nav">
			      <li class="nav-item active">
				      <a class="nav-link" href="#">Home</a>
                  </li>
				  <li class="nav-item dropdown" style="width:77%">
				      <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">Customer Management</a>
						  <div class="dropdown-menu">
						     <a class="dropdown-item" href="#">Link 1</a>
						     <a class="dropdown-item" href="#">Link 2</a>
						     <a class="dropdown-item" href="#">Link 3</a>
					      </div>
			      </li>
			      <li class="nav-item dropdown">
				      <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">Account Management</a>
						  <div class="dropdown-menu">
						      <a class="dropdown-item" href="#">Link 1</a>
						      <a class="dropdown-item" href="#">Link 2</a>
						      <a class="dropdown-item" href="#">Link 3</a>
						  </div>
				  </li>
				  <li class="nav-item dropdown">
					  <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">Status Details</a>
						  <div class="dropdown-menu">
						      <a class="dropdown-item" href="#">Link 1</a>
						      <a class="dropdown-item" href="#">Link 2</a>
						      <a class="dropdown-item" href="#">Link 3</a>
						  </div>
				  </li>
			      <li class="nav-item dropdown">
					  <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">Account Operations</a>
						   <div class="dropdown-menu">
						      <a class="dropdown-item" href="#">Link 1</a>
						      <a class="dropdown-item" href="#">Link 2</a>
						      <a class="dropdown-item" href="#">Link 3</a>
						   </div>
				  </li>
				  <li class="nav-item">
					<a class="nav-link" href="#">Logout</a>
				  </li>
			    </ul>
			  </div>  
			</nav>
		</div>
	</div>


        <div class="content">
            <div class="heading">
                <h4>Account Search</h4>
            </div>
                       <form method="post" action="control1" name="form1">
                <table>
                    <tr>
                        <td>Enter Account ID</td>
                        <td><input type="text" name="account_id" placeholder="100******"></td>
                    </tr>
                    <tr>
                        <td colspan="2">OR</td>
                    </tr>
                    <tr>
                        <td>Enter Customer_Id</td>
                        <td><input type="text" name="customer_id" placeholder="100******"></td>
                        <td><label for="cars">Choose an account_Type:</label>

                        <select id="type" name="account">
                            <option value="saving">Saving</option>
                            <option value="current">Current</option>
                               
                        </select>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" class="btn"><input type="submit" value="View" class="btn1"></td>
                    </tr>
                </table>
            </form>
             <table>
                               <%
                     ArrayList<customer> cl=new ArrayList<customer>();
                    cl=(ArrayList<customer>)request.getAttribute("customerlist");
                     if(cl!=null&&cl.size()>0)
                     {
                     for(int i=0; i<cl.size(); i++) 
                     {
                        customer c=new customer();
                         c=cl.get(i);
                    
                %>
                <tr align="center">
                    <td>Customer_Id: <%out.println(c.getCustomer_id());%><br><td>
                </tr>
                
                <tr align="center">
                    <td>Account_Id: <%out.println(c.getAccountId());%><br></td>
                </tr>
                <tr align="center">
                    <td>Account_Type: <%out.println(c.getAccountType()); %><br></td>
                </tr>
                <tr align="center">
                    <td>Balance: <% out.println( c.getBalance());%><br></td>
                </tr>
                <%}
                   }
                    %>
</table>
        </div>
        </div>

        <div class="container-fluid" style="height:7px; background-color: #F7E100"></div>
>>>>>>> 8eb99d115e25ae5fd24dfa9e236c5beffae6d0e1

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
