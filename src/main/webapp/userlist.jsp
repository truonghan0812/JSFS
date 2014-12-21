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
					<td>Full Name:</td>
					<td><h:inputSecret value="#{loginbean.fullname}" /></td>
				</tr>
				<tr>
					<td>Age:</td>
					<td><h:inputSecret value="#{loginbean.age}" /></td>
				</tr>
				<tr>
					<td colspan="2">
						<h:commandButton value="Submit"
							action="#{loginbean.addUser}" />
						<h:commandButton value="Update"
							action="#{loginbean.updateUser}" />
						<h:commandButton value="Delete"
							action="#{loginbean.deleteUser}" />
					</td>
				</tr>

			</table>
			<h:dataTable var="bean" value="#{loginbean.userlist} }">
				<h:column>
					<f:facet name="header"><h:outputText value="User Name"/></f:facet>
					<h:outputText value="#{bean.username}"/>
				</h:column>
				<h:column>
					<f:facet name="header"><h:outputText value="Full Name"/></f:facet>
					<h:outputText value="#{bean.fullname}"/>
				</h:column>
				<h:column>
					<f:facet name="header"><h:outputText value="Age"/></f:facet>
					<h:outputText value="#{bean.age}"/>
				</h:column>
			</h:dataTable>
		</h:form>
</f:view>
</body>
</html>