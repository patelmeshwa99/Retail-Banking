<%-- 
    Document   : CustomerStatus
    Created on : 12 Jun, 2020, 10:22:54 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Customer Status</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script> 
      
        <style>
            body{
                background-color: rgb(240, 240, 245)
;
            }
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
    </table>
    </body>
</html>
