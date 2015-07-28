/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.project.spring.dao;

import com.project.spring.entity.Contact;
import java.util.List;

/**
 *
 * @author forsell
 */
public interface ContactDAO {
    public List<Contact> getAll();
    public void insert(Contact c);
}
