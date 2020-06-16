/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import com.bean.customer;
import com.service.CustomerSevice;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Manoj
 */
public class control1 extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet control1</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet control1 at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        processRequest(request, response);
        customer cus=new customer();
        PrintWriter out=response.getWriter();
        CustomerSevice service=new CustomerSevice();
        String account_id=request.getParameter("account_id");
        String customer_id=request.getParameter("customer_id");
        String account_type=request.getParameter("account");
        
        if(!(account_id.equals("")))
         {
           cus.setAccountId(Integer.parseInt(account_id));
            ArrayList<customer> customerList=new ArrayList<customer>();    
            customerList= service.getDetailAccount(cus);
            request.setAttribute("customerlist", customerList);
            RequestDispatcher rd= request.getRequestDispatcher("US010.jsp");
            rd.forward(request, response);           
         }
        else
        {
            cus.setCustomerId(Integer.parseInt(customer_id));
            cus.setAccountType(account_type);
            ArrayList<customer> customerList=new ArrayList<customer>();    
            customerList= service.getDetailCustomer(cus);
            request.setAttribute("customerlist", customerList);
            RequestDispatcher rd= request.getRequestDispatcher("US010.jsp");
            rd.forward(request, response);
        }
          
    }
    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
