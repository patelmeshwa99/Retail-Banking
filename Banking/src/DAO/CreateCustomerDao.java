package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;

import Bean.CustomerBean;
import Util.ConnectionManager;

public class CreateCustomerDao {
	
ConnectionManager cm = new ConnectionManager();
	
	String sql = "insert into customerstatus(ssn, name, Age, Address, State, City) values (?, ?, ?, ?, ?, ?)";
	
	public boolean insertCustomer(CustomerBean cust)
	{
		boolean status = false;
		
		try {
			Connection con = cm.getConnection();
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

	
}
