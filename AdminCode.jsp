<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Login</title>
</head>
<body>
<style>
h1{
                color: #ff0000;
                background-color: #ffff00;
                padding: 10px;
                border: 1px solid red;
                width: 50%;
                text-align: center;
                border-radius: 0px 30px;
            }
 </style>  
<% 
String adminname=request.getParameter("adname"); 
String adminpassword=request.getParameter("psw"); 
if(adminname.equals("admin") && adminpassword.equals("admin")){ 
 response.sendRedirect("AllACRecord.jsp"); 
} 
else{ 
 out.print("<center><h1> Invaild Admin Name And Admin Password...</h1></center>"); 
} 
 
%>

</body>
</html>