<%-- 
    Document   : DeleteCustomer
    Created on : 12 Jun, 2020, 10:12:51 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete Customer</title>
    </head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
      
 <style>
            body{
                background-color: rgb(240, 240, 245);
                text-align: center;
}
form {
    display: inline-block;
}
table{
    text-align: left;
    
}
td{
    padding: 10px;
}
  </style>

    <body>
        <div class="container">
    <center><h3><strong>Delete Customer</strong></h3></center>
<form>
    <table>
        <tr>
            <td><label  for="SSNid">SSN ID</label></td>
            <td><input type="text"  class="form-control" name="SSNId" disabled="true" placeholder="10000000123"/></td>
    </tr>
    <tr>
        <td><label  for="customerID">Customer ID</label></td>
    
        <td>  <input type="text" class="form-control" name="CustomerId" disabled="true" placeholder="1000000013"/></td>
    </tr>
    <tr>
     <td><label  for="customerName">Customer Name</label></td>
     <td><input type="text" name="customerName"   class="form-control" disabled="true" placeholder="John Doe"/></td>
    </tr>
    <tr>
        <td><label  for="age">Age</label></td>
 
     <td>     <input type="text" name="age"  class="form-control" disabled="true" placeholder="45"/></td>
 </tr>
 <tr>   
     <td><label  for="address">Address</label></td>
    <td>
      <input type="text" name="address"   class="form-control" disabled="true" placeholder="Ahmedabad"/>
    </td>
  </tr> 
    
    <tr>
          <td> <input type="submit" value="Confirm Delete"  class="btn btn-default"style="background-color: black;color: white "/></td>
          <td><input type="button" class="btn btn-default" value="Cancel"/></td>
    </tr> 
    
     </table> 
</form>
</div>
    </body>
</html>
