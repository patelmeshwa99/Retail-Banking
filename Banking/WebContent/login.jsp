<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script>
function validate() {
	
	const uname = document.getElementById("uname").value;
	const password= document.getElementById("pwd").value;
	const form = document.getElementById("form");
	
	var expr = /^[a-zA-Z0-9]{8,}$/;
	var passw = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{10}$/;
	
	if(!(uname.match(expr))){
		alert('Invalid username!!');
		
	}else if(!(password.match(passw))){
		alert('Invalid password!!');
	}else{
		form.action="LoginServlet";
	}
	
}

</script>
</head>
<body>
<div class="container" style="margin-top: 10%">
  <div class="card">
    <span class="border border-dark rounded">
	  <div class="card bg-dark text-white">
	    <div class="card-body">Login</div>
	  </div>
	  <div class="card-body">
	    <form id="form" action="" onsubmit="validate()" method="POST">
		  <input type="text" class="form-control" id="uname" placeholder="Username" name="uname"><br><div id="extra"></div>
		  <input type="password" class="form-control" id="pwd" placeholder="Password" name="pswd"><br><div class="text-center"> 
	      <button type="submit" class="btn btn-outline-dark">Login</button>
	    </form>
	  </div>
	</span>
  </div>
</div>

</body>
</html>