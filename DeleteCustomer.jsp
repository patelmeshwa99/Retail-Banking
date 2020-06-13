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
    
    <center><h3><strong>Delete Customer</strong></h3></center>
<form>
    <table>
        <tr>
            <td><label  for="SSNid">SSN ID</label></td>
            <td><input type="text"  name="SSNId" disabled="true" placeholder="10000000123"/></td>
    </tr>
    <tr>
        <td><label  for="customerID">Customer ID</label></td>
    
        <td>  <input type="text" name="CustomerId" disabled="true" placeholder="1000000013"/></td>
    </tr>
    <tr>
     <td><label  for="customerName">Customer Name</label></td>
     <td><input type="text" name="customerName" disabled="true" placeholder="John Doe"/></td>
    </tr>
    <tr>
        <td><label  for="age">Age</label></td>
 
     <td>     <input type="text" name="age" disabled="true" placeholder="45"/></td>
 </tr>
 <tr>   
     <td><label  for="address">Address</label></td>
    <td>
      <input type="text" name="address" disabled="true" placeholder="Ahmedabad"/>
    </td>
  </tr> 
    
    <tr>
          <td> <input type="submit" value="Confirm Delete" style="background-color: black;color: white "/></td>
          <td><input type="button" value="Cancel"/></td>
    </tr> 
    
     </table> 
</form>
</div>
    </body>
</html>
