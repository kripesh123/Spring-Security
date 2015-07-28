/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.project.spring.dao.impl;

import com.project.spring.dao.ContactDAO;
import com.project.spring.entity.Contact;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 *
 * @author forsell
 */
@Repository
public class ContactDAOImpl implements ContactDAO{

    @Autowired
    private SessionFactory sessionFactory;
    private Session session;
    public ContactDAOImpl(){
        
    }
    @Override
    public List<Contact> getAll() {
        session=sessionFactory.openSession();
        return session.createQuery("SELECT c from Contact c").list();
    }

    @Override
    public void insert(Contact c) {
        session=sessionFactory.openSession();
        Transaction  tx=session.beginTransaction();
        session.saveOrUpdate(c);
        tx.commit();
        session.close();
    }

}
