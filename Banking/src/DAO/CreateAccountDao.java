/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.caseStudy.dao;

import com.caseStudy.bean.Account;
import com.caseStudy.util.ConnectionManager;
import java.sql.*;

/**
 *
 * @author Dell
 */
public class CreateAccountDao {
static Connection cn=ConnectionManager.getConnection();
  static int acc_id=800000000;
public CreateAccountDao(){
acc_id+=1;
}
public int createAccount(Account account){
    String q="Insert into account values(?,?,?,?,?,?,?)";
    try{
        PreparedStatement pstm=cn.prepareStatement(q);
        pstm.setInt(1,account.getCustomer_ID());
        pstm.setInt(2,acc_id);
        pstm.setString(3,account.getAccount_Type());
        pstm.setString(5,account.getMessage());
        pstm.setString(4,account.getStatus());
        long millis=System.currentTimeMillis();  
        java.sql.Date date=new java.sql.Date(millis);  
        pstm.setDate(6,date);
        pstm.setInt(7,account.getAmount());
        int i=pstm.executeUpdate();
        if(i>0){
        return i;}
    }
    catch(SQLException s){
    s.printStackTrace();}
    return 0;
}
}
