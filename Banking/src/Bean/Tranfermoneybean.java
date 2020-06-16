package bean;

public class Tranfermoneybean {
	int tmoney;
	String sourctype;
	String destype;
	int depositmoney;
	int withdrawmoney;

	public int getDepositmoney() {
		return depositmoney;
	}

	public void setDepositmoney(int depositmoney) {
		this.depositmoney = depositmoney;
	}
	

	public int getWithdrawmoney() {
		return withdrawmoney;
	}

	public void setWithdrawmoney(int withdrawmoney) {
		this.withdrawmoney = withdrawmoney;
	}
	public String getDestype() {
		return destype;
	}

	public void setDestype(String destype) {
		this.destype = destype;
	}

	public String getSourctype() {
		return sourctype;
	}

	public void setSourctype(String sourctype) {
		this.sourctype = sourctype;
	}

	
	public int getTmoney() {
		return tmoney;
	}

	public void setTmoney(int tmoney) {
		this.tmoney = tmoney;
	}
}
