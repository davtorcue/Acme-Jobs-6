<%@page language="java" %>


<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="acme" tagdir="/WEB-INF/tags"%>

<acme:list readonly="true">
	<acme:list-column code="anonymous.prada-bulletin.list.label.company" path="company" width="204" />
	<acme:list-column code="anonymous.prada-bulletin.list.label.author" path="author" width="204"/>
	<acme:list-column code="anonymous.prada-bulletin.list.label.text" path="text" width="204"/>
</acme:list>