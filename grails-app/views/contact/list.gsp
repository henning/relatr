

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>Contact List</title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><g:link class="create" action="create">New Contact</g:link></span>
        </div>
        <div class="body">
            <h1>Contact List</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                   	        <g:sortableColumn property="id" title="Id" />
                        
                   	        <g:sortableColumn property="company" title="Company" />
                        
                   	        <g:sortableColumn property="firstName" title="First Name" />
                        
                   	        <g:sortableColumn property="lastName" title="Last Name" />
                        
                   	        <g:sortableColumn property="mobilePhone" title="Mobile Phone" />
                        
                   	        <g:sortableColumn property="note" title="Note" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${contactInstanceList}" status="i" var="contactInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${contactInstance.id}">${fieldValue(bean:contactInstance, field:'id')}</g:link></td>
                        
                            <td>${fieldValue(bean:contactInstance, field:'company')}</td>
                        
                            <td>${fieldValue(bean:contactInstance, field:'firstName')}</td>
                        
                            <td>${fieldValue(bean:contactInstance, field:'lastName')}</td>
                        
                            <td>${fieldValue(bean:contactInstance, field:'mobilePhone')}</td>
                        
                            <td>${fieldValue(bean:contactInstance, field:'note')}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${contactInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
