<%--
- menu.jsp
-
- Copyright (c) 2019 Rafael Corchuelo.
-
- In keeping with the traditional purpose of furthering education and research, it is
- the policy of the copyright owner to permit non-commercial use and redistribution of
- this software. It has been tested carefully, but it is not guaranteed for any particular
- purposes.  The copyright owner does not offer any warranties or representations, nor do
- they accept any liabilities with respect to them.
--%>

<%@page language="java" import="acme.framework.helpers.PrincipalHelper"%>

<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@taglib prefix="acme" tagdir="/WEB-INF/tags"%>

<acme:menu-bar code="master.menu.home">
	<acme:menu-left>
		<acme:menu-option code="master.menu.anonymous" access="isAnonymous()">
			<acme:menu-suboption code="master.menu.anonymous.favourite-link" action="http://www.example.com/"/>
			<acme:menu-suboption code="master.menu.announcement.announcement-list" action="/anonymous/announcement/list"/>
			<acme:menu-suboption code="master.menu.investor-record.investor-record-list" action="/anonymous/investor-record/list"/>
      		<acme:menu-suboption code="master.menu.anonymous.company-records.list" action="/anonymous/company-record/list" />
      		<acme:menu-separator/>
      		<acme:menu-suboption code="master.menu.anonymous.favourite-link-alorodlla" action="https://es-es.facebook.com/"/>
			<acme:menu-suboption code="master.menu.anonymous.favourite-link-antmarcab4" action="https://www.youtube.com/watch?v=W1lz7Njq2BQ"/>
        	<acme:menu-suboption code="master.menu.anonymous.favourite-link-davtorcue" action="http://www.twitter.com/"/>
        	<acme:menu-suboption code="master.menu.anonymous.favourite-link-enrpravaz" action="https://po.ta.to/"/>
        	<acme:menu-suboption code="master.menu.anonymous.favourite-link-jospearui" action="http://www.youtube.com/"/>
		</acme:menu-option>
		
		<acme:menu-option code="master.menu.anonymous2" access="isAnonymous()">
			<acme:menu-suboption code="master.menu.anonymous.shoutlist" action="/anonymous/shout/list"/>
			<acme:menu-suboption code="master.menu.anonymous.create" action="/anonymous/shout/create"/>
			<acme:menu-suboption code="master.menu.anonymous.PradaBulletin" action="/anonymous/pradabulletin/list"/>
			<acme:menu-suboption code="master.menu.anonymous.createPradaBulletin" action="/anonymous/pradabulletin/create"/>
			<acme:menu-suboption code="master.menu.anonymous.toroBulletinlist" action="/anonymous/toroBulletin/list"/>
			<acme:menu-suboption code="master.menu.anonymous.toroBulletincreate" action="/anonymous/toroBulletin/create"/>
			<acme:menu-suboption code="master.menu.anonymous.martinez-bulletinlist" action="/anonymous/martinez-bulletin/list"/>
			<acme:menu-suboption code="master.menu.anonymous.createmartinez-bulletin" action="/anonymous/martinez-bulletin/create"/>
			<acme:menu-suboption code="master.menu.anonymous.rodriguez-bulletin.list" action="/anonymous/rodriguezBulletin/list"/>
			<acme:menu-suboption code="master.menu.anonymous.rodriguez-bulletin.create" action="/anonymous/rodriguezBulletin/create"/>
			<acme:menu-suboption code="master.menu.anonymous.penuelaBulletinlist" action="/anonymous/penuelaBulletin/list"/>
			<acme:menu-suboption code="master.menu.anonymous.penuelaBulletincreate" action="/anonymous/penuelaBulletin/create"/>
        	
		</acme:menu-option>

		<acme:menu-option code="master.menu.administrator" access="hasRole('Administrator')">
      <acme:menu-suboption code="master.menu.administrator.showParameter" action="/administrator/parameter/show"/>
			<acme:menu-suboption code="master.menu.administrator.user-accounts" action="/administrator/user-account/list"/>
			<acme:menu-suboption code="master.menu.administrator.company-records.list" action="/administrator/company-record/list"/>
			<acme:menu-suboption code="master.menu.announcement.announcement-list" action="/administrator/announcement/list"/>
			<acme:menu-suboption code="master.menu.administrator.investor-record.list" action="/administrator/investor-record/list"/>
			<acme:menu-suboption code="master.menu.challenge.list" action="/administrator/challenge/list"/>
			<acme:menu-suboption code="master.menu.administrator.company-records.create" action="/administrator/company-record/create" access="hasRole('Administrator')" />
			<acme:menu-suboption code="master.menu.administrator.announcement.create" action="/administrator/announcement/create" access="hasRole('Administrator')" />
			<acme:menu-suboption code="master.menu.administrator.investor-record.create" action="/administrator/investor-record/create" access="hasRole('Administrator')" />
			<acme:menu-suboption code="master.menu.challenge.create" action="/administrator/challenge/create" access="hasRole('Administrator')"/>
			<acme:menu-separator/>
			<acme:menu-suboption code="master.menu.administrator.shutdown" action="/master/shutdown"/>
		</acme:menu-option>
		
		<acme:menu-option code="master.menu.employer" access="hasRole('Employer')">
			<acme:menu-suboption code="master.menu.employer.listJobs" action="/employer/job/list-mine"/>
			<acme:menu-suboption code="master.menu.employer.listapplications" action="/employer/application/list-mine"/>
			<acme:menu-suboption code="master.menu.employer.createJob" action="/employer/job/create"/>
		</acme:menu-option>
		
		<acme:menu-option code="master.menu.worker" access="hasRole('Worker')">
			<acme:menu-suboption code="master.menu.worker.listApplication" action="/worker/application/list-mine"/>
			<acme:menu-suboption code="master.menu.worker.job.list" action="/worker/job/list"/>
    </acme:menu-option>
    
	</acme:menu-left>


	<acme:menu-left>
	
	<acme:menu-option code="master.menu.features" access="isAuthenticated()">
	<acme:menu-suboption code="master.menu.announcement.announcement-list" action="/authenticated/announcement/list"/>
	<acme:menu-suboption code="master.menu.challenge.list" action="/authenticated/challenge/list" />
	<acme:menu-suboption code="master.menu.investor-record.investor-record-list" action="/authenticated/investor-record/list"/>
	<acme:menu-suboption code="master.menu.authenticated.company-records.list" action="/authenticated/company-record/list"/>
	<acme:menu-suboption code="master.menu.job.list" action="/authenticated/job/list-mine"/>
	
	</acme:menu-option>
	
	</acme:menu-left>
	
	<acme:menu-right>
		<acme:menu-option code="master.menu.sign-up" action="/anonymous/user-account/create" access="isAnonymous()"/>
		<acme:menu-option code="master.menu.sign-in" action="/master/sign-in" access="isAnonymous()"/>

		<acme:menu-option code="master.menu.user-account" access="isAuthenticated()">
			<acme:menu-suboption code="master.menu.user-account.general-data" action="/authenticated/user-account/update"/>
			<acme:menu-suboption code="master.menu.user-account.become-worker" action="/authenticated/worker/create" access="!hasRole('Worker')"/>
			<acme:menu-suboption code="master.menu.user-account.worker" action="/authenticated/worker/update" access="hasRole('Worker')"/>
			<acme:menu-suboption code="master.menu.user-account.become-employer" action="/authenticated/employer/create" access="!hasRole('Employer')"/>
			<acme:menu-suboption code="master.menu.user-account.employer" action="/authenticated/employer/update" access="hasRole('Employer')"/>
			
		</acme:menu-option>

		<acme:menu-option code="master.menu.sign-out" action="/master/sign-out" access="isAuthenticated()"/>
	</acme:menu-right>
</acme:menu-bar>