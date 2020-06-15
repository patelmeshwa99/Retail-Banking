function validate() {
	
	const uname = document.getElementById("uname");
	const password= document.getElementById("pwd");
	const form = document.getElementById("form");
	var lblError = document.getElementById("lblError");
	
	var expr = /^[a-zA-Z0-9]{6,10}$/;
	var passw = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,20}$/;
	
	if(uname.value.match(expr) && password.value.match(passw)){
		form.action = "LoginServlet";
	}
	
}