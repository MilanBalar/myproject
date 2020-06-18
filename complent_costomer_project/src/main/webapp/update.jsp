<%@page import="com.DAO.DAOclass"%>
<%@page import="com.bean.Complain"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>updating data</title>
</head>
<body style="background-color:lightblue;">
  <% 
      int id=Integer.parseInt(request.getParameter("id"));
     Complain co=DAOclass.updateEx(id);
  %> 
  <form action="Servlet" method="post" >
     <table border="5" align="center" >
     <tr>
        <td>
            Complain Id
        </td>
        <td>
           <input type="text" name="cuid" value="<%= co.getComplain_id() %>">
        </td>
     </tr>
     <tr>
         <td>
            Complain Email
        </td>
     
        <td>
           <input type="text" name="cuemail" value="<%= co.getCemail() %>">
        </td>
     </tr>
     <tr>
         <td>
            Complain Date
        </td>
       
        
        <td>
           <input type="text" name="cudate" value="<%= co.getDate() %>">
        </td>
     </tr>
     <tr>   
        <td>
            Complain Type
        </td>
        <td>
           <input type="text" name="cutype" value="<%= co.getComplain() %>">
        </td>
     </tr>
      <tr>   
         <td>
            Complain Description
        </td>
        <td>
           <input type="text" name="cudes" value="<%= co.getDescription() %>">
        </td>
      </tr>
      <tr>  
         <td>
            Remarks
        </td>
        <td>
           <input type="text" name="cure" value="<%= co.getRemark() %>">
        </td>
       </tr>
        <tr>   
        <td colspan="2">
           <input type="submit" name="action" value="Edit"  >
        </td>
     </tr>
     </table>


  </form>

</body>
</html>