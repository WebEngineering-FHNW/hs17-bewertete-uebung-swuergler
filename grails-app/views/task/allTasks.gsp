<!doctype html>
<html>
<head>
    <title>
        All tasks
    </title>
</head>
<body>

<table border="1">
    <g:each in="${allTasks}" var="thisTask">
        <tr>
            <td>${ thisTask.taskTitle }</td>
            <td>${ thisTask.taskDescription }</td>
        </tr>
    </g:each>
</table>

</body>
</html>