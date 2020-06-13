<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <style>
        table,tr,td{
            border:2px solid black;
        }
        table {
        border-collapse: collapse;
  
        }
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
                    <a class="nav-link" href="#">MyProfile</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="#">Account Information&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">Transaction Details</a>
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
    <br>
    <br>
    <center><h3><b>Account Statment</h3></center>
    <br><br>
    <div style="margin-left:570px;">
     <form action="">    
    Account ID :<span style="color: red;">*</span>&nbsp;
    <input type="text" name="accountid" required="required" pattern="[0-9]{9}" style="width: 130px;" >
    <br><br>
    Start Date:<span style="color: red;">*</span>&nbsp;&nbsp;&nbsp; <input type="date" name="startdate" style="width: 130px;" required="required">
    <br><br>
    End Date:<span style="color: red;">*</span> &nbsp;&nbsp;&nbsp;<input type="date" name="enddate" style="width: 130px;" required="required">
    <br><br></b>
    <span style="color: red;">(* Fields are mandatory)</span>
    <br>
    <br>
</div>
    <center><input type="submit" value="Submit" style="background-color: black;color:#F7E100; width: 150px;"></center>
    <br><br>
    </form>
    <center>
        <table>
            <tr>
                <td>
                    Transaction ID
                </td>
                <td>
                    Description
                </td>
                <td>Date(YYYY-MM-DD)</td>
                <td>Amount</td>
            </tr>
            <tr>
                <td>
                    000003164
                </td>
                <td>
                    Withdraw
                    </td>
                    <td>
                        2016-06-24
                        </td>
                        <td>
                            100
                            </td>
            </tr>
            <tr>
                <td>
                    000003159
                </td>
                <td>
                    Withdraw
                    </td>
                    <td>
                        2016-06-24
                        </td>
                        <td>
                            09
                            </td>
            </tr>
            <tr>
                <td>
                    000003157
                </td>
                <td>
                    Withdraw
                </td>
                    <td>
                        2016-06-24
                        </td>
                        <td>
                            10
                            </td>
            </tr>
            <tr>
                <td>
                 000003158
                </td>
                <td>
                    Deposit
                    </td>
                    <td>
                        2016-06-24
                        </td>
                        <td>
                            1000
                            </td>
            </tr>
            <tr>
                <td>
                    000003224
                </td>
                <td>
                    Withdraw
                    </td>
                    <td>
                        2016-06-26
                        </td>
                        <td>
                            200
                            </td>
            </tr>
            <tr>
                <td>
                    000003223
                </td>
                <td>
                    Deposit
                    </td>
                    <td>
                        2016-06-26
                        </td>
                        <td>
                            100
                            </td>
            </tr>
            <tr>
                <td>
                    000003222
                </td>
                <td>
                    Deposit
                    </td>
                    <td>
                        2016-06-26
                        </td>
                        <td>
                            100
                            </td>
            </tr>
            <tr>
                <td>
                    000003221
                </td>
                <td>
                    Transfer
                    </td>
                    <td>
                        2016-06-26
                        </td>
                        <td>
                            100
                            </td>
            </tr>
            <tr>
                <td>
                    000003220
                </td>
                <td>
                    Transfer
                    </td>
                    <td>
                        2016-06-26
                        </td>
                        <td>
                            100
                            </td>
            </tr>
            <tr>
                <td>
                    000003217
                </td>
                <td>
                    Withdraw
                    </td>
                    <td>
                        2016-06-26
                        </td>
                        <td>
                            100
                            </td>
            </tr>
                
        </table>
    </center>
    <br>
    
<center><b><input type="button" value="Download As PDF file" style="background-color: black;color:#F7E100; width: 200px;"> &nbsp;&nbsp;
<input type="button" value="Download as Excel file" style="background-color: black;color:#F7E100; width: 200px;"></center></b>
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