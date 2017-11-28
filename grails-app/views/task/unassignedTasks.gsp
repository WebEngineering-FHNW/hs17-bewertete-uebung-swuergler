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
        <g:each in="${unassignedTasks}" var="thisTask">
            <tr>
                <td>${ thisTask.taskTitle }</td>
                <td>${ thisTask.taskDescription }</td>
            </tr>
        </g:each>
    </table>

</body>
</html>