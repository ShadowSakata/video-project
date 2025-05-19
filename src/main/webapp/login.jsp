<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Log-in</title>
    <style>
        td{
            text-align: center;
        }
        tr {
            padding-top: 5px;
        }
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #dddddd, #717171)
        }
        input {
            border-radius: 5px;
        }
        .container {
            display: flex;
            flex-flow: column;
            height: 100vh
        }
        .form {
            width:300px;
            height:220px;
            margin:auto auto;
            background-color: #3a3a3a;
            align-self: center;
            border-radius: 20px;
            display: flex;
            flex-flow: column;
            color: white
        }
    </style>
</head>
<body>
<div class="container">
    <table style="flex: 1 1 auto">
        <tr>
            <td>
                <div class="form">
                    <form method="post" action="doLogin">
                        <table style="width: 100%; flex: 1 1 auto">
                            <tr>
                                <td>Username:</td>
                            </tr>
                            <tr>
                                <td><input type="text" name="username" value="${requestScope.username}"></td>
                            </tr>
                            <tr>
                                <td>Password:</td>
                            </tr>
                            <tr>
                                <td><input type="password" name="password" value=""></td>
                            </tr>
                            <tr>
                                <td><input type="submit" value="Log-in"></td>
                            </tr>
                            <tr>
                                <td>Don't have an account?</td>
                            </tr>
                            <tr>
                            </tr>
                        </table>
                    </form>
                    <form method="POST" action="register.jsp">
                        <input type="submit" value="Register">
                    </form>
                    <p style="color: white">${requestScope.error}</p>
                </div>
            </td>
        </tr>
    </table>
</div>
</body>
</html>
