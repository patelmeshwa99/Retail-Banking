/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.service.CustomerSevice;
import com.bean.customer;

/**
 *
 * @author Manoj
 */
public class delete extends HttpServlet {

    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        customer cus=new customer();
        PrintWriter out=response.getWriter();
        CustomerSevice service=new CustomerSevice();
        cus.setAccountId(Integer.parseInt(request.getParameter("account_id")));
       
        int source=service.deleteCustomer(cus);
       request.setAttribute("alertMsg", "delete");
       RequestDispatcher rd= request.getRequestDispatcher("US007.jsp");
            rd.forward(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
