<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
        <title>Create Account</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
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
select{
    width: 100%;
}
  </style>
  <script>
      
  </script>     
    </head>
    <body>
    <%@ include file = "header.jsp" %>
    <div class="jumbotron jumbotron-fluid">
 <div class="container">
 <div class="row">
	    <div class="col-3"></div>
	    <div class="col-6">
    <center><h2><strong>Create Account</strong></h2></center>
    
    <form>
<table>

					<tr>
				      <th scope="col" class="first">Customer Id: </th>
				      <th scope="col"><input style="width: 100%" type="text" id="fname" name="fname" required></th>
				    </tr>
    <tr>
    

        <td><label>Customer Id</label></td>
        <td><input type="text" name="customerId" class="form-control"/></td>
  
</tr>
<tr>

<td><label>Account Type</label></td>
<td><select name="accountType" class="form-control">
        <option value="savings">Savings</option>
        <option value="current">Current</option>
      </select></td>

</tr>

<tr>
    <td> <label>Deposit Amount</label></td>
    <td><input type="text" name="depositAmount" class="form-control"></td>
</tr>
</table>
        <input type="submit" style="background-color:black;color:yellow;margin: 0px" class="btn btn-default" value="Submit"/>
 </div></div>
</form>
        </div>
        </div>
        <%@ include file = "footer.jsp" %>
 </body>
</html>