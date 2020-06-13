<%-- 
    Document   : Create_Account
    Created on : 13 Jun, 2020, 1:08:24 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Create Account</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
      
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
  <script>
      
  </script>     
    </head>
    <body>

    <center><h2><strong>Create Account</strong></h2></center>
    
<form>
<table>
    <tr>
        <td><label>Customer Id</label></td>
        <td><input type="text" name="customerId"/></td>
</tr>
<tr>
<td><label>Account Type</label></td>
<td><select name="accountType">
        <option value="savings">Savings</option>
        <option value="current">Current</option>
      </select></td>
</tr>

<tr>
    <td> <label>Deposit Amount</label></td>
    <td><input type="text" name="depositAmount"></td>
</tr>
</table>
    <input type="submit" style="background-color: black;color:yellow"  value="Submit"/>
 
</form>

 </body>
</html>
