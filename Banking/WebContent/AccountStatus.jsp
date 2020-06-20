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
<script>
function refreshPage(){
    window.location.reload();
} 
</script>

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
<<<<<<< HEAD
    <%
=======
	
		<%@ include file = "header.jsp" %>
        <div class="content">
            <div class="heading">
                <h4>Account Status</h4>
            </div>
            <sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver" url = "jdbc:mysql://localhost/login"
         user = "root"  password = ""/>
             <sql:query dataSource = "${snapshot}" var = "result">
         SELECT * from account;
      </sql:query>
            <div class="inner_table">
                <table class="inner" border="1" cellspacing="0" cellpadding="1">
                    <tr class="head">
                        <th>Customer_Id</th>
                        <th>Account_Id</th>
                        <th>Account_Type</th>
                        <th>Account_Status</th>
                        <th>Message</th>
                        <th>last Update</th>
                        <th>Operation</th>
                    </tr>
                      <c:forEach var = "row" items = "${result.rows}">
                    <tr>
                        <td>
                            <c:out value = "${row.customer_id}"/>
                        </td>
                        <td>
                            <c:out value = "${row.account_id}"/>
                        </td>
                        <td>
                           <c:out value = "${row.account_type}"/>
                        </td>
                        <td>
                           <c:out value = "${row.account_status}"/>
                        </td>
                        <td>
                            <c:out value = "${row.message}"/>
                        </td>
                        <td>
                            <c:out value = "${row.last_update}"/>
                        </td>
                        <td>
                                <button class="btn-link" onClick="refreshPage()" type="reset" value="Refresh The List">
                                    <a href="#">Refresh</a>
            </button>
                        </td>
                    </tr>
                      </c:forEach>
                </table>
                    
            </div>
            <div class="btn1">
            <button class="btn" onClick="refreshPage()" type="reset" value="Refresh The List">
                Refresh the list
            </button>
            </div>
        </div>
<div class="container-fluid" style="height:7px; background-color: #F7E100"></div>
>>>>>>> 8eb99d115e25ae5fd24dfa9e236c5beffae6d0e1

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
