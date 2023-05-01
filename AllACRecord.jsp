<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Account Details</title>
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
<%@ page import="java.sql.*" %> 
<center>
    <h1 style="color:red">ALL ACCOUNT DETAILS ARE</h1> 
<table border="1"> 
<% 
try 
{ 
 
Class.forName("oracle.jdbc.driver.OracleDriver"); 
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","ajit","0069"); 
Statement stmt=con.createStatement(); 
 
ResultSet rs=stmt.executeQuery("select * from hindavi_bank"); 
 
ResultSetMetaData rss=rs.getMetaData(); 
 
int n=rss.getColumnCount();  // n=7 
 
for(int i=1;i<=n;i++)   //rss.  
  
out.println("<td> <font color=blue size=3> "+"<br>"+rss.getColumnName(i)); 
  
 out.println("<tr>"); 
  
 while(rs.next()) 
 { 
 for(int i=1;i<=n;i++) 
   
 out.println("<td><br> "+rs.getString(i)); 
 out.println("<tr>"); 
 } 
 out.println("</table>"); 
  
} 
catch(Exception ex) 
{ 
 System.out.println(ex); 
} 
%> 
</center>
</body>
</html>