<%@page language="java"%>
<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="acme" tagdir="/WEB-INF/tags"%>

<acme:list>
	<acme:list-column code="authenticated.company-records.list.label.name" path="name" width="50%" />
	<acme:list-column code="authenticated.company-records.list.label.sector" path="sector" width="25%" />
	<acme:list-column code="authenticated.company-records.list.label.starts" path="stars" width="25%"/>
</acme:list>
