package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import bean.Tranfermoneybean;

public class Withdrawdao {
	public static int withdraw(int wm) throws ClassNotFoundException , SQLException
	{
		int wmoney=wm;
		int bal=0,rbal=0;
		String url="jdbc:mysql://localhost:3306/retailbankmanagement?useSSL=false" ;
		String username="root";
		String password="root";
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=DriverManager.getConnection(url, username, password);
		Statement stmt=con.createStatement();
		ResultSet rs=stmt.executeQuery("select balance from account where custid=110000002");
		while(rs.next())
		{
			bal=rs.getInt("balance");
			Tranfermoneybean wb=new Tranfermoneybean();
			wb.setWithdrawmoney(wmoney);
			rbal=bal-wmoney;
		}
		PreparedStatement ps=con.prepareStatement("update account set balance=? where custid=110000002;");
		ps.setInt(1, rbal);
		int a=ps.executeUpdate();
		
		return rbal;
	}

}
