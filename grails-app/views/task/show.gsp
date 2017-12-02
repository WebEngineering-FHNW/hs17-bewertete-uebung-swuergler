<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <link rel="stylesheet" type="text/css" href="${resource(dir: 'stylesheets', file: 'bootstrap.css')}">
        <link rel="stylesheet" type="text/css" href="${resource(dir: 'stylesheets', file: 'new_task.css')}">
        <link href="https://fonts.googleapis.com/css?family=Lobster" rel="stylesheet">
        <g:set var="entityName" value="${message(code: 'task.label', default: 'Task')}" />
        <title><g:message args="[entityName]" />Show task</title>
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

        <h1>Show task</h1>

        <div id="show-task" class="content scaffold-show" role="main">
            <h2>
            <f:display bean="task" property="taskTitle" />
            </h2>
            <h3>
            <f:display bean="task" property="taskDescription" />
            </h3>
        </div>

        <div id="button-center-all">
            <a href="../../../task/allTasks"><button type="button" class="btn btn-success"><h4>show all tasks</h4></button></a>
        </div>

    </body>
</html>
