<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<f:view>	
	<h:form>
		
			<table>
				<tr>
					<td>User Name:</td>
					<td><h:inputText value="#{loginbean.username}" /></td>
				</tr>
				<tr>
					<td>Password:</td>
					<td><h:inputSecret value="#{loginbean.password}" /></td>
				</tr>
				<tr>
					<td><h:commandButton value="Login"
							action="#{loginbean.validateUser}" /></td>
				</tr>
			</table>
		
	</h:form>
	</f:view>
</body>
</html>