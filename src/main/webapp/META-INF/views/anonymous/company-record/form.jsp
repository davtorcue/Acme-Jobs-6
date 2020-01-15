<%@page language="java"%>
<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="acme" tagdir="/WEB-INF/tags"%>

<acme:form readonly="true">
	<acme:form-textbox code="anonymous.company-records.form.label.name" path="name" />
	<acme:form-textbox code="anonymous.company-records.form.label.sector" path="sector" />
	<acme:form-textbox code="anonymous.company-records.form.label.ceoname" path="ceoname" />
	<acme:form-textarea code="anonymous.company-records.form.label.description" path="description" />
	<acme:form-url code="anonymous.company-records.form.label.web" path="web" />
	<acme:form-textbox code="anonymous.company-records.form.label.phone" path="phone" />
	<acme:form-textbox code="anonymous.company-records.form.label.email" path="email" />
	<acme:form-textbox code="anonymous.company-records.form.label.stars" path="stars" />
	<acme:form-checkbox code="anonymous.company-records.form.label.incorporated" path="incorporated" />
	
	<acme:form-return code="anonymous.company-records.button.return"/>
</acme:form>