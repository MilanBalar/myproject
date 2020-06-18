package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.DAOclass;
import com.bean.Client;
import com.bean.Complain;

public class Servlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	 
		response.setContentType("text/html");
		PrintWriter out =response.getWriter(); 
		

	    	
	String a=request.getParameter("action");
		
		if(a.equalsIgnoreCase("Register"))
		{
	 
		Client c=new Client();
		c.setName(request.getParameter("un"));
		c.setEmail(request.getParameter("um"));
		c.setPassword(request.getParameter("up"));
		
		DAOclass.insertData(c);
		response.sendRedirect("login.jsp");
		
		}
		else if(a.equalsIgnoreCase("login"))
		{  
			String user = request.getParameter("user");
			String email=request.getParameter("ue");
			String pass=request.getParameter("up");
		  if (user.equals("Admin"))
		      {		
				if(email.equals("milanbalar2000@gmail.com") && pass.equals("123"))
					{
						response.sendRedirect("show_user_side_data.jsp");
			  
			 
					}
				else{
					out.print("unvalid Admin password");
					request.getRequestDispatcher("login.jsp").include(request, response);
				
				
			     	}
		       }
			
			
		     else if (user.equals("Customer"))
		    {		
		    Client c=DAOclass.getallDatabyEmail(email);
	          
		     String send_name= c.getName();
		     String send_email= c.getEmail();
		     int send_id=c.getId();
		
		     if(c.getPassword().equals(pass) )
		     {
		     
			request.setAttribute("id",send_id); 
			request.setAttribute("name",send_name);
			request.setAttribute("email",send_email);
			
			request.getRequestDispatcher("welcome.jsp").forward(request, response);
		    }
		    else {
			out.print("unvalid password");
		 	request.getRequestDispatcher("login.jsp").include(request, response);
		    }	
	
		    }
	   }	
	
	
		else if(a.equalsIgnoreCase("complain"))
		{
			 Client c=new Client();
			   int clint_id=Integer.parseInt(request.getParameter("client_id"));
			   //int client_id=(Integer) request.getAttribute("client_id");  
			  c.setId(clint_id);
			   
			   
			  String email1= request.getParameter("ue");
			   
			  
			    Complain co=new Complain();
			    
			  
			     //co.setComplain_id(Integer.parseInt(request.getParameter("com_id")));
			     co.setCemail(email1);
			     co.setDate(request.getParameter("date"));
			 
			     co.setComplain(request.getParameter("complain" ));           
			     co.setDescription(request.getParameter("description"));
			    // co.setComplain_id(Integer.parseInt(request.getParameter("id")));
			    co.setClient(c);
			     
			      DAOclass.SaveData(co);
			  
			     
			      request.setAttribute("email",email1);
			     
			      
			     request.getRequestDispatcher("show_complain.jsp").forward(request, response);
			
			
	 		
	    	}
		
		

	
	else if(a.equalsIgnoreCase("delete"))
		{
			int id=Integer.parseInt(request.getParameter("id"));
	        
			
			DAOclass.deleteData(id);
			response.sendRedirect("show_user_side_data.jsp"); 
		}
	     
	     
	else if(a.equals("update"))
		{
			
		
		 request.getRequestDispatcher("update.jsp").forward(request, response);
			
		}
	else if(a.equals("Edit"))
	{
		
		 request.getRequestDispatcher("Edit.jsp").forward(request, response);
		
		
	}
		
		
	
	 
	



	} 
	}
	

		
		



