package Controller;
import java.io.IOException;
import java.io.PrintWriter;
import javax.swing.JOptionPane;

import Bean.CustomerBean;
import Service.CustomerService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class CreateCustomer
 */
@WebServlet("/CreateCustomer")
public class CreateCustomerServlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		String id = request.getParameter("ssnId");
		String name = request.getParameter("name");
		String age = request.getParameter("age");
		String address = request.getParameter("address");
		String state = request.getParameter("state");
		String city = request.getParameter("city");
		
		String errorMsg = "";
		
		PrintWriter out = response.getWriter();
		
		if(id == null || id.equals("")) {
			errorMsg = "Customer SSM Id can't be null!";
		}
		if(name == null || name.equals("")) {
			errorMsg = "Name can't be null!";
		}
		if(age==null || name.equals("")) {
			errorMsg = "Age can't be null!";
		}
		if(address == null || address.equals("")) {
			errorMsg = "Address can't be null!";
		}
		if(state == null || state.equals("")) {
			errorMsg = "State can't be null!";
		}
		if(city == null || city.equals("")) {
			errorMsg = "City can't be null!";
		}
		
		if(!errorMsg.equals("")) {
			response.sendRedirect("CreateCustomer.jsp");
			System.out.println(errorMsg);
		}
		
		else {
			
			CustomerService cs = new CustomerService();
			if(cs.findCustomerBySsnId(id)==null) {
				CustomerBean cust = new CustomerBean();
				cust.setSsn_id(id);
				cust.setName(name);
				cust.setAge(Integer.parseInt(age));
				cust.setAddress(address);
				cust.setState(state);
				cust.setCity(city);	
				
				int agee = Integer.parseInt(age);
				
			
		
				if(cs.insertCustomer(cust)) {
				
					out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
					out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
					out.println("<script>");
					out.println("$(document).ready(function(){");
					out.println("swal ( 'Status', 'Customer creation initialized successfully!!', 'success');");
					out.println("});");
					out.println("</script>");
					
					
					RequestDispatcher rd = request.getRequestDispatcher("CreateCustomer.jsp");
					rd.include(request, response);

				}
				else
				{
					out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
					out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
					out.println("<script>");
					out.println("$(document).ready(function(){");
					out.println("swal ( 'Status', 'Customer creation failed!!', 'error');");
					out.println("});");
					out.println("</script>");
					
					RequestDispatcher rd = request.getRequestDispatcher("CreateCustomer.jsp");
					rd.include(request, response);
	
	
				}
		}
			else {
				out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
				out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
				out.println("<script>");
				out.println("$(document).ready(function(){");
				out.println("swal ( 'Status', 'Customer with given SSN ID exists!!', 'error');");
				out.println("});");
				out.println("</script>");
				
				RequestDispatcher rd = request.getRequestDispatcher("CreateCustomer.jsp");
				rd.include(request, response);

			}
		
	}

}
}
