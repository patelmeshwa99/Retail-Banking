package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Tranfermoneybean;
import dao.Transferdao;

/**
 * Servlet implementation class Transfermoneyser
 */
@WebServlet("/Transfermoneyser")
public class Transfermoneyser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Transfermoneyser() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		String sourceacctype=request.getParameter("sourceaccountype");
		String desacctype=request.getParameter("targetaccountype");
		int tmoney=Integer.parseInt(request.getParameter("tranferamt"));
		System.out.println("in servlet"+tmoney);
		System.out.println("source:"+sourceacctype);
		System.out.println("desti:"+desacctype);
		Tranfermoneybean dp=new Tranfermoneybean();
		dp.setTmoney(tmoney);
		
		try {
			int bal=Transferdao.transfer(sourceacctype,desacctype,tmoney);
			System.out.println(bal);
		
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
