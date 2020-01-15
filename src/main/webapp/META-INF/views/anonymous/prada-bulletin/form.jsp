<%@page language="java"%>

<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="acme" tagdir="/WEB-INF/tags"%>

<acme:form>
<acme:form-textbox code="anonymous.prada-bulletin.form.label.company" path="company"/>
<acme:form-textbox code="anonymous.prada-bulletin.form.label.author" path="author"/>
<acme:form-textarea code="anonymous.prada-bulletin.form.label.text" path="text"/>

<acme:form-submit code="anonymous.prada-bulletin.form.button.create" action="/anonymous/pradabulletin/create"/>
<acme:form-return code="anonymous.prada-bulletin.form.button.return"/>

</acme:form>
