package com.DAO;

import java.util.List;

import javax.persistence.Query;

import org.apache.catalina.connector.Request;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.bean.Client;
import com.bean.Complain;

public class DAOclass 
{
	
	public static Session getSession()
	{
		SessionFactory sf=new Configuration().configure().buildSessionFactory();
		Session se=sf.openSession();
		return se;
	}
	
	public static void EditData(Complain co)
	{
		Session session = DAOclass.getSession();
		session.beginTransaction();
	    session.update(co);
		session.getTransaction().commit();
		session.close();
		
		
	}
	
	public static Complain updateEx(int id)
	{
		Session session = DAOclass.getSession();
		session.beginTransaction();
		Complain c = session.get(Complain.class,id);
		return c;
		
	}
	
	
	public static void deleteData(int id)
	{
	Session session = DAOclass.getSession();
	session.beginTransaction();
	Complain c = session.get(Complain.class,id);
	session.delete(c);
	session.getTransaction().commit();
	session.close();
	}
	
	
	 public static List<Complain> getAllDataForUserSide()
		{
			List<Complain> qu=null; 
	    	Session se=DAOclass.getSession();
			se.beginTransaction();
			Query q=se.createQuery("from Complain");
			qu = q.getResultList();
			return qu;
			
			
		}
	   
    public static List<Complain> getcomplainData(String email)
    {  
    	List<Complain> cmp=null; 
    	Session se=DAOclass.getSession();
		se.beginTransaction();	 
        Query q=se.createQuery("from Complain where cemail=:n");
        q.setParameter("n", email);
        
    	cmp=q.getResultList();//it convert data into list   yes
    	return cmp;
    	
    	
    }
	
   
    
	public static void SaveData(Complain co)
	{
		Session se=DAOclass.getSession();
		se.beginTransaction();
		se.save(co);
		se.getTransaction().commit();
		se.close();
		
		
		
	}
	
	
	
	
	 
	
	
	public static Client getallDatabyEmail(String email)
	{
		Session se=DAOclass.getSession();
		se.beginTransaction();
	Query q= se.createQuery("from Client where email=:n ");
    q.setParameter("n",email);
    Client qc=(Client)q.getSingleResult();
    se.getTransaction().commit();
    se.close();
    return qc;
		
		
	}
	
	
	
	
	public static void insertData(Client c)
	{
		Session se=DAOclass.getSession();
		se.beginTransaction();
		se.save(c);
		se.getTransaction().commit();
		se.close();
		
		
	}
	

}
