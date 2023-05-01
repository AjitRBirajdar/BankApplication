<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/jsp; charset=utf-8">
<title>Transfer Money</title>
<link href="style.css" rel="stylesheet" type="text/css">
<meta charset="ISO-8859-1">
</head>
<body>

<div id="top_links">
  

<div id="header">
<h1>HINDAVI - BANK<span class="style1"></span></h1>
    <h2>Marvelous Service</h2>
    
</div>

<div id="navigation">
    <ul>
    <li><a href="create.jsp">NEW ACCOUNT</a></li>
    <li><a href="balance.jsp">BALANCE</a></li>
    <li><a href="deposit.jsp">DEPOSIT</a></li>
    <li><a href="withdraw.jsp">WITHDRAW</a></li>
    <li><a href="transfer.jsp">TRANSFER</a></li>
    <li><a href="closeac.jsp">CLOSE A/C</a></li>
    <li><a href="contact.jsp">CONTACT US</a></li>
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
     <h1> MONEY TRANSFER FORM</h1><br>
         <table  align="center" bgcolor="white">
  <tr>
   
  </tr>
  <tr>
   <td>
    <form action="TransferMoney.jsp" method="post">
      <table cellspacing="5" cellpadding="3"> 
    <h5>Please Check your Account No. ,Amount and Target Account No.</h5>
     <tr>
     <td>ACCOUNT NO.:</td>
     <td> <input type="text" name="anum" required></td>
     </tr>
     <tr>
     <td>USER NAME:</td>
     <td> <input type="text" name="uname" required></td>
     </tr>
     <tr>
     <td>PASSWORD:</td>
     <td> <input type="password" name="psw"required></td>
     </tr>
     
     <tr>
     <td>AMOUNT.:</td>
     <td> <input type="text" name="amt" required></td>
     </tr>
     
      <tr>
     <td>TARGET ACCOUNT NO.:</td>
     <td> <input type="text" name="anum" required></td>
     </tr>
     
     <tr>
     <td>
     <input type="submit" value="Transfer Money">
     <input type=reset VALUE="Reset">
     </td>
     </tr>
     </table>
     </form>
   </td>
  </tr>
 
 </table>
        
    
   </tr>
   
   </div>
   </body>
</html>