/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dao;

/**
 *
 * @author Manoj
 */
import java.sql.*;
import com.bean.customer;
import com.util.DatabaseUtil;
import java.util.ArrayList;
public class CustomerDao {
    Connection con=null;
    PreparedStatement ps=null;
    ResultSet rs=null;
   
    public int deleteCustomer(customer c)
    {
        
        int accountId=c.accountId;
        int i=0;
        con=DatabaseUtil.getConnection();
        try{
            
        Statement s=null;     
        s=con.createStatement();
        i=s.executeUpdate("DELETE FROM account WHERE account_id="+accountId);
        }
        
    catch(Exception e)
    {
        System.out.println(e);
    }
        return i;
    }
    public ArrayList<customer> getDetails(customer cus)
    {
        int ssnId=cus.ssn_id;
        con=DatabaseUtil.getConnection();
        ArrayList<customer> list=new ArrayList<customer>();
            try
            {
                ps=con.prepareStatement("SELECT * FROM account WHERE ssn_id="+ssnId);
                ResultSet result= ps.executeQuery();
                while(result.next())
                {
                   customer c=new customer();
                    c.setAccountId(result.getInt(1));
                    c.setCustomerId(result.getInt(2));
                    c.setAccountType(result.getString(4));
                    c.setBalance(result.getInt(8));
                    list.add(c);
                }
               
            }
            catch(Exception e)
            {
                System.out.println(e);
            }
                    
        
         return list;
    }
    
    public ArrayList<customer> getDetailAccount(customer cus)
    {
        int account_id=cus.accountId;
        con=DatabaseUtil.getConnection();
        ArrayList<customer> list=new ArrayList<customer>();
        try
        {
            ps=con.prepareStatement("SELECT * FROM account WHERE account_id="+account_id);
            ResultSet result = ps.executeQuery();
            while(result.next())
            {
                customer c=new customer();
                c.setAccountId(result.getInt(1));
                c.setCustomerId(result.getInt(2));
                c.setAccountType(result.getString(4));
                c.setBalance(result.getInt(8));
                list.add(c);
            }
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
        return list;
    }
    public ArrayList<customer> getDetailCustomer(customer cus)
    {
        int customer_id=cus.customer_id;
        String account_type=cus.accountType;
        con=DatabaseUtil.getConnection();
        ArrayList<customer> list=new ArrayList<customer>();
        try
        {
            ps=con.prepareStatement("SELECT * FROM account WHERE customer_id="+customer_id+" AND account_type='"+account_type+"'");
            ResultSet result = ps.executeQuery();
            while(result.next())
            {
                customer c=new customer();
                c.setAccountId(result.getInt(1));
                c.setCustomerId(result.getInt(2));
                c.setAccountType(result.getString(4));
                c.setBalance(result.getInt(8));
                list.add(c);
            }
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
        return list;
    }
    
            }
