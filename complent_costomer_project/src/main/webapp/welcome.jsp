
<%@page import="java.util.Date"%>
<%@page import="com.bean.Client"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Complain Form</title>
</head>
<body style="background-color:grey;">
   
   <% 
   
       int client_id=(Integer)request.getAttribute("id"); 
       //request.setAttribute("client_id",id);
       String name=(String)request.getAttribute("name"); 
       String email=(String)request.getAttribute("email"); 
   %>

 <h1 align="center">welcome  <%=name %> </h1><br>
  <h3 align="center">Please Write Your Complains</h3>

 <form action="Servlet" method="post">
   <table border="3" align="center">
      <tr><th colspan="2">Complain form</th>
      
      </tr>
     
    <tr> 
      <td>
             your Id 
        
       </td>
        <td>
             <input type="text" name="client_id" value="<%= client_id%>">
        
       </td>
    </tr> 
    <tr>
       <td>
            your Name 
        
       </td>
        <td>
             <input type="text" name="un" value="<%= name %>">
        
       </td>
    </tr>
   
   <tr>
       <td>
            your Email_id 
        
       </td>
       <td>
             <input type="text" name="ue" value=" <%= email %>">
            
         
       </td>
    </tr>
    
    <tr>
       <td>
            time & date 
        
       </td>
       <td>
          <input type="text" name="date" value="  <%= new Date() %> ">
           
         
       </td>
    </tr>
    <tr>
       <td>
            complain type
        
       </td>
       <td>
           <select name="complain">
            <option>water problem</option>
            <option>electricity problem</option>
            <option>garbage problem</option>
            <option>other problem</option>
           
           </select>
         
       </td>
    </tr>
   
   <tr>
       <td>
            complain description
        
       </td>
       <td>
           <input type="text" name="description" value="">
       </td>
    </tr>
    
    <tr >
       <td colspan="2">
           <input  type="submit" name="action" value="complain" >
        
       </td>
       
    </tr>
   
   
   
   
   </table>
   
   
   </form>
   
   
</body>
</html>