<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<<<<<<< HEAD
    <head>
        <title>View Account</title>
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
		    <center><h3 style="margin-top: -20px">Withdraw Money</h3></center><br>
		    	<form action="WithdrawMoneyController" method="POST" id="myForm">
			    	<table class="table table-borderless">
					    <tr>
					      <th scope="col" class="first">Customer Id:</th><%HttpSession sess = request.getSession(); %>
					      <th scope="col"><input style="width: 100%" type="text" id="fname" name="cust_id" value="<%=sess.getAttribute("customerId")%>" readonly="true"></th>
					    </tr>
					    <tr>
					      <th scope="col" class="first">Account Id: </th>
					      <th scope="col"><input style="width: 100%" type="text" id="fname" name="account_id" value="<%=sess.getAttribute("accountId")%>" readonly="true"></th>
					    </tr>
					    <tr>
					      <th scope="col" class="first">Account Type: </th>
					      <th scope="col"><input style="width: 100%" type="text" id="fname" name="account_type" value="<%=sess.getAttribute("accountType")%>" readonly="true"></th>
					    </tr>
					    <tr>
					      <th scope="col" class="first">Balance: </th>
					      <th scope="col"><input style="width: 100%" type="text" id="fname" name="account_bal" value="<%=sess.getAttribute("aBalance")%>" readonly="true"></th>
					    </tr>
					    <tr>
					      <th scope="col" class="first">Withdraw Amount: <span style="color:red">*</span></th>
					      <th scope="col"><input style="width: 100%" type="number" id="fname" name="amount" required></th>
					    </tr>
					    <tr>
					      <th scope="col" class="first"><button type="submit" onclick="depositMoney()" name="deposit" style="width: 100%" class="btn custom-button">Deposit</button></th>
					      <th scope="col" class="first"><button type="submit" onclick="withdrawMoney()" name="withdraw" style="width: 100%" class="btn custom-button">Withdraw</button></th>
					      <th scope="col" class="first"><button type="submit" name="transfer" style="width: 100%" class="btn custom-button">Transfer</button></th>
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
=======
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<meta name='viewport' content='width=device-width, initial-scale=1'>
       <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <style>
        body
        {
            background-image: linear-gradient(rgb(229, 226, 226),white);
            
        }
     </style>
</head>
<body>
    <%@ include file = "header.jsp" %>
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
        <form action="http://localhost:8889/RetailBankManagement/Withdrawser" method="get">
            <span style="margin-left: 500px">Withdraw Amount :<input text type="text" name="withdrawamt" required="required">
            <br><br></span>
            <center><input type="submit" value="Submit" style="background-color: black;color:#F7E100; width: 150px;"></center></b>
        </form>
        

    </div>
    <br><br>
 <%@ include file = "footer.jsp" %>
</body>
</html>
>>>>>>> 8eb99d115e25ae5fd24dfa9e236c5beffae6d0e1
