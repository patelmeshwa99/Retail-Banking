<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head><link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>
<%@ include file = "header.jsp" %>
	<div class="content">
        <div class="heading">
            <h4>Delect Account</h4>
        </div>
            <div class="inner_table">
                <form>
                <table>
                    <tr>
                        <td class="label">Account Id</td>
                        <td class="box">      <input type="text" name="account_id" placeholder="100******">
                        </td>
                    </tr>
                    <tr>
                        <td class="label">
                            Account Type
                        </td>
                        <td class="box">     <input type="text" name="account_type" pattern="[A-Za-z]{1,}" placeholder="Current"></td>
                    </tr>
                    <tr>
                        <td></td>
                    
                        <td class="button">
                            <a href="delect.jsp?a_id=account_id,a_type=account_type"></a>
                            <button class="btn" type="button">Delect Account</button>
                        </td>
                    </tr>
                </table>
                </form>   
            </div>
        </div>
<%@ include file = "footer.jsp" %>
</body>
</html>