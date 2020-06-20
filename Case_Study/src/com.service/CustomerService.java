package com.service;

import java.sql.SQLException;
import java.util.ArrayList;
import com.bean.*;
import com.dao.*;
import com.bean.*;


public class CustomerService {

createCustomerdao custDao = new createCustomerdao();
	
	public boolean insertCustomer(customer cust)
	{
		boolean status = custDao.insertCustomer(cust);
		return status;
	}
	
	public ArrayList<Accountst> getAllaccountst (int serachparam, String searchvalue) throws SQLException,ClassNotFoundException
	{
		ArrayList<Accountst>  Accountlist=new ArrayList<Accountst>();
		if ( /*condition for last no of transaction*/ )
				{
					Accountlist =custDao.getAllaccount(serachparam,searchvalue);
				}
		
		else if ( /*condition based on date*/ )
			{
				Accountlist =custDao.getAllaccount(serachparam,searchvalue);
			}
		return Accountlist;
	}
}
