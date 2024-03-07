<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<form acttion="palindrome.jsp">
			<table border="1px solid">
				<tr>
				<td>Enter a number</td>
				<td><input type="text" name="num"/></td>
				</tr>
			</table>
			<input type="submit" value="check"/>
		</form>
	</div>
	
	<%!int num1,orgnum,digit,sum=0; %>
	<%

	String input1=request.getParameter("num");
	if(input1!=null)
	{
		num1=Integer.parseInt(input1);
	
	orgnum=num1;
	while(num1!=0){
		digit=num1%10;
		sum=sum*10+digit;
		num1=num1/10;
	}
	%>
	<%
	if(sum==orgnum){
		
	%>
	<div align="center">
		<h1> given number <%=orgnum%> is palindrome_</h1>
		</div>
	
	<% 
	}else{
		
	%>
	<div align="center">
		<h1> given number <%=orgnum %> is not palindrome_</h1>
		</div>
		<%} %>
	
	<%} %>
	
	
</body>
</html>