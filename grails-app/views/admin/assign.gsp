<!doctype html>
<html>
<head>
    <title>
        All tasks
    </title>
</head>
<body>

<table border="1">
    <g:each in="${tasksToAssign}" var="thisTask">
        <tr>
            <td>${ thisTask.taskTitle }</td>
            <td>${ thisTask.taskDescription }</td>
            <td>${ thisTask.assignee }</td>
        </tr>
    </g:each>
</table>

</body>
</html>