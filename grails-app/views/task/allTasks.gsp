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
    <content tag="nav">
        <div id="nav-left">
            <img src="../../assets/images/task_roulette.png" alt="Task roulette" height="20">
        </div>
        
        <div id="nav-right">
            <a href="/logout">Logout</a>
            <a href="../../about/index">About</a>
        </div>    
    </content>

    <div id="all-cards">
        <g:each in="${allTasks}" var="thisTask">
                <div class="card">
                    <div class="container">
                        <h4><b>${ thisTask.taskTitle }</b></h4>
                        <p>${ thisTask.taskDescription }</p>
                        <p>Assignee: ${ thisTask.assignee }</p>
                    </div>
                </div>
        </g:each>
    </div>

    <form action="../task/create">
        <input type="submit" value="New task" />
    </form>

    <form action="../task/unassignedTasks">
        <input type="submit" value="Show unassigned tasks" />
    </form>

    <form action="../admin/assign">
        <input type="submit" value="Assign open tasks" />
    </form>

</body>
</html>