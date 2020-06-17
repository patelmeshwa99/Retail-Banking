package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import bean.Tranfermoneybean;

public class Transferdao {
	public static int transfer(String st,String dt,int tm) throws ClassNotFoundException , SQLException
	{
		String stype=st;
		String dtype=dt;
		int tmoney=tm;
		String s="";
		String t="";
		int sbal=0,dbal=0;
		Tranfermoneybean db=new Tranfermoneybean();
		
		db.setTmoney(tmoney);
		String url="jdbc:mysql://localhost:3306/retailbankmanagement?useSSL=false" ;
		String username="root";
		String password="root";
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=DriverManager.getConnection(url, username, password);
		Statement stmt=con.createStatement();
		ResultSet rs=stmt.executeQuery("select balance  from account where custid=110000004 and acctype='" + stype + "'");
		while(rs.next())
		{
			sbal=rs.getInt("balance");
			sbal=sbal-tmoney;
		}
		ResultSet rs1=stmt.executeQuery("select balance  from account where custid=110000004 and acctype='" + dtype + "' ");
		while(rs1.next())
		{
			dbal=rs1.getInt("balance");
			dbal=dbal+tmoney;
		}
		/*ResultSet rs=stmt.executeQuery("select  acctype from account where acctype=stype");
		while(rs.next())
		{
			s=rs.getString("acctype");
		}
		ResultSet rs1=stmt.executeQuery("select  acctype from account where acctype=dtype");
		while(rs1.next())
		{
			s=rs1.getString("acctype");
		}*/
		PreparedStatement ps=con.prepareStatement("update account set balance=? where custid=110000003 and acctype='" + stype + "'");
		ps.setInt(1,sbal);
		int a=ps.executeUpdate();
		PreparedStatement ps1=con.prepareStatement("update account set balance=? where custid=110000003 and acctype='" + dtype + "'");
		ps1.setInt(1, dbal);
		int b=ps1.executeUpdate();
		
		return sbal;
	}

}
