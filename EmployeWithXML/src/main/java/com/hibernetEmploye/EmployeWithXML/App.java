package com.hibernetEmploye.EmployeWithXML;


import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.hibernetEmploye.EmployeWithXML.bean.Employe;

public class App 
{
    public static void main( String[] args )
    {
        Employe e=new Employe();
        
        e.setEid(1);
        e.setName("ram");
        e.setContact(989845);
    	e.setSallary(50000);
    	
    	SessionFactory sf=new Configuration().configure().buildSessionFactory();
    	
    	Session s=sf.openSession();
    	
    	s.beginTransaction();
    	
    	s.save(e);
    	
    	s.getTransaction().commit();
    	
    	s.close();
    	sf.close();
    }
}
