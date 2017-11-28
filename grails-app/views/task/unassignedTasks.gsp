<!doctype html>
<html>
<head>
    <meta name="layout" content="main" />
    <link rel="stylesheet" type="text/css" href="${resource(dir: 'stylesheets', file: 'card.css')}">
    <link rel="stylesheet" type="text/css" href="${resource(dir: 'stylesheets', file: 'bootstrap.css')}">
    <title>
        All tasks
    </title>
</head>
<body>

    <div id="all_cards">
        <g:each in="${unassignedTasks}" var="thisTask">
            <div class="card">
                <div class="container">
                    <h4><b>${ thisTask.taskTitle }</b></h4>
                    <p>${ thisTask.taskDescription }</p>
                    <p>Assignee: ${ thisTask.assignee }</p>
                </div>
            </div>
        </g:each>
    </div>
</body>
</html>