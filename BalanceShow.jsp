<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ page import="java.sql.*" %> 
      
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Balance Show Successful</title>
</head>

<body>
<style>
h1{
                color: #ff0000;
                background-color: #ffff01;
                padding: 10px;
                border: 1px solid red;
                width: 50%;
                text-align: center;
                border-radius: 0px 30px;
            }
 </style>           
<%@ page import="java.sql.*" %> 
<center>
    <h1 style="color:red">ACCOUNT BALANCE & DETAILS ARE</h1> 
<table border="1">

<%

String accountno=request.getParameter("anum");
String username=request.getParameter("uname");
String password=request.getParameter("psw");

try 
{ 

Class.forName("oracle.jdbc.driver.OracleDriver"); 
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","ajit","0069"); 
PreparedStatement ps=con.prepareStatement("select * from hindavi_bank where account_no=? and username=? and password=?"); 

ps.setString(1,accountno); 
ps.setString(2,username);
ps.setString(3,password);
 
ResultSet rs=ps.executeQuery(); 
ResultSetMetaData rss=rs.getMetaData(); 
out.print("<center><h2> Welcome "+username+"</h2></center><p></p>");
 
int n=rss.getColumnCount();  // n=7 
 
for(int i=1;i<=n;i++)   //rss.  
  
 out.println("<td> <font color=blue size=3> "+"<br>"+rss.getColumnName(i)); 
  
 out.println("<tr>"); 
  
 while(rs.next()) 
 { 
 for(int i=1;i<=n;i++) 
   
 out.println("<td><br> "+rs.getString(i)); 
  
 } 
 out.println("</table>"); 
  
} 
catch(Exception ex) 
{ 
 System.out.println(ex); 
}
%>

</body>
</html>