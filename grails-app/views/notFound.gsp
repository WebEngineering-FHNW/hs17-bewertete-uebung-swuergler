<!doctype html>
<html>
    <head>
        <title>Page Not Found</title>
        <meta name="layout" content="main">
        <link rel="stylesheet" type="text/css" href="${resource(dir: 'stylesheets', file: 'bootstrap.css')}">
        <link rel="stylesheet" type="text/css" href="${resource(dir: 'stylesheets', file: 'task_unassigned.css')}">
        <g:if env="development"><asset:stylesheet src="errors.css"/></g:if>
    </head>
    <body>
    <content tag="nav">
        <div id="nav-left">
            <a href="/task/allTasks"><img src="${resource(dir: 'images', file: 'task_roulette.png')}" height="25"></a>
        </div>

        <ul class="nav nav-pills">

            <li role="presentation"><a href="/logout">Logout</a></li>
            <li role="presentation"><a href="../../about/index">About</a></li>
        </ul>
    </content>
        <ul class="errors">
            <li>Error: Page Not Found (404)</li>
            <li>Path: ${request.forwardURI}</li>
        </ul>
    </body>
</html>
