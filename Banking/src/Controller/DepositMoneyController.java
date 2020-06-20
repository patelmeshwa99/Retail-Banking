package Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Service.AccountService;


@WebServlet("/DepositMoneyController")
public class DepositMoneyController extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("Depost");
		
		String cust_id = request.getParameter("cust_id");
		String account_id = request.getParameter("account_id");
		String acc_type = request.getParameter("account_type");
		String bal = request.getParameter("account_bal");
		String amount = request.getParameter("amount");
		
		int total =  Integer.parseInt(bal) + Integer.parseInt(amount); 
		
		AccountService as = new AccountService();
		int rows_affected = as.updateBalance(account_id, total);
		PrintWriter out = response.getWriter();
		System.out.println(rows_affected);
		if(rows_affected==1) {
			out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
			out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
			out.println("<script>");
			out.println("$(document).ready(function(){");
			out.println("swal ( '', 'Deposited Successfully!!', 'success');");
			out.println("});");
			out.println("</script>");
			
			request.setAttribute("cId", cust_id);
			request.setAttribute("aId", account_id);
			request.setAttribute("prev_bal", bal);
			request.setAttribute("now_bal", total);
			
		
		}
		else {
			out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
			out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
			out.println("<script>");
			out.println("$(document).ready(function(){");
			out.println("swal ( '', 'Deposition failed!!', 'error');");
			out.println("});");
			out.println("</script>");
		}
		
		RequestDispatcher rd = request.getRequestDispatcher("AfterAccountOperation.jsp");
		rd.include(request, response);
	}

}
