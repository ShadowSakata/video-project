<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
  <title>Register</title>
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
    .container {
      display: flex;
      flex-flow: column;
      height: 100vh
    }
    .form {
      width:300px;
      height: 320px;
      margin:auto auto;
      background-color: #3a3a3a;
      align-self: center;
      border-radius: 20px;
      display: flex;
      flex-flow: column;
      color: white
    }
    input {
      border-radius: 5px;
    }
  </style>
</head>
<body>
<div class="container">
  <table style="flex: 1 1 auto">
    <tr>
      <td>
        <div class="form">
          <form id="mform" action="doRegister" method="post">
            <table style="width: 100%; align-content: center; align-items: center; align-self: center">
              <tr>
                <td>Username:</td>
              </tr>
              <tr>
                <td><input type="text" name="username" value="${requestScope.username}"></td>
              </tr>
              <tr>
                <td>Email:</td>
              </tr>
              <tr>
                <td><input type="email" name="email" value="${requestScope.email}"></td>
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
                <td><input type="password" name="validation" value=""></td>
              </tr>
              <tr>
                <td><input type="submit" value="Register"></td>
              </tr>
              <tr>
                <td>Already have an account?</td>
              </tr>
              <tr>
              </tr>
            </table>
          </form>
          <form method="POST" action="login.jsp">
            <input type="submit" value="Log-in">
          </form>
          <p style="color: white">${requestScope.error}</p>
        </div>
      </td>
    </tr>
  </table>
</div>
</body>
</html>