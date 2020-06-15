<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
        <title>Customer Status</title>
      
        <style>
            table{
                text-align: center ;
                border: 1px solid black;
  border-collapse: collapse;
  margin-left: auto;
  margin-right: auto;
            }
            th{
                background-color: rgb(255, 224, 102);
                border: 1px solid black;
  border-collapse: collapse;
                padding: 10px;
            }
            td{
                padding: 10px;
                border: 1px solid black;
  border-collapse: collapse;
            }
            
            </style>
            
    </head>
    <body>
    <%@ include file = "header.jsp" %>
    <div class="jumbotron jumbotron-fluid" style="height: 100vh">
    <center><h2><strong>Customer Status</strong></h2></center>
    <br/>
    <table>
    <thead>
      <tr>
        <th>Customer ID</th>
        <th>Customer SSN ID</th>
        <th>Status</th>
        <th>Message</th>
        <th>Last Updated</th>
        <th>Operations</th>
        <th>View Profile</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>1000000652</td>
        <td>800000012</td>
        <td>Active</td>
        <td>customer update complete</td>
        <td>2016-06-24 15-59-57</td>
        <td><a href="#">Refresh</a></td>
        <td><a href="#">View Details</a></td>
      </tr>
    </tbody>
    </div>
    </table><div style="height: 40px"></div>
    </body>
</html>