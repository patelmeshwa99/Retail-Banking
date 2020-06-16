package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import Util.ConnectionManager;

public class LoginDao {
	
	ConnectionManager cm = new ConnectionManager();
	
	
	public boolean check(String uname, String pass)
	{
		String sql = "select * from userstore where login=? and password=?";
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
	
	public void updateTimestamp(String uname, String pass) {
		String sql = "update userstore set timestamp=current_timestamp where login=? and password=?";
		
		try {
			Connection con = cm.getConnection();
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, uname);
			st.setString(2, pass);
			st.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
}
