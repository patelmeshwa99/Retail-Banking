<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
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
