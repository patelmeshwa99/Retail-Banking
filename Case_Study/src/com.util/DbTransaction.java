package com.util;

import java.sql.*;


public class DbTransaction {
		private static final String DRIVERNAME="org.sqllite.jdbc";
		private static final String URL="jdbc:sqlite:C:\\Users\\hp\\MySQLiteDB";
		private static final String USERNAME="";
		private static final String PASSWORD="";
		private static final String Table1="createcustomer";
		
		public static Connection getConnection() {
			Connection con = null;
			
			try {
				Class.forName("DRIVERNAME");
				con = DriverManager.getConnection(URL, USERNAME, PASSWORD);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	
			return con;
		}
		public static void closeConnection(Connection con) {
			
			if(con != null)
			{
				try {
					con.close();
				}
				catch (SQLException e){
					e.printStackTrace();
				}
			}
		}
		public static void closeStatement(PreparedStatement ps) {
			
			if(ps != null)
			{
				try {
					ps.close();
				}
				catch (SQLException e){
					e.printStackTrace();
				}
			}
		}
}
