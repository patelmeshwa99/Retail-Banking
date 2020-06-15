package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import Util.ConnectionManager;

public class LoginDao {
	
	ConnectionManager cm = new ConnectionManager();
	
	String sql = "select * from userstore where login=? and password=?";
	public boolean check(String uname, String pass)
	{
		try {
			Connection con = cm.getConnection();
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, uname);
			st.setString(2, pass);
			ResultSet rs= st.executeQuery();
			if(rs.next())
			{
				return true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	
}
