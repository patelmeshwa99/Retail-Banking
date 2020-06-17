/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.caseStudy.service;

import com.caseStudy.bean.Account;
import com.caseStudy.dao.CreateAccountDao;

/**
 *
 * @author Dell
 */
public class CreateAccountService {
    
    public static int createAccService(Account account){
    CreateAccountDao adao= new CreateAccountDao();
    return adao.createAccount(account);
    }
}
