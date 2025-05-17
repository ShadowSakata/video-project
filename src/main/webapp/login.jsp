<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Log-in</title>
    <style>
        td{
            text-align: center;
        }
    </style>
</head>
<body>
<div style="display: flex; flex-flow: column; height: 100vh">
    <table style="flex: 1 1 auto">
        <tr>
            <td>
                <div style="width:300px; height:200px; margin:auto auto; background-color: #a0c8ff; align-self: center; border-radius: 20px; display: flex; flex-flow: column">
                    <form method="post" action="doLogin.jsp">
                        <table style="width: 100%; flex: 1 1 auto">
                            <tr>
                                <td>Username:</td>
                            </tr>
                            <tr>
                                <td><input type="text" name="username" value=""></td>
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
                </div>
            </td>
        </tr>
    </table>
</div>
</body>
</html>
