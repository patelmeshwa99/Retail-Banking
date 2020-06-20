package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

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


@WebServlet("/SearchAccountServlet")
public class SearchAccountServlet extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("account_id");
		String cust_id = request.getParameter("customer_id");
		String view = request.getParameter("view");
		String view2 = request.getParameter("view2");
		System.out.println(view2);
		String delete = request.getParameter("delete");
		String delete2 = request.getParameter("delete2");
		
		PrintWriter out = response.getWriter();
		
		if(view2 != null || delete2!=null) {
			System.out.println("Inter not null");
			String accId = request.getParameter("select_id");
			System.out.println(accId);
		
			AccountService as = new AccountService();
			ArrayList<String> data = as.findAccountByAccountId(accId); 
			System.out.println(data.get(1)+" "+data.get(2));
			
			if(data.size()!=0) {
				out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
				out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
				out.println("<script>");
				out.println("$(document).ready(function(){");
				out.println("swal ( '', 'Account found!!', 'success');");
				out.println("});");
				out.println("</script>");
		
				request.setAttribute("aId", data.get(1) );
				request.setAttribute("cId", data.get(0));
				request.setAttribute("aType", data.get(2));
				request.setAttribute("balance", data.get(3));
				
				if(view2==null) {
					RequestDispatcher rd = request.getRequestDispatcher("DeleteAccount.jsp");
					rd.include(request, response);
				}
				else {
					RequestDispatcher rd = request.getRequestDispatcher("ViewAccount.jsp");
					rd.include(request, response);
				}
			}
			else
			{
				out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
				out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
				out.println("<script>");
				out.println("$(document).ready(function(){");
				out.println("swal ( '', 'Account not found!!', 'error');");
				out.println("});");
				out.println("</script>");
				
				RequestDispatcher rd = request.getRequestDispatcher("AccountSearch.jsp");
				rd.include(request, response);
				
			}
		
		}
		else 
		{
		
			if((cust_id == null || cust_id.equals(""))) 
			{
				
				System.out.println("By accId");
				AccountService as = new AccountService();
				
				ArrayList<String> data = as.findAccountByAccountId(id); 
				
				if(data.size()!=0) {
					out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
					out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
					out.println("<script>");
					out.println("$(document).ready(function(){");
					out.println("swal ( '', 'Account found!!', 'success');");
					out.println("});");
					out.println("</script>");
			
					request.setAttribute("aId", data.get(1) );
					request.setAttribute("cId", data.get(0));
					request.setAttribute("aType", data.get(2));
					request.setAttribute("balance", data.get(3));
					
					if(view==null) {
						RequestDispatcher rd = request.getRequestDispatcher("DeleteAccount.jsp");
						rd.include(request, response);
					}
					else {
						RequestDispatcher rd = request.getRequestDispatcher("ViewAccount.jsp");
						rd.include(request, response);
					}
					
				}
				else
				{
					out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
					out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
					out.println("<script>");
					out.println("$(document).ready(function(){");
					out.println("swal ( '', 'Account not found!!', 'error');");
					out.println("});");
					out.println("</script>");
					
					RequestDispatcher rd = request.getRequestDispatcher("AccountSearch.jsp");
					rd.include(request, response);
					
				}
				
			}
			else
			{
				if((id == null || id.equals("")))
				{
					System.out.println("By custId");
					AccountService as = new AccountService();
					ArrayList<String> accIds = as.findAccountByCustomerId(cust_id);
					
					if(accIds.size()!=0) 
					{
						out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
						out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
						out.println("<script>");
						out.println("$(document).ready(function(){");
						out.println("swal ( '', 'Customer found!!', 'success');");
						out.println("});");
						out.println("</script>");
				
						request.setAttribute("customerId", cust_id);
						request.setAttribute("accIds", accIds);
						
						RequestDispatcher rd = request.getRequestDispatcher("IntermediateSearch.jsp");
						rd.include(request, response);
						
					}
					else
					{
						out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
						out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
						out.println("<script>");
						out.println("$(document).ready(function(){");
						out.println("swal ( '', 'Customer not found!!', 'error');");
						out.println("});");
						out.println("</script>");
						
						RequestDispatcher rd = request.getRequestDispatcher("AccountSearch.jsp");
						rd.include(request, response);
						
					}
					
				}
			}
		}
		
	}

}
