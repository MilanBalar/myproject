<%@page import="java.awt.Desktop.Action"%>
<%@page import="com.DAO.DAOclass"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.bean.Complain"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color:lightblue;">

 <%
      List<Complain> cmp=DAOclass.getAllDataForUserSide();
       
    
  %>
    <h2 align="center">Wel come Admin</h2>
    <h3 align="center">All Complains </h3>
  <form>
   <b> <table border="2" align="center">
      <tr>
        <th>Complain Id</th>
        <th>Complain Date</th>
        <th>Complain Type</th>
        <th>Complain Description</th>
        <th>Remarks</th>
        <th>Delete</th>
        <th>Update</th>
        
      </tr>
      
      <%
          for(Complain c:cmp)
          {
      
      %>
        
        <tr>
        <td><%= c.getComplain_id() %></td>
        <td><%= c.getDate() %></td>
        <td> <%= c.getComplain() %></td>
        <td><%= c.getDescription() %></td>
        <td><%= c.getRemark()   %>
        <td>
              <form action="Servlet" method="post" >
                <input type="hidden" name="id" value=<%= c.getComplain_id() %>> 
                <input type="submit" name=action value="delete" > 
               </form> 
         </td>
         <td>
              <form action="Servlet" method="post" >
                <input type="hidden" name="id" value=<%= c.getComplain_id() %>> 
                <input type="submit" name="action" value="update" >
                
               </form> 
         </td>
          
             
        
        
        
        </tr>
        
         
         
         
         
      <% } %>
  
        
    </table></b>
    
  </form> 
   <h3 align="center"><a href="login.jsp">Log Out</a></h3>


</body>
</html>