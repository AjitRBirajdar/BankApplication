<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Transfered Money Successful</title>
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
String acnumber=request.getParameter("anum");
String username=request.getParameter("uname");
String password=request.getParameter("psw");
String amount=request.getParameter("amt");


try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","ajit","0069");
	PreparedStatement ps=con.prepareStatement("update hindavi_bank set amount=amount-? where account_no =? and username=? and password=?");
	
	
	ps.setString(1,amount);
	ps.setString(2,acnumber);
	ps.setString(3,username);
	ps.setString(4,password);
	
	int i=ps.executeUpdate();
	
	out.print("<center><h1> WELCOME " + username +"</h1></center><p></p>");
	
	out.print("<center><h2>Amount Transfered Sucessfully<h2></center><p></P>" );
	
	PreparedStatement ps1=con.prepareStatement("select amount from hindavi_bank where account_no =?");
	ps1.setString(1,acnumber);
	ResultSet rs=ps1.executeQuery();
	while(rs.next())
	out.print("<center><h3> Your Balance is : "+rs.getString("amount")+"<h3></center>");
	
	
	PreparedStatement ps2=con.prepareStatement("update hindavi_bank set amount=amount+? where account_no =?");
	ps2.setString(1,amount);
	ps2.setString(2,acnumber);
	int s=ps2.executeUpdate();
	
	
	con.close();
}
catch(Exception ex)
{
	out.print(ex);
}





%>

</body>
</html>