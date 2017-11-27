<!doctype html>
<html>
<head>
    <title>
        Dear <sec:username/>, these are your tasks
    </title>
</head>
<body>

<table border="1">
    <g:each in="${allTasks}" var="thisTask">
        <g:if <sec:username/> == ${thisTask.assignee.toString()}>
        <tr>
            <td>${ thisTask.taskTitle }</td>
            <td>${ thisTask.taskDescription }</td>
        </tr>
    </g:each>
</table>

</body>
</html>