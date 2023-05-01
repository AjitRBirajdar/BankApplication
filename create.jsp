<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<script>
function validateForm(){
	let x=document.forms["myForm"]["psw"].value;
	let y=document.forms["myForm"]["repsw"].value;
	if(x!=y){
		alert("Password and Conform Password must be same");
		return false;
	}
}
</script>

<meta http-equiv="Content-Type" content="text/jsp; charset=utf-8">
<title>Create New Account</title>
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
     <h1>NEW ACCOUNT CREATE FORM</h1><br>
         <table  align="center" bgcolor="white">
  <tr>
   
  </tr>
  <tr>
   <td>
    <form name="myform" action="CreateAC.jsp" method="post" onsubmit="return validateForm()">
      <table cellspacing="5" cellpadding="3"> 
    
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
     <td>CONFORM PASSWORD:</td>
     <td> <input type="password" name="repsw" required></td>
     </tr>
 
     
     <tr>
     <td>AMOUNT.:</td>
     <td> <input type="text" name="amt" required></td>
     </tr>
     
     
     
     <tr>
     <td>GENDER :</td>
     <td><input type="radio" name="gen" value="Male" required>MALE
     <input type="radio" name="gen" value="Female" required>FEMALE
     <input type="radio" name="gen" value="Other" required>OTHER</td>
     </tr>
     <tr>
     <td>ADDRESS:</td>
     <td> <input type="text" name="addr" required></td>
     </tr>
     <tr>
     <td>PHONE:</td>
     <td> <input type="text" name="phone" required></td>
     </tr>
     <tr>
     <td></td>
     <td><input type="submit" value="Submit">
     <input type=reset VALUE="Reset"></td>
     </tr>
     </table>
     </form>
   </td>
  </tr>
 </table>
 </div>
 </td>
 </tr>
 </table>
 
        
    
   
   
   </div>
   </body></html>