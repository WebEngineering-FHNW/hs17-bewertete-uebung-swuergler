<html>
<head>
    <meta name="layout" content="${gspLayout ?: 'main'}"/>
    <link rel="stylesheet" type="text/css" href="${resource(dir: 'stylesheets', file: 'bootstrap.css')}">
    <link rel="stylesheet" type="text/css" href="${resource(dir: 'stylesheets', file: 'login.css')}">
    <link rel="stylesheet" type="text/css" href="${resource(dir: 'stylesheets', file: 'card.css')}">
    <link href="https://fonts.googleapis.com/css?family=Lobster" rel="stylesheet">
    <title>
        Task roulette login
    </title>
</head>

<body>
    <content tag="nav">
        <div id="nav-left">
            <a href="../.."><img src="${resource(dir: 'images', file: 'task_roulette.png')}" height="25"></a>
        </div>

        <ul class="nav nav-pills">
            <li role="presentation"><a href="../../about/index">About</a></li>
        </ul>
    </content>

    <h1>Login</h1>

<div class="container">
    <div class="login-container">
        <form action="${postUrl ?: '/login/authenticate'}" method="POST" id="loginForm" class="cssform" autocomplete="off">
            <p>
            <input name="${usernameParameter ?: 'username'}" id="username" type="text" placeholder="username">
            <input name="${passwordParameter ?: 'password'}" id="password" type="password" placeholder="password">
            <button class="btn btn-primary btn-block login" type="submit" id="submit" value="${message(code: 'springSecurity.login.button')}">Login</button>
            </p>
        </form>
    </div>
</div>


<script>
    (function() {
        document.forms['loginForm'].elements['${usernameParameter ?: 'username'}'].focus();
    })();
</script>
</body>
</html>
