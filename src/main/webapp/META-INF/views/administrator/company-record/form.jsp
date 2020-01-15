<%@page language="java"%>
<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="acme" tagdir="/WEB-INF/tags"%>

<acme:form>
	<acme:form-textbox code="administrator.company-records.form.label.name" path="name" />
	<acme:form-textbox code="administrator.company-records.form.label.sector" path="sector" />
	<acme:form-textbox code="administrator.company-records.form.label.ceoname" path="ceoname" />
	<acme:form-textarea code="administrator.company-records.form.label.description" path="description" />
	<acme:form-url code="administrator.company-records.form.label.web" path="web" />
	<acme:form-textbox code="administrator.company-records.form.label.phone" path="phone" />
	<acme:form-textbox code="administrator.company-records.form.label.email" path="email" />
	<acme:form-textbox code="administrator.company-records.form.label.stars" path="stars" />
	<acme:form-checkbox code="administrator.company-records.form.label.incorporated" path="incorporated" />

	<acme:form-submit test="${command == 'show'}" code="administrator.company-records.form.button.update"
		action="/administrator/company-record/update" />
	<acme:form-submit test="${command == 'show'}" code="administrator.company-records.form.button.delete"
		action="/administrator/company-record/delete" />
	<acme:form-submit test="${command == 'create'}" code="administrator.company-records.form.button.create"
		action="/administrator/company-record/create" />
	<acme:form-submit test="${command == 'update'}" code="administrator.company-records.form.button.update"
		action="/administrator/company-record/update" />
	<acme:form-submit test="${command == 'delete'}" code="administrator.company-records.form.button.delete"
		action="/administrator/company-record/delete" />
	<acme:form-return code="administrator.company-records.form.button.return" />
</acme:form>