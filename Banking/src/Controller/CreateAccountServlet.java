package Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Bean.AccountBean;
import Bean.CustomerBean;
import Service.AccountService;
import Service.CustomerService;


@WebServlet("/CreateAccountServlet")
public class CreateAccountServlet extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("customerId");
		String account_type = request.getParameter("account");
		int amount = Integer.parseInt(request.getParameter("deposit_amount"));
		
		String errorMsg = "";
		
		PrintWriter out = response.getWriter();
		
		if(id == null || id.equals("")) {
			errorMsg = "Customer SSM Id can't be null!";
		}
		if(account_type == null || account_type.equals("")) {
			errorMsg = "account_type can't be null!";
		}
		if(Integer.toString(amount)==null || Integer.toString(amount).equals("")) {
			errorMsg = "amount can't be null!";
		}
		
		if(!errorMsg.equals("")) {
			response.sendRedirect("CreateAccount.jsp");
			System.out.println(errorMsg);
		}
		
		else 
		{
			
			CustomerService cs = new CustomerService();
			CustomerBean cb = cs.findCustomerByCustomerId(id);
			if(cb!=null) 
			{
				boolean status=false;
				AccountBean acc = new AccountBean();
				acc.setAccount_type(account_type);
				acc.setCustomer_id(id);
				acc.setBalance(amount);
				
				AccountService as = new AccountService();
				if(as.createAccount(acc)) 
				{
					
					out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
					out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
					out.println("<script>");
					out.println("$(document).ready(function(){");
					out.println("swal ( 'Status', 'Account creation initialized successfully!!', 'success');");
					out.println("});");
					out.println("</script>");
				}
				else 
				{
					out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
					out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
					out.println("<script>");
					out.println("$(document).ready(function(){");
					out.println("swal ( 'Status', 'Account creation failed!!', 'error');");
					out.println("});");
					out.println("</script>");
				}
			}
			else
			{
				out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
				out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
				out.println("<script>");
				out.println("$(document).ready(function(){");
				out.println("swal ( 'Status', 'Customer does not exist!!', 'error');");
				out.println("});");
				out.println("</script>");
				
				

			}
			
		}
		RequestDispatcher rd = request.getRequestDispatcher("CreateAccount.jsp");
		rd.include(request, response);
		
	}

}
