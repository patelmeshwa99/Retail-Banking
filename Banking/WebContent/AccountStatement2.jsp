<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <style>
        
        table,tr,td{
            border:2px solid black;
        }
        table {
        border-collapse: collapse;
  
        }
      body
      {
          background-image: linear-gradient(rgb(229, 226, 226),white);
          
      }
          
    </style>
</head>
<body>
    <%@ include file="header.jsp" %>
    <br>
    <br>
    <center><h3><b>Account Statment</h3></center>
    <br><br>
    <div style="margin-left:570px;">
     <form action="">    
    Account ID :<span style="color: red;">*</span>&nbsp;
    <input type="text" name="accountid" required="required" placeholder="enter 9 digit account no" pattern="[0-9]{9}" style="width: 190px;" >
    <br><br>
    Start Date:<span style="color: red;">*</span>&nbsp;&nbsp;&nbsp; <input type="date" name="startdate" style="width: 130px;" required="required">
    <br><br>
    End Date:<span style="color: red;">*</span> &nbsp;&nbsp;&nbsp;<input type="date" name="enddate" style="width: 130px;" required="required">
    <br><br></b>
    <span style="color: red;">(* Fields are mandatory)</span>
    <br>
    <br>
</div>
    <center><input type="submit" value="Submit" style="background-color: black;color:#F7E100; width: 150px;"></center>
    <br><br>
    </form>
    <center>
        <table>
            <tr>
                <td>
                    Transaction ID
                </td>
                <td>
                    Description
                </td>
                <td>Date(YYYY-MM-DD)</td>
                <td>Amount</td>
            </tr>
            <tr>
                <td>
                    000003164
                </td>
                <td>
                    Withdraw
                    </td>
                    <td>
                        2016-06-24
                        </td>
                        <td>
                            100
                            </td>
            </tr>
            <tr>
                <td>
                    000003159
                </td>
                <td>
                    Withdraw
                    </td>
                    <td>
                        2016-06-24
                        </td>
                        <td>
                            09
                            </td>
            </tr>
            <tr>
                <td>
                    000003157
                </td>
                <td>
                    Withdraw
                </td>
                    <td>
                        2016-06-24
                        </td>
                        <td>
                            10
                            </td>
            </tr>
            <tr>
                <td>
                 000003158
                </td>
                <td>
                    Deposit
                    </td>
                    <td>
                        2016-06-24
                        </td>
                        <td>
                            1000
                            </td>
            </tr>
            <tr>
                <td>
                    000003224
                </td>
                <td>
                    Withdraw
                    </td>
                    <td>
                        2016-06-26
                        </td>
                        <td>
                            200
                            </td>
            </tr>
            <tr>
                <td>
                    000003223
                </td>
                <td>
                    Deposit
                    </td>
                    <td>
                        2016-06-26
                        </td>
                        <td>
                            100
                            </td>
            </tr>
            <tr>
                <td>
                    000003222
                </td>
                <td>
                    Deposit
                    </td>
                    <td>
                        2016-06-26
                        </td>
                        <td>
                            100
                            </td>
            </tr>
            <tr>
                <td>
                    000003221
                </td>
                <td>
                    Transfer
                    </td>
                    <td>
                        2016-06-26
                        </td>
                        <td>
                            100
                            </td>
            </tr>
            <tr>
                <td>
                    000003220
                </td>
                <td>
                    Transfer
                    </td>
                    <td>
                        2016-06-26
                        </td>
                        <td>
                            100
                            </td>
            </tr>
            <tr>
                <td>
                    000003217
                </td>
                <td>
                    Withdraw
                    </td>
                    <td>
                        2016-06-26
                        </td>
                        <td>
                            100
                            </td>
            </tr>
                
        </table>
    </center>
    <br>
    
<center><b><input type="button" value="Download As PDF file" style="background-color: black;color:#F7E100; width: 200px;"> &nbsp;&nbsp;
<input type="button" value="Download as Excel file" style="background-color: black;color:#F7E100; width: 200px;"></center></b>
<br><br>
<%@ include file="footer.jsp" %>
</body>
</html>
