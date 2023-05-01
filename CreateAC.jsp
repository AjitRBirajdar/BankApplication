<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ page import="java.sql.*" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Account create successfull</title>
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
<%
String acnumber=request.getParameter("anum");
String username=request.getParameter("uname");
String password=request.getParameter("psw");
String re_password=request.getParameter("repsw");
String amount=request.getParameter("amt");
String gender=request.getParameter("gen");
String address=request.getParameter("addr");
String phone=request.getParameter("phone");
try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","ajit","0069");
	PreparedStatement ps=con.prepareStatement("insert into hindavi_bank values(?,?,?,?,?,?,?,?)");
	ps.setString(1,acnumber);
	ps.setString(2,username);
	ps.setString(3,password);
	ps.setString(4,re_password);
	ps.setString(5,amount);
	ps.setString(6,gender);
	ps.setString(7,address);
	ps.setString(8,phone);
	int i=ps.executeUpdate();
	out.print("<center><h1> ACCOUNT IS CREATED SUCCESSFULLY...</h1></center>");
	con.close();
}
catch(Exception ex)
{
	out.print(ex);
}

%>

</body>
</html>