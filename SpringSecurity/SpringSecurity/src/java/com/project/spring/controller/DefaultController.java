/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.project.spring.controller;

import com.project.spring.dao.ContactDAO;
import com.project.spring.entity.Contact;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author forsell
 */
@Controller
@RequestMapping(value="/")
public class DefaultController {

    @Autowired
    private ContactDAO contactDAO;
    @RequestMapping(method = RequestMethod.GET)
    public String index(){
        return "index";
    }
    @RequestMapping(value="welcome",method = RequestMethod.GET)
    public String welcome(ModelMap map){
        //contactDAO.insert(new Contact(0,"Dixanta hibernate","Shrestha","dixanta@gmail.com","9999999999"));
        map.addAttribute("contacts",contactDAO.getAll());
        return "welcome";
    }
}
