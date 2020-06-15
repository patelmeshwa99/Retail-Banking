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

}
