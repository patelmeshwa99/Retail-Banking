<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

        <title>Account Status</title>
      
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
    <%

	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
	if(session.getAttribute("username")==null){
		response.sendRedirect("login.jsp");
	}
%>
    
    <%@ include file = "header.jsp" %>
    <sql:setDataSource var="db" driver="org.postgresql.Driver" url="jdbc:postgresql://localhost:5432/bank" user="postgres" password="5418"/>
    
    <sql:query var="rs" dataSource="${db}">select * from accountstatus</sql:query>
    
    <div class="jumbotron jumbotron-fluid" style="height: 60vh">
    <center><h2><strong>Account Status</strong></h2></center>
    <br/>
    <table>
    <thead>
      <tr>
        <th>Customer ID</th>
        <th>Account ID</th>
        <th>Account Type</th>
        <th>Account Status</th>
        <th>Message</th>
        <th>Last Updated</th>
        <th>Operations</th>
      </tr>
    </thead>
    <tbody>
    <c:forEach items="${rs.rows}" var="accounts"> 	
      <tr>
        <td><c:out value="${accounts.cust_id}"></c:out></td>
        <td><c:out value="${accounts.account_id}"></c:out></td>
        <td><c:out value="${accounts.account_type}"></c:out></td>
        <td><c:out value="${accounts.status}"></c:out></td>
        <td><c:out value="${accounts.message}"></c:out></td>
        <td><c:out value="${accounts.last}"></c:out></td>
        <td><a href="AccountStatus.jsp">Refresh</a></td>
      </tr>
      </c:forEach>
    </tbody>
    </table><div style="height: 40px"></div></div>
    <%@ include file = "footer.jsp" %>
    </body>
</html>