<!doctype html>
<html>
<head>
    <meta name="layout" content="main" />
    <meta name="description" content="Task roulette" />
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="${resource(dir: 'stylesheets', file: 'bootstrap.css')}">
    <link rel="stylesheet" type="text/css" href="${resource(dir: 'stylesheets', file: 'task_overview.css')}">
    <title>
        About task roulette
    </title>
</head>
<body>

    <content tag="nav">
        <div id="nav-left">
            <a href="../.."><img src="${resource(dir: 'images', file: 'task_roulette.png')}" alt="Task roulette" height="25"></a>
        </div>

        <ul class="nav nav-pills">

            <li role="presentation"><a href="/logout">Logout</a></li>
            <li role="presentation"><a href="../../about/index">About</a></li>
        </ul>
    </content>

    <h1>About task roulette</h1>
    <div id="main-content">
        <br>
        <br>
        <p>If you've ever faced the problem of assigning tasks that no one likes<br>
        to do there's a simple solution now. <b>Task roulette</b> is a simple and easy<br>
        to use task distribution service. It was created as part of the <br>
        web engineering class at the Fachhochschule Nordwestschweiz.<br>
        Join task roulette now, it is free available.<br>
        </p>
        <ul>
            <li>Every user of task roulette can create tasks with a title and description</li>
            <li>Every user can see the tasks that were created</li>
            <li>The administrator can assign the tasks randomly to the different users</li>
            <li>Every user can see the assignee of each task</li>
        </ul>
    </div>
</body>
</html>