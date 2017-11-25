<!doctype html>
<html>
<head>
    <title>Login</title>
</head>
<body>
    <h1> allmende. </h1>
    <form>
        <g:textField type="text" name="group" placeholder="groupname"/><br>
        <g:textField type="text" name="username" placeholder="username"/><br>
    </form>

    <g:actionSubmit value="login"/>
    <div>
        <g:createLink>new group</g:createLink>
        <button>new user</button>
    </div>

</body>
</html>