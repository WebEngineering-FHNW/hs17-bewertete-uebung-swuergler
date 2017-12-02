<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <link rel="stylesheet" type="text/css" href="${resource(dir: 'stylesheets', file: 'bootstrap.css')}">
        <link rel="stylesheet" type="text/css" href="${resource(dir: 'stylesheets', file: 'new_task.css')}">
        <link href="https://fonts.googleapis.com/css?family=Lobster" rel="stylesheet">
        <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
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

        <h1>Task roulette</h1>

        <br>
        <div id="show-user" class="content scaffold-show" role="main">
            <h5>
                The user
                <b><f:display bean="user" property="username"/></b>
                has been created
            </h5>
        </div>

        <div id="button-center-all">
            <a href="../../../task/allTasks"><button type="button" class="btn btn-success"><h4>start now</h4></button></a>
        </div>

    </body>
</html>
