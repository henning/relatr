<html>
    <head>
        <title><g:layoutTitle default="Grails" /></title>
        <link rel="stylesheet" href="${createLinkTo(dir:'css',file:'main.css')}" />
        <link rel="shortcut icon" href="${createLinkTo(dir:'images',file:'favicon.ico')}" type="image/x-icon" />
        <g:layoutHead />
        <g:javascript library="application" />				
    </head>
    <body>
        <div id="spinner" class="spinner" style="display:none;">
            <img src="${createLinkTo(dir:'images',file:'spinner.gif')}" alt="Spinner" />
        </div>	
        <div class="logo"><a class="home" href="${createLinkTo(dir:'')}">SIMPLECONTACTS</a></div>	

        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir:'')}">Home</a></span>
            <span class="menuButton"><g:link class="search" controller="tag">Tags</g:link></span>
            <span class="menuButton"><g:link class="list" controller="contact">Contacts</g:link></span>
            <span class="menuButton"><g:link class="search" controller="searchable">Search</g:link></span>
        </div>
 
        <g:layoutBody />		
        <p style="clear:both"/>
        <hr>
        <g:link controller="searchable">search</g:link>
        <img src="${createLinkTo(dir:'images',file:'grails_logo.jpg')}" alt="Grails" />
    </body>	
</html>
