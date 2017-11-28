<!doctype html>
<html>
<head>
    <meta name="form" content="main"/>
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