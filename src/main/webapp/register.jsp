<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <title>Register</title>
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
<div style="width:300px; height: 270px; margin:auto auto; background-color: #a0c8ff; align-self: center; border-radius: 20px">
  <table style="width: 100%; align-content: center; align-items: center; align-self: center">
    <tr>
      <td>Username:</td>
    </tr>
    <tr>
      <td><input type="text" name="login" value=""></td>
    </tr>
    <tr>
      <td>Email:</td>
    </tr>
    <tr>
      <td><input type="text" name="mail" value=""></td>
    </tr>
    <tr>
      <td>Password:</td>
    </tr>
    <tr>
      <td><input type="password" name="password" value=""></td>
    </tr>
    <tr>
      <td>Repeat password:</td>
    </tr>
    <tr>
      <td><input type="password" name="passwordValidation" value=""></td>
    </tr>
    <tr>
      <td><input type="submit" value="Register"></td>
    </tr>
    <tr>
      <td>Already have an account?</td>
    </tr>
    <tr>
      <form method="POST" action="login.jsp">
        <td><input type="submit" value="Log-in"></td>
      </form>
    </tr>
  </table>
</div>
      </td>
    </tr>
  </table>
</div>
</body>
</html>