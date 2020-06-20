package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import Bean.AccountBean;
import Bean.CustomerBean;
import Util.ConnectionManager;

public class AccountDao {

	ConnectionManager cm = new ConnectionManager();
	static int account_id = 100000000;
	
	public AccountDao(){
		account_id += 1;
	}
	
	public boolean createAccount(AccountBean acc)
	{
		boolean status = false;
		String sql = "insert into accountstatus(account_id, cust_id, account_type, status, message, last, amount) values (?, ?, ?, ?, ?, current_timestamp, ?)";
		
		try {
			Connection con = cm.getConnection();
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, Integer.toString(account_id));
			st.setString(2, acc.getCustomer_id());
			st.setString(3, acc.getAccount_type());
			st.setString(4, "Active");
			st.setString(5, "created successfully");
			st.setInt(6, acc.getBalance());
			status = st.execute();
			status=true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return status;
	}

	public ArrayList<String> findAccountByAccountId(String acc_id)
	{
		String sql = "select * from accountstatus where account_id=?";
		ResultSet result;
		ArrayList data = new ArrayList<String>();
		try {
			Connection con = cm.getConnection();
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, acc_id);
			 result = st.executeQuery();
			 
			 while (result.next()) {
				 data.add(result.getString(2));
				 data.add(result.getString(1));
				 data.add(result.getString(3));
				 data.add(result.getString(7));
		        }
		} catch (Exception e) {
			e.printStackTrace();
		}
		 return data;
	}
	
	public ArrayList<String> findAccountByCustomerId(String cust_id)
	{
		String sql = "select account_id from accountstatus where cust_id=?";
		ResultSet result;
		ArrayList<String> accIds= new ArrayList<String>();
		try {
			Connection con = cm.getConnection();
			PreparedStatement st = con.prepareStatement(sql, ResultSet.TYPE_SCROLL_INSENSITIVE, 
					  ResultSet.CONCUR_READ_ONLY);
			st.setString(1, cust_id);
			 result = st.executeQuery();
			 while (result.next()) {
				accIds.add(result.getString("account_id"));
				System.out.println(accIds);
		     }
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return accIds;
	}
	
	public int deleteAccount(String accountId) {
		int rows_affected;
		String sql = "delete from accountstatus where account_id=?";
		
		try {
			Connection con = cm.getConnection();
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, accountId);
			rows_affected = st.executeUpdate();
			return rows_affected;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}
	
	public int updateBalance(String acc_id, int amount) 
	{
		int rows_affected=0;
		String sql = "update accountstatus set message=?, last=current_timestamp, amount=? where account_id=?";
		
		try {
			Connection con = cm.getConnection();
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, "Balance updated!");
			st.setInt(2, amount);
			st.setString(3, acc_id);
			rows_affected = st.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println(rows_affected);
		return rows_affected;
	}
	
}
