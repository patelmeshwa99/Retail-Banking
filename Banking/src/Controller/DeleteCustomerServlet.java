package Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Bean.CustomerBean;
import Service.CustomerService;

@WebServlet("/DeleteCustomerServlet")
public class DeleteCustomerServlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String ssn_id = request.getParameter("ssnId");
		String customer_id = request.getParameter("customerId");
		int rows_affected;
	
		CustomerService cs = new CustomerService();
		rows_affected = cs.deleteCustomer(ssn_id);
		
		PrintWriter out = response.getWriter();
		if(rows_affected == 1) {
			out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
			out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
			out.println("<script>");
			out.println("$(document).ready(function(){");
			out.println("swal ( '', 'Customer Deleted Successfully!!', 'success');");
			out.println("});");
			out.println("</script>");
			
		}
		else
		{
			out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
			out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
			out.println("<script>");
			out.println("$(document).ready(function(){");
			out.println("swal ( '', 'Customer deletion failed!!', 'error');");
			out.println("});");
			out.println("</script>");
			
		}
		RequestDispatcher rd = request.getRequestDispatcher("CustomerSearch.jsp");
		rd.include(request, response);
}
	

}
