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

@WebServlet("/UpdateCustomerServlet")
public class UpdateCustomerServlet extends HttpServlet {
	
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
			String cust_id = request.getParameter("customerId");
			int rows_affected;
		
			CustomerService cs = new CustomerService();
			CustomerBean cb = new CustomerBean();
			cb.setSsn_id(request.getParameter("ssnId"));
			cb.setName(request.getParameter("new_name"));
			cb.setAddress(request.getParameter("new_address"));
			cb.setAge(Integer.parseInt(request.getParameter("new_age")));
			
			
			rows_affected = cs.updateCustomer(cb, cust_id);
			PrintWriter out = response.getWriter();
			if(rows_affected == 1) {
				out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
				out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
				out.println("<script>");
				out.println("$(document).ready(function(){");
				out.println("swal ( '', 'Updated Successfully!!', 'success');");
				out.println("});");
				out.println("</script>");
				
			}
			else
			{
				out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
				out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
				out.println("<script>");
				out.println("$(document).ready(function(){");
				out.println("swal ( '', 'Updation failed!!', 'error');");
				out.println("});");
				out.println("</script>");
				
			}
			RequestDispatcher rd = request.getRequestDispatcher("CustomerSearch.jsp");
			rd.include(request, response);
	}
		

}
