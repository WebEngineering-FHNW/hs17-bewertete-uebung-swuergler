<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <link rel="stylesheet" type="text/css" href="${resource(dir: 'stylesheets', file: 'bootstrap.css')}">
    <link rel="stylesheet" type="text/css" href="${resource(dir: 'stylesheets', file: 'index.css')}">
    <link href="https://fonts.googleapis.com/css?family=Lobster" rel="stylesheet">
    <title>Task roulette</title>

</head>
<body>
    <content tag="nav">
        <div id="nav-left">
            <img src="../assets/images/task_roulette.png">
        </div>

        <div id="nav-right">
            <a href="/task/allTasks.gsp">Login</a>
            <a href="/logout">Logout</a>
            <a href="../../about/index">About</a>
        </div>

    </content>

    <div id="content" role="main">
        <section>
            <h1>Task roulette</h1>

            <p>
                If you've ever faced the problem of assigning tasks that no one likes<br>
                to do there's a simple solution now. <b>Task roulette</b> is a simple and easy<br>
                and easy to use task distribution service. It was created as part of the <br>
                web engineering class at the Fachhochschule Nordwestschweiz.<br>
                Join task roulette now it is free available<br>
            </p>
        </section>

        <br>



        <a href="user/create.gsp"><button type="button" class="btn btn-primary">Sign up for free</button></a>

    </div>

</body>
</html>
