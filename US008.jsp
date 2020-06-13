<%-- 
    Document   : US008
    Created on : Jun 13, 2020, 4:00:09 PM
    Author     : Manoj
--%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Account Status</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <style>
            .content
{
    background-color: #ccccff;
}
.heading
{
    padding-left: 550px;
    padding-top: 50px;
    
}
h4
{
    font-size: 35px;
    font-weight: bold;
}
.inner_table
{
    padding-left: 280px;
    
}
.inner
{
    margin-top: 50px;
    border-style: solid;
    border-color: #999999;
    background-color: wheat;
}
.head
{
    background-color: yellow;
}
.btn1
{
    padding-top: 50px;
    padding-left: 560px;
padding-bottom: 100px;
}
.btn
{
    color: yellow;
    background-color: black;
    box-sizing: 50px;
     border-radius: 0;
    border: 0;
     transition: 0.5s 0.2s;
     font-size: inherit;
    font-weight: normal;

}
th
{
    padding-left: 10px;
    padding-right: 10px;
}
td{
    padding-left: 10px;
    padding-right: 10px;
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
                <h4>Account Status</h4>
            </div>
            <sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"url = "jdbc:mysql://localhost/login"
         user = "root"  password = ""/>
             <sql:query dataSource = "${snapshot}" var = "result">
         SELECT * from account;
      </sql:query>
            <div class="inner_table">
                <table class="inner" border="1" cellspacing="0" cellpadding="1">
                    <tr class="head">
                        <th>Customer_Id</th>
                        <th>Account_Id</th>
                        <th>Account_Type</th>
                        <th>Account_Status</th>
                        <th>Message</th>
                        <th>last Update</th>
                        <th>Operation</th>
                    </tr>
                      <c:forEach var = "row" items = "${result.rows}">
                    <tr>
                        <td>
                            <c:out value = "${row.customer_id}"/>
                        </td>
                        <td>
                            <c:out value = "${row.account_id}"/>
                        </td>
                        <td>
                           <c:out value = "${row.account_type}"/>
                        </td>
                        <td>
                           <c:out value = "${row.account_status}"/>
                        </td>
                        <td>
                            <c:out value = "${row.message}"/>
                        </td>
                        <td>
                            <c:out value = "${row.last_update}"/>
                        </td>
                        <td>
                            <a href="#">Refresh</a>
                        </td>
                    </tr>
                      </c:forEach>
                </table>
                    
            </div>
            <div class="btn1">
            <button class="btn" type="reset" value="Refresh The List">
                Refresh the list
            </button>
            </div>
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
