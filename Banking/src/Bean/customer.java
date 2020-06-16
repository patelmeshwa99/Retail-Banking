package com.bean;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Manoj
 */
public class customer {
    public int accountId;
    public String accountType;
    public int ssn_id;
    public int customer_id;
    public int balance;
    public int getBalance()
    {
        return balance;
    }
    public int getAccountId()
    {
        return accountId;
    }
    public String getAccountType()
    {
        return accountType;
    }
    public int getSsnId()
    {
        return ssn_id;
    }
    public int getCustomer_id()
    {
        return customer_id;
    }
    public void setBalance(int balance)
    {
        this.balance=balance;
    }
    public void setSsnId(int ssn_id)
    {
        this.ssn_id=ssn_id;
    }
    public void setCustomerId(int customer_id)
    {
        this.customer_id=customer_id;
    }
    public void setAccountId(int accountId)
    {
        this.accountId=accountId;
    }
    public void setAccountType(String accountType)
    {
        this.accountType=accountType;
    }
    
    
}
