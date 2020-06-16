package Service;

import Bean.CustomerBean;
import DAO.CreateCustomerDao;

public class CustomerService {
	
	CreateCustomerDao custDao = new CreateCustomerDao();
	
	public boolean insertCustomer(CustomerBean cust)
	{
		boolean status = custDao.insertCustomer(cust);
		return status;
	}

	public CustomerBean findCustomerByCustomerId(String cus_id)
	{
		CustomerBean cb = custDao.findCustomerByCustomerId(cus_id);
		return cb;
	}
	
	public String findCustomerBySsnId(String ssn_id)
	{
		String cId = custDao.findCustomerBySsnId(ssn_id);
		return cId;
	}
	
	public int updateCustomer(CustomerBean cust, String cust_id) {
		return custDao.updateCustomer(cust, cust_id);
	}
	
}
