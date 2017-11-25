<!doctype html>
<html>
<head>
    <title>Login</title>
</head>
<body>
    <h1> allmende. </h1>
    <form>
        <g:select name="username" from="${ mvc.Squad.list() }" ></g:select><br>
        <g:select name="username" from="${ mvc.User.list() }" ></g:select><br>

        <!-- <g:textField type="text" name="group" placeholder="groupname"/>
        <g:textField type="text" name="username" placeholder="username"/> -->

    </form>

    <a href="<g:createLink controller="task" action="index"/>">
        <input type="submit" value="login" />
    </a>

    <!-- TODO display in CSS one line -->
    <div id="blockcontainer">
        <div>
            <a href="<g:createLink controller="squad" action="create"/>">
                <input type="submit" value="new group" />
            </a>
        </div>
        <div>
            <a href="<g:createLink controller="user" action="create"/>">
                <input type="submit" value="new user" />
            </a>
        </div>
    </div>
</body>
</html>