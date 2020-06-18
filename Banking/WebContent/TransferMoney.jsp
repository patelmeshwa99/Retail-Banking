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
  <%@include file="header.jsp" %>
  <br><br>
    <center><h3><b>Transfer Money</h3></center>
    <br>
    <br>
    <div style="margin-left:570px;">
        Customer ID : 12045544
        <br>
        <br>
    <form action="http://localhost:8889/RetailBankManagement/Transfermoneyser"  method="post">
        Source Account type :  <select name="sourceaccountype" id="at" required="required">
            <option value="Savings">Savings</option>
            <option value="Current">Current</option>
          </select>
          <br>
          <br>
          Target Account type :  <select name="targetaccountype" id="at" required="required">
            <option value="Savings">Savings</option>
            <option value="Current">Current</option>
          </select>
          <br>
          <br>
          Tranfer Amount : <input type="text" name="tranferamt" required="required">
          <br>
          <br>
        </div>
          <center><input type="submit" value="Transfer" style="background-color: black;color:#F7E100; width: 150px;"></center></b>
    </form>
    <br><br>
<%@ include file="footer.jsp" %>
</body>
</html>
