<%@page import="com.DAO.DAOclass"%>
<%@page import="com.bean.Complain"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit </title>
</head>
<body>

    <%
        Complain co=new Complain();
        co.setComplain_id(Integer.parseInt(request.getParameter("cuid")));
        co.setCemail(request.getParameter("cuemail"));
        co.setDate(request.getParameter("cudate"));
        co.setDescription(request.getParameter("cudes"));
        co.setRemark(request.getParameter("cure"));
        
         DAOclass.EditData(co);
         response.sendRedirect("show_user_side_data.jsp");
        
    %>


</body>
</html>