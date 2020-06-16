package com.service;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Manoj
 */
import com.bean.customer;
import com.dao.CustomerDao;
import java.sql.*;
import java.util.ArrayList;
public class CustomerSevice {
 CustomerDao cDao=new CustomerDao();
 public  int deleteCustomer(customer c)
 {
     return cDao.deleteCustomer(c);
 }
 public ArrayList<customer> getDetails(customer cus)
 {
     
     ArrayList<customer> customerList=new ArrayList<customer>();
     customerList=cDao.getDetails(cus);
     return customerList;
 }
 public ArrayList<customer> getDetail(customer cus)
 {
     ArrayList<customer> customerList=new ArrayList<customer>();
     customerList=cDao.getDetail(cus);
     return customerList;
 }
 public ArrayList<customer> getDetailAccount(customer cus )
 {
     ArrayList<customer> customerList=new ArrayList<customer>();
     customerList=cDao.getDetailAccount(cus);
     return customerList;
     
 }
 public ArrayList<customer> getDetailCustomer(customer cus )
 {
     ArrayList<customer> customerList=new ArrayList<customer>();
     customerList=cDao.getDetailCustomer(cus);
     return customerList;
     
 }
}
