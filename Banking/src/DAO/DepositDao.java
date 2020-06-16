package dao;
import java.sql.*;

import bean.Tranfermoneybean;

public class DepositDao {
public static int deposit(int dm) throws ClassNotFoundException , SQLException
{
	int dmoney=dm;
	int bal=0,rbal=0;
	String url="jdbc:mysql://localhost:3306/retailbankmanagement?useSSL=false" ;
	String username="root";
	String password="root";
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection(url, username, password);
	Statement stmt=con.createStatement();
	ResultSet rs=stmt.executeQuery("select balance from account where  custid=110000002;");
	while(rs.next())
	{
		bal=rs.getInt("balance");
		Tranfermoneybean db=new Tranfermoneybean();
		db.setDepositmoney(dmoney);
		rbal=bal+dmoney;
	}
	PreparedStatement ps=con.prepareStatement("update account set balance=? where custid=110000002;");
	ps.setInt(1, rbal);
	int a=ps.executeUpdate();
	
	return rbal;
}

}
