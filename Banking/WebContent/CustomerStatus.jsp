<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

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
    	<%

	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
	if(session.getAttribute("username")==null){
		response.sendRedirect("login.jsp");
	}
%>
    	
    <%@ include file = "header.jsp" %>
    <sql:setDataSource var="db" driver="org.postgresql.Driver" url="jdbc:postgresql://localhost:5432/bank" user="postgres" password="5418"/>
    
    <sql:query var="rs" dataSource="${db}">select * from customerstatus</sql:query>
    
    <!--<c:forEach items="${rs.rows}" var="customers">
    	<c:out value="${customers.ssn}"></c:out>
 	</c:forEach>-->
    
    <div class="jumbotron jumbotron-fluid">
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
    <c:forEach items="${rs.rows}" var="customers"> 	
      <tr>
        <td><c:out value="${customers.cust_id}"></c:out></td>
        <td><c:out value="${customers.ssn}"></c:out></td>
        <td><c:out value="${customers.status}"></c:out></td>
        <td><c:out value="${customers.message}"></c:out></td>
        <td><c:out value="${customers.last}"></c:out></td>
        <td><a href="CustomerStatus.jsp">Refresh</a></td>
       	<td><form action='SearchCustomerServlet' method='post'><input type="hidden" name="export" value="${customers.ssn}" />
       	<input type='submit' value='View Details' /></form></td>
      </tr>
      </c:forEach>
    </tbody>
    </table><div style="height: 40px"></div></div>
    <%@ include file = "footer.jsp" %>
    </body>
</html>