<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.bean.Complain"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="com.bean.Client"%>
<%@page import="com.DAO.DAOclass"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>show all complains</title>
</head>
<body style="background-color:grey;">
  <%
  
     String email=(String)request.getAttribute("email");
     
     List<Complain> cmp=DAOclass.getcomplainData(email);   
    
  %>
  
  <h2 align="center">All Complains </h2>
  <form>
    <table border="2" align="center">
      <tr>
        <th>Complain Id</th>
        <th>Complain Date</th>
        <th>Complain Type</th>
        <th>Complain Description</th>
        <th>Remarks</th>
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
        </tr>
        
         
         
         
         
      <% } %>
  
   
    </table>
    
  </form> 
    <h3 align="center"><a href="welcome.jsp">Add More Complains....</a> </h3>
     <h3 align="center"><a href="index.jsp">Log Out....</a> </h3>
   
  
</body>
</html>