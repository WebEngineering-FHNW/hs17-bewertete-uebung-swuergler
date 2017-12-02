<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main" />
    <link rel="stylesheet" type="text/css" href="${resource(dir: 'stylesheets', file: 'bootstrap.css')}">
    <link rel="stylesheet" type="text/css" href="${resource(dir: 'stylesheets', file: 'new_task.css')}">
    <link href="https://fonts.googleapis.com/css?family=Lobster" rel="stylesheet">
    <title>
        Create a new account
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

<h1>Create a new account</h1>

<div id="create-containter" class="content scaffold-create" role="main">
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <g:hasErrors bean="${this.user}">
        <ul class="errors" role="alert">
            <g:eachError bean="${this.user}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
            </g:eachError>
        </ul>
    </g:hasErrors>
    <g:form action="save">
        <fieldset class="form">
            <h2>Username</h2>
            <f:field property="username" label=" "></f:field>
            <h2>Password</h2>
            <f:field property="password" label=" " id="password" type="password"></f:field>
        </fieldset>
        <fieldset class="buttons" id="button-create">
            <g:submitButton name="create" class="btn btn-primary" value="create" />
        </fieldset>
    </g:form>
</body>
</html>
