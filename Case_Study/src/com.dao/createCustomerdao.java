package com.dao;

import java.sql.*;
import java.util.ArrayList;
import com.util.*;



import com.bean.*;

public class createCustomerdao {
	
	//ConnectionManager cm = new ConnectionManager();
	
	private static final ArrayList<Accountst> Accountst = null;

	public boolean insertCustomer(customer cust)
	
	{
		boolean status = false;
		
		try {
			String sql = "insert into createcustomer values (?, ?, ?, ?, ?, ?)";
			Connection con = DbTransaction.getConnection();
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, cust.getSsn_id());
			st.setString(2, cust.getName());
			st.setInt(3, cust.getAge());
			st.setString(4, cust.getAddress());
			st.setString(5, cust.getState());
			st.setString(6, cust.getCity());
			status = st.execute();
		} catch (Exception e) {
			e.printStackTrace();
		}
		status = true;
		return status;
	}
//	based on no of transaction
	public  ArrayList<Accountst> getAllaccount(int trid,int searchvalue)throws SQLException{
		
			Connection con = DbTransaction.getConnection();
			String sql="select * from accountst where trid=? limit(lct)";
			PreparedStatement st = con.prepareStatement(sql);
			ResultSet rs=st.executeQuery();
			while(rs.next())
			{
				Accountst c=new Accountst();
				c.setTrid(Integer.valueOf(trid));
				c.setType(rs.getString(2));
				c.setDt(rs.getDate(3));
				c.setAmount(rs.getInt(4));
				Accountlist.add(c);
			}	
			return Accountst;
			} 	
//based on start and end dates	
	
	public  ArrayList<Accountst> getAllaccount(int trid,Date db)throws SQLException{
		
		Connection con = DbTransaction.getConnection();
		String sql="select * from accountst where trid=?,db > startdat && db < enddate";
		PreparedStatement st = con.prepareStatement(sql);
		ResultSet rs=st.executeQuery();
		while(rs.next())
		{
			Accountst c=new Accountst();
			c.setTrid(Integer.valueOf(trid));
			c.setType(rs.getString(2));
			c.setDt(rs.getDate(3));
			c.setAmount(rs.getInt(4));
			Accountst.add(c);
		}	
		return Accountst;
		} 	
	}




