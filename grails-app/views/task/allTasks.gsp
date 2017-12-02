<!doctype html>
<html>
<head>
    <meta name="layout" content="main" />
    <link rel="stylesheet" type="text/css" href="${resource(dir: 'stylesheets', file: 'bootstrap.css')}">
    <link rel="stylesheet" type="text/css" href="${resource(dir: 'stylesheets', file: 'task_overview.css')}">
    <link rel="stylesheet" type="text/css" href="${resource(dir: 'stylesheets', file: 'card.css')}">
    <link href="https://fonts.googleapis.com/css?family=Lobster" rel="stylesheet">
    <title>
        All tasks
    </title>
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

    <h1>All tasks</h1>

    <div id="all-cards">
        <g:each in="${allTasks}" var="thisTask">
                <div class="card">
                    <div class="single-card">
                        <h3><b>${ thisTask.taskTitle }</b></h3>
                        <p>${ thisTask.taskDescription }</p>
                        <p> <h2>${ thisTask.assignee }</h2></p>
                    </div>
                </div>
        </g:each>
    </div>

    <div id="buttons-bottom" class="btn-group" role="group" aria-label="...">
        <a href="../task/create"><button type="button" class="btn btn-success"><h4>create a new task</h4></button></a>
        <a href="../task/unassignedTasks"><button type="button" class="btn btn-primary"><h4>show unassigned tasks</h4></button></a>
        <a href="../admin/assign"><button type="button" class="btn btn-primary"><h4>assign open tasks</h4></button></a>
    </div>


</body>
</html>