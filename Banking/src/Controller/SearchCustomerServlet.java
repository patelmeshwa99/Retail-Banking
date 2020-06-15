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

@WebServlet("/SearchCustomerServlet")
public class SearchCustomerServlet extends HttpServlet {
	
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			String id = request.getParameter("ssn_id");
			String cust_id = request.getParameter("customer_id");
			PrintWriter out = response.getWriter();
			
						
			if((id == null || id.equals(""))){
				CustomerService cs = new CustomerService();
				CustomerBean cb = cs.findCustomerByCustomerId(cust_id);
				String ssn = cb.getSsn_id();
				if(!(ssn==null || ssn.equals(""))) {
					out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
					out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
					out.println("<script>");
					out.println("$(document).ready(function(){");
					out.println("swal ( '', 'Customer found!!', 'success');");
					out.println("});");
					out.println("</script>");
						
					request.setAttribute("ssn", ssn);
					request.setAttribute("cId", cust_id);
					request.setAttribute("name", cb.getName());
					request.setAttribute("address", cb.getAddress());
					request.setAttribute("age", cb.getAge());
					RequestDispatcher rd = request.getRequestDispatcher("UpdateCustomer.jsp");
						rd.include(request, response);
					}
					else {
						
						out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
						out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
						out.println("<script>");
						out.println("$(document).ready(function(){");
						out.println("swal ( '', 'Customer not found!!', 'error');");
						out.println("});");
						out.println("</script>");
						
						RequestDispatcher rd = request.getRequestDispatcher("CustomerSearch.jsp");
						rd.include(request, response);

						
					}
				}
				else {
					
					if((cust_id == null || cust_id.equals(""))){
						CustomerService cs = new CustomerService();
						String cId = cs.findCustomerBySsnId(id);
						if(!(cId==null || cId.equals(""))) {
							out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
							out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
							out.println("<script>");
							out.println("$(document).ready(function(){");
							out.println("swal ( '', 'Customer found!!', 'success');");
							out.println("});");
							out.println("</script>");
					
							request.setAttribute("cId", cId);
							
							RequestDispatcher rd = request.getRequestDispatcher("UpdateCustomer.jsp");
							rd.include(request, response);
						}
						else {
							
							out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
							out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
							out.println("<script>");
							out.println("$(document).ready(function(){");
							out.println("swal ( '', 'Customer not found!!', 'error');");
							out.println("});");
							out.println("</script>");
							
							RequestDispatcher rd = request.getRequestDispatcher("CustomerSearch.jsp");
							rd.include(request, response);

							
						}
				}
			}			
			
	}

}
