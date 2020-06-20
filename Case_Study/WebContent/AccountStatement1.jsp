<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="com.bean.Accountst" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<script type="text/javascript">

	function yesnoCheck() {
	    if (document.getElementById('yesCheck').checked) {
	        document.getElementById('ifYes').style.visibility = 'visible';
	        document.getElementById('ifNo').style.visibility = 'hidden';
	    }
	    else{
	    	document.getElementById('ifNo').style.visibility = 'visible';
	    	document.getElementById('ifYes').style.visibility = 'hidden';
	    } 
 }

function submitpage(){
	 
	 var ctrl;
	 var act=document.getElementByName("act");
	 for( var i=0;i< act.length;i++){
		 if (act[i].checked){
			 ctrl=act[i].value;
		 }
	 }
	 document.getElementBYName("act").value=ctrl;
	 document.acccounst.submit();
}
</script>
<meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
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
<br>
<br>
    <center><h3><b>Account Statement</h3></center>
    <br>
    <br>
    <div style="margin-left:570px;">
    <form action="" name="accounst">

        Account ID : <input type="text name="accountid" pattern="[0-9]{9}" required="required">  
          <br>
          <br>
          <input type="radio" onclick="javascript:yesnoCheck();" name="yesno" id="yesCheck">Last Number of Transactions 
    <div id="ifYes" style="visibility:hidden">
       Number of Transactions: &nbsp;&nbsp; <input type="number" name="noftransaction" style="width: 50px;" required="required">
    </div>
    <input type="radio" onclick="javascript:yesnoCheck();" name="yesno" id="noCheck">Start - End Dates
    <div id="ifNo" style="visibility:hidden">
       		 Start Date:<input type="date" name="startdate" style="width: 130px;" required="required">
    		<br><br>
   			End Date:<input type="date" name="enddate" style="width: 130px;" required="required">
    </div>
          
        </div>
          <center><input type="submit" value="Submit" onclick="javascript:submitpage()" style="background-color: black;color:#F7E100; width: 150px;"></center></b>
    </form>
  <br>
 <%--  display result   --%> 
 
 <center>
        <table border=1>
            <tr>
            <b>
                <th>Transaction ID </th>
                <th> Description</th>
                <th> Date(YYYY-MM-DD)</th>
                <th> Amount</th>
            </b></tr>
            <%--
            ArrayList<Accountst> Accountlist=( ArrayList<Accountst>)request.getAttribute("Accountlist");
            Accountst acc=null;
            if(Accountlist !=null && Accountlist.size()>0 )
            {
            	for(int i=0;i<Accountlist.size();i++)
            	{
            		acc=new Accountst();
            		acc=Accountlist.get(i);
            		
             
             
           
            
            <tr>
                <td><%= acc.getTrid() %> </td>
                <td><%=acc.getType()  %> </td>
                <td><%=acc.getDt()  %> </td>
                <td><%=acc.getAmount()  %> </td>
            </tr>
           <%
   		
            	}
            }
           %> 
           --%> 
                
        </table>
    </center>
     <br>
    
<center><b><input type="button" value="Download As PDF file" style="background-color: black;color:#F7E100; width: 200px;"> &nbsp;&nbsp;
<input type="button" value="Download as Excel file" style="background-color: black;color:#F7E100; width: 200px;"></center></b>
<div class="container-fluid" style="height:7px; background-color: #F7E100"></div>
    
    
    
   <%@ include file = "finalfooter.jsp" %>
</body>
</html>