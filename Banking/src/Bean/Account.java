/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.caseStudy.bean;

/**
 *
 * @author Dell
 */
public class Account {
 int customer_ID, account_ID,amount;
String account_Type, status, message, last_Updated;
    public Account(int customer_ID, int account_ID, int amount, String account_Type, String status, String message, String last_Updated) {
        this.customer_ID = customer_ID;
        this.account_ID = account_ID;
        this.amount = amount;
        this.account_Type = account_Type;
        this.status = status;
        this.message = message;
        this.last_Updated = last_Updated;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }


    public int getCustomer_ID() {
        return customer_ID;
    }

    public void setCustomer_ID(int customer_ID) {
        this.customer_ID = customer_ID;
    }

    public int getAccount_ID() {
        return account_ID;
    }

    public void setAccount_ID(int account_ID) {
        this.account_ID = account_ID;
    }

    public String getAccount_Type() {
        return account_Type;
    }

    public void setAccount_Type(String account_Type) {
        this.account_Type = account_Type;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public String getLast_Updated() {
        return last_Updated;
    }

    public void setLast_Updated(String last_Updated) {
        this.last_Updated = last_Updated;
    }
   

}
