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

<table border="1">
    <g:each in="${tasksToAssign}" var="thisTask">
            <li>${ thisTask.taskTitle }</li>
            <li>${ thisTask.taskDescription }</li>
            <li>${ thisTask.assignee }</li>
    </g:each>
</table>

</body>
</html>