package controller;
import bean.Tranfermoneybean;
import dao.DepositDao;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Depositmoneyser
 */
@WebServlet("/Depositmoneyser")
public class Depositmoneyser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Depositmoneyser() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
		
		
		response.setContentType("text/html");
		
	
		String amt=request.getParameter("depositamt");
		int depmoney=Integer.parseInt(amt);
		System.out.println("in servlet"+depmoney);
		Tranfermoneybean dp=new Tranfermoneybean();
		dp.setDepositmoney(depmoney);
		
		try {
			int bal=DepositDao.deposit(depmoney);
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
