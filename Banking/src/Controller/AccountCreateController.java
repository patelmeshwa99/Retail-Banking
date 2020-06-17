/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.caseStudy.controller;

import com.caseStudy.bean.Account;
import com.caseStudy.service.CreateAccountService;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Dell
 */
public class AccountCreateController extends HttpServlet {

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
            out.println("<title>Servlet AccountStatusContoller</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AccountStatusContoller at " + request.getContextPath() + "</h1>");
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
         PrintWriter out=response.getWriter();
        response.setContentType("text/html;charset=UTF-8");
        String action=request.getParameter("action");
       
        if(action.equalsIgnoreCase("createAccount")){
        int custId=Integer.parseInt(request.getParameter("customerId"));
        int deposit=Integer.parseInt(request.getParameter("depositAmount"));
        String accType=request.getParameter("accountType");
        
        Account account=new Account(custId, 0,deposit, accType,"Account created successfully", "Active","");
       
        int created=CreateAccountService.createAccService(account);
        
        if(created>0){
        out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
                        out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
                        out.println("<script>");
                        out.println("$(document).ready(function(){");
                        out.println("swal ( 'Status', 'Account deletion initialized successfully!!', 'success');");
                        out.println("});");
                        out.println("</script>");
                        out.print("<div class=\"alert alert-success fade in\">\n" +
"  <strong>Success!</strong> Account creation iniated.\n" +
"</div>\n" +
"");
                        
                        
                        request.getRequestDispatcher("Create_Account.jsp").include(request, response);
                        
        }
        else{
        out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
                        out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
                        out.println("<script>");
                        out.println("$(document).ready(function(){");
                        out.println("swal ( 'Status', 'Account creation unsuccessfull', 'error');");
                        out.println("});");
                        out.println("</script>");
                        out.println("<div class=\"alert alert-danger fade in\">\n" +
"  <strong>Failed!</strong>\n" +
"</div>\n" +
"");
                        
                        request.getRequestDispatcher("Create_Account.jsp").include(request, response);
                        }
        
        
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
