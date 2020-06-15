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

jQuery(function ($) {
    var $inputs = $('input[name=ssn_id],input[name=customer_id]');
    $inputs.on('input', function () {
        // Set the required property of the other input to false if this input is not empty.
        $inputs.not(this).prop('required', !$(this).val().length);
    });
});