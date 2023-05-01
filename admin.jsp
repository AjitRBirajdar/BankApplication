<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta http-equiv="Content-Type" content="text/jsp; charset=utf-8">
<title>Admin Login</title>
<link href="style.css" rel="stylesheet" type="text/css">
<meta charset="ISO-8859-1">

</head>
<body>

<div id="top_links">
  

<div id="header">
<h1>HINDAVI - BANK<span class="style1"></span></h1>
    <h2>Marvelous Service</h2>
    <A href="home.jsp"><IMG SRC="home1.gif"></IMG></A>
     
</div>

<div id="navigation">
    <ul>
    <li><a href="create.jsp">NEW ACCOUNT</a></li>
    <li><a href="balance.jsp">BALANCE</a></li>
    <li><a href="deposit.jsp">DEPOSIT</a></li>
    <li><a href="withdraw.jsp">WITHDRAW</a></li>
    <li><a href="transfer.jsp">TRANSFER</a></li>
    <li><a href="closeac.jsp">CLOSE A/C</a></li>
    <li><a href="contact.jsp">ABOUT US</a></li>
    </ul>
</div>



<table style="width:897px; background:#FFFFFF; margin:0 auto;">
<tr >
 <td width="300" valign="top" style="border-right:#666666 1px dotted;">
     <div id="services"><h1>Services</h1><br>
      <ul>
       <li><a href="#">www.hindvilatur.com</a></li>
            <li><a href="#">www.hindavilaturservices.com </a></li>       
            </ul>
   
       </div>
 </td>
    
    <td width="1200" valign="top">
     <div id="welcome" style="border-right:#666666 1px dotted;">
     <h1>ADMIN LOGIN</h1><br>
         <table  align="center" bgcolor="white">
  <tr>
   
  </tr>
  <tr>
   <td>
    <form action="AdminCode.jsp" method="post">
      <table cellspacing="5" cellpadding="3"> 
    
     <tr>
     <td>Admin Name:</td>
     <td> <input type="text" name="adname" required></td>
     </tr>
     
     <tr>
     <td>Admin Password:</td>
     <td> <input type="password" name="psw" required></td>
     </tr>
     <tr>
     
     <td><input type="submit" value="Submit">
     <input type=reset VALUE="Reset"></td>
     </tr>
     </table>
     </form>
   </td>
  </tr>
 
 </table>
        
    
   </tr>
   
   </div>
   </body></html>