package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Tranfermoneybean;
import dao.Withdrawdao;

/**
 * Servlet implementation class Withdrawser
 */
@WebServlet("/Withdrawser")
public class Withdrawser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Withdrawser() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		
		
		String amt=request.getParameter("withdrawamt");
		int withdrawamt=Integer.parseInt(amt);
		System.out.println("in servlet"+withdrawamt);
		Tranfermoneybean wb=new Tranfermoneybean();
		wb.setWithdrawmoney(withdrawamt);
		
		try {
			int bal=Withdrawdao.withdraw(withdrawamt);
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
