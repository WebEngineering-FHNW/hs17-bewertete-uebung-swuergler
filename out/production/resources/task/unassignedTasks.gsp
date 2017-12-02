<!doctype html>
<html>
<head>
    <meta name="layout" content="main" />
    <link rel="stylesheet" type="text/css" href="${resource(dir: 'stylesheets', file: 'bootstrap.css')}">
    <link rel="stylesheet" type="text/css" href="${resource(dir: 'stylesheets', file: 'task_unassigned.css')}">
    <link rel="stylesheet" type="text/css" href="${resource(dir: 'stylesheets', file: 'card.css')}">
    <link href="https://fonts.googleapis.com/css?family=Lobster" rel="stylesheet">
    <title>
        Unassigned tasks
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

    <div id="all_cards">
        <g:if test="${unassignedTasks.isEmpty()}">
            <div id="no-tasks">
                <h2>Ooops there are no unassigned tasks…</h2>
                <br>
                <h5>Why don't you go ahead and create a new one?</h5>
                <div id="button-center">
                    <a href="../task/create"><button type="button" class="btn btn-success"><h4>create a new task</h4></button></a>
                </div>
            </div>
        </g:if>
        <g:else>

            <h1>Unassigned tasks</h1>
            <div id="all-cards">
            <g:each in="${unassignedTasks}" var="thisTask">
                <div class="card">
                    <div class="container">
                        <h3><b>${ thisTask.taskTitle }</b></h3>
                        <p>${ thisTask.taskDescription }</p>
                        <p> <h6>${ thisTask.assignee }</h6></p>
                    </div>
                </div>
            </g:each>
            </div>
            <div id="button-center">
                <a href="../task/allTasks"><button type="button" class="btn btn-success"><h4>show all tasks</h4></button></a>
            </div>
        </g:else>
    </div>
</body>
</html>