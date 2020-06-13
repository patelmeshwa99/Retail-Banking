<%-- 
    Document   : US009
    Created on : Jun 13, 2020, 4:08:25 PM
    Author     : Manoj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Customer Search</title>
        <meta charset="UTF-8">
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
  
  .first {
  font-size: 80%;
  }
  
}

.navbar-custom {
    background-color: #000000;
}

.navbar-custom .navbar-nav .nav-link {
	color: #F7E100;
	font-weight: bold;
}

.custom-button{
	background-color: black;
	color: white;
}
.content
{
    background-color: #ccccff;
    padding-top: 50px;
    padding-left: 550px;
}
td{
    padding-top: 20px;
    padding-left: 15px;
    padding-right: 15px;
}
.btn
{
    position: inherit;
    padding-top: 50px;
    padding-left: 125px;
    

}
.btn1
{
    box-sizing: 50px;
     border-radius: 0;
    border: 0;
     transition: 0.5s 0.2s;
     font-size: inherit;
    font-weight: normal;
    background-color: darkgray;
    color: wheat;
}
.heading
{
    padding-left: 50px;
    padding-top: 50px;
    
}
h4
{
    font-size: 35px;
    font-weight: bold;
}
li.nav-item
{
	width: 33%;
}

.navbar-custom {
    background-color: #000000;
}

.navbar-custom .navbar-nav .nav-link {
	color: #F7E100;
	font-weight: bold;
}
        </style>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>


    </head>
    <body>
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
                <h4>Customer Search</h4>
            </div>
            <form method="search" target="GET">
                <table>
                    <tr>
                        <td>Enter SSN ID</td>
                        <td><input type="text" name="ssn_id" pattern="[0-9]{1,9}" placeholder="100******"></td>
                    </tr>
                    <tr>
                        <td colspan="2">OR</td>
                    </tr>
                    <tr>
                        <td>Enter Customer_Id</td>
                        <td><input type="text" name="customer_id" pattern="[0-9]{1,9}" placeholder="100******"></td>
                    </tr>
                    <tr>
                        <td colspan="2" class="btn"><input type="submit" value="View" class="btn1"></td>
                    </tr>
                </table>
            </form>
        </div>
        <div class="container-fluid" style="height:7px; background-color: #F7E100"></div>

<div class="container-fluid" style="background-color: black">
	<div class="container">
		<nav class="navbar navbar-expand-sm navbar-custom justify-content-center">
		
		  <ul class="navbar-nav"style="width: 100%">
		    <li class="nav-item">
		      <a class="nav-link" href="#" style="text-align:center">About Us</a>
		    </li>
		    <li class="nav-item">
		      <a class="nav-link" href="#" style="text-align:center">Services</a>
		    </li>
		    <li class="nav-item">
		      <a class="nav-link" href="#" style="text-align:center">Contact Us</a>
		    </li>
		  </ul>
		</nav>
	</div>
</div>
    </body>
</html>
