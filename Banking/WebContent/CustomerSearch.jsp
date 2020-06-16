<%-- 
    Document   : US009
    Created on : Jun 13, 2020, 4:08:25 PM
    Author     : Manoj
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Customer Search</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <style>
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
                
        <%@ include file = "header.jsp" %>
        
        	<div class="jumbotron jumbotron-fluid" style="height:75vh">
	  <div class="container">
	    <div class="row">
		    <div class="col-3"></div>
		    <div class="col-6">
		    <center><h3 style="margin-top: -20px">Customer Search</h3></center><br>
	            <form  action="control"method="post" >
                <table>
                    <tr>
                        <td>Enter SSN ID/ Customer ID</td>
                        <td><input type="text" name="ssn_id" pattern="[0-9]{1,9}" placeholder="100******"></td>
                    </tr>
                    <tr align="center">
                        <td colspan="2" class="btn"><input type="submit" value="View" class="btn1"></td>
                    </tr>
                </table>
            </form>
             <table>
                <%
                   ArrayList<customer> cl=new ArrayList<customer>();
                   cl=(ArrayList<customer>)request.getAttribute("customerlist");
                   if(cl!=null&&cl.size()>0)
                   {
                   for(int i=0; i<cl.size(); i++) 
                   {
                    customer c=new customer();
                    c=cl.get(i);
                    
                %>
                <tr align="center">
                    <td>Customer_Id: <%out.println(c.getCustomer_id());%><br><td>
                </tr>
                
                <tr align="center">
                    <td>Account_Id: <%out.println(c.getAccountId());%><br></td>
                </tr>
                <tr align="center">
                    <td>Account_Type: <%out.println(c.getAccountType()); %><br></td>
                </tr>
                <tr align="center">
                    <td>Balance: <% out.println( c.getBalance());%><br></td>
                </tr>
                <%}
                   }
                    %>
            </table>
        </div>

  <%@ include file = "footer.jsp" %>
    </body>
</html>
