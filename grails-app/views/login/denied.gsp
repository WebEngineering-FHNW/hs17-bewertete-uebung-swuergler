<html>

<head>
    <meta name="layout" content="${gspLayout ?: 'main'}"/>
    <link rel="stylesheet" type="text/css" href="${resource(dir: 'stylesheets', file: 'bootstrap.css')}">
    <link rel="stylesheet" type="text/css" href="${resource(dir: 'stylesheets', file: 'task_overview.css')}">
    <title>Access denied</title>
</head>

<body>
    <div class="body">
        <div class="errors"><h1>Sorry, the access to this page is denied</h1></div>
    </div>
    <content tag="nav">
        <div id="nav-left">
            <a href="../.."><img src="${resource(dir: 'images', file: 'task_roulette.png')}" height="25"></a>
        </div>

        <ul class="nav nav-pills">
            <li role="presentation"><a href="../../about/index">About</a></li>
        </ul>
    </content>
    <div id="button-take-back" class="btn-group">
        <a href="../.."><button type="button" class="btn btn-danger"><h4>take me back</h4></button></a>
    </div>
</body>

</html>
