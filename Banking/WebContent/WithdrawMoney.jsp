<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <script src='main.js'></script>
    <style>
        body
        {
            background-image: linear-gradient(rgb(229, 226, 226),white);
            
        }
            .table>tbody>tr>td,
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
				  <li class="nav-item active">
                    <a class="nav-link" href="#">Account Details</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="#">Account Statement&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
                </li>
				  <li class="nav-item">
					<a class="nav-link" href="#">Logout</a>
				  </li>
			    </ul>
			  </div>  
			</nav>
		</div>
	</div>
    <br>
    <br>
    <h3><b><center>Withdraw Amount</center></h3>
    <br>
    <br>
    <div>
        <center>Customer ID : 10012536
        <br><br>
        Account ID : 11256300
        <br><br>
        Account type : Savings
        <br><br>
        Balance : 90000
        <br><br></center>
        <form>
            <span style="margin-left: 500px">Withdraw Amount :<input text type="text" name="depositamt" required="required">
            <br><br></span>
            <center><input type="submit" value="Submit" style="background-color: black;color:#F7E100; width: 150px;"></center></b>
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