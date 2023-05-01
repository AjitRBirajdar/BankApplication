<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Account Close Successful</title>
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


try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","ajit","0069");
	PreparedStatement ps=con.prepareStatement("delete from hindavi_bank where account_no =? and username=? and password=?");
	ps.setString(1,acnumber);
	ps.setString(2,username);
	ps.setString(3,password);
	
	
	int i=ps.executeUpdate();
	
	out.print("<center><h2> Account Number :-"+ acnumber + " </h2></center>");
	out.print("<center><h2> Account Holder Name :-"+ username + " </h2></center>");
	out.print("<center><h1> ACCOUNT IS CLOSED SUCCESSFULLY...</h1></center>");

	con.close();
}
catch(Exception ex)
{
	out.print(ex);
}

%>

</body>
</html>