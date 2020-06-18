<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
#my{
  border: 2px solid black;
  
  }
body{
 background-image: url('my_img.jpg');
  background-repeat: no-repeat;
  background-size: 130% 245%;
   color:hsl(0,100%,50%);
 }</style>
<meta charset="ISO-8859-1">
<title>Main Page</title>

</head>
<body style="background-color:grey;">

  <div id="my"> <h1 align="center">Customer Support System</h1> </div>
  <form action="index12.jsp" >
    <table border="1" align="center">
    <tr><td>
    <h3>SignUp here</h3><input type="submit" value="SignUp" >
    </td></tr>
     </table>
  </form><br><br>
  <form action="login.jsp" >
   <table border="1"  align="center">
     <tr><td>
   <h3>Login here</h3> <input type="submit" value="Login" >
    </td></tr>
    </table>
   
  </form>
 
</body>
</html>