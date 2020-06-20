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
import Service.AccountService;

@WebServlet("/DeleteAccountServlet")
public class DeleteAccountServlet extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String acc_id = request.getParameter("accountId");
		int rows_affected;
		
		AccountService as = new AccountService();
		rows_affected = as.deleteAccount(acc_id);
		
		PrintWriter out = response.getWriter();
		
		if(rows_affected == 1) {
			out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
			out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
			out.println("<script>");
			out.println("$(document).ready(function(){");
			out.println("swal ( '', 'Account Updated Successfully!!', 'success');");
			out.println("});");
			out.println("</script>");
			
		}
		else
		{
			out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
			out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
			out.println("<script>");
			out.println("$(document).ready(function(){");
			out.println("swal ( '', 'Account Updation failed!!', 'error');");
			out.println("});");
			out.println("</script>");
		}
		RequestDispatcher rd = request.getRequestDispatcher("AccountSearch.jsp");
		rd.include(request, response);
	}

}
