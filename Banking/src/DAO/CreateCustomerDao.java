package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import Bean.CustomerBean;
import Util.ConnectionManager;

public class CreateCustomerDao {
	
	ConnectionManager cm = new ConnectionManager();
	static int cust_id = 100000000;
	
	public CreateCustomerDao(){
		cust_id += 1;
	}
	
	public boolean insertCustomer(CustomerBean cust)
	{
		boolean status = false;
		String sql = "insert into customerstatus(ssn, name, Age, Address, State, City, cust_id) values (?, ?, ?, ?, ?, ?, ?)";
		
		try {
			Connection con = cm.getConnection();
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, cust.getSsn_id());
			st.setString(2, cust.getName());
			st.setInt(3, cust.getAge());
			st.setString(4, cust.getAddress());
			st.setString(5, cust.getState());
			st.setString(6, cust.getCity());
			st.setString(7, Integer.toString(cust_id));
			status = st.execute();
		} catch (Exception e) {
			e.printStackTrace();
		}
		status = true;
		return status;
	}

	
	public CustomerBean findCustomerByCustomerId(String cus_id)
	{
		String sql = "select * from customerstatus where cust_id=?";
		ResultSet result;
		String ssn_id="";
		CustomerBean cust = new CustomerBean();
		try {
			Connection con = cm.getConnection();
			PreparedStatement st = con.prepareStatement(sql, ResultSet.TYPE_SCROLL_INSENSITIVE, 
					  ResultSet.CONCUR_READ_ONLY);
			st.setString(1, cus_id);
			 result = st.executeQuery();
			 
			 while (result.next()) {
		            cust.setSsn_id(result.getString(2));
		            cust.setName(result.getString(3));
		            cust.setAge(result.getInt(4));
		            cust.setAddress(result.getString(5));
		            cust.setState(result.getString(6));
		            cust.setCity(result.getString(7));
		            return cust;
		        }
			 
		} catch (Exception e) {
			e.printStackTrace();
		}
		 return null;
	}
	
	public String findCustomerBySsnId(String ssn_id)
	{
		String sql = "select * from customerstatus where ssn=?";
		ResultSet result;
		String cId="";
		
		try {
			Connection con = cm.getConnection();
			PreparedStatement st = con.prepareStatement(sql, ResultSet.TYPE_SCROLL_INSENSITIVE, 
					  ResultSet.CONCUR_READ_ONLY);
			st.setString(1, ssn_id);
			 result = st.executeQuery();
			 while (result.next()) {
				 	cId = result.getString(1);
		            return cId;
		        }
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return null;
	}
	
	public int updateCustomer(CustomerBean cust, String cust_id) {
		int rows_affected;
		
		String sql = "update customerstatus set name=?, age=?, address=? where cust_id=cust_id";

		try {
			Connection con = cm.getConnection();
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, cust.getName());
			st.setString(3, cust.getAddress());
			st.setInt(2, cust.getAge());
			rows_affected = st.executeUpdate();
			return rows_affected;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}
}