package Service;

import java.util.ArrayList;

import Bean.AccountBean;
import Bean.CustomerBean;
import DAO.AccountDao;

public class AccountService {

	AccountDao accDao = new AccountDao();
	
	public boolean createAccount(AccountBean acc)
	{
		boolean status = accDao.createAccount(acc);
		return status;
	}
	
	public ArrayList<String> findAccountByAccountId(String acc_id)
	{
		ArrayList ab = accDao.findAccountByAccountId(acc_id);
		return ab;
	}

	public ArrayList<String> findAccountByCustomerId(String cust_id)
	{
		ArrayList<String> accIds = accDao.findAccountByCustomerId(cust_id);
		return accIds;
	}
	public int deleteAccount(String accountId) {
		return accDao.deleteAccount(accountId);
	}
	
	public int updateBalance(String acc_id, int amount)
	{
		return accDao.updateBalance(acc_id, amount);
	}

	
}
