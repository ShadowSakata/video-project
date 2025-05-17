<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="vh" uri="http://tag/vh" %>
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
<form id="mform" action="doRegister.jsp" method="post">
  <table style="width: 100%; align-content: center; align-items: center; align-self: center">
    <tr>
      <td>Username:</td>
    </tr>
    <tr>
      <td><input type="text" name="username" value=""></td>
    </tr>
    <tr>
      <td>Email:</td>
    </tr>
    <tr>
      <td><input type="email" name="mail" value=""></td>
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
    </tr>
  </table>
</form>
  <form method="POST" action="login.jsp">
    <input type="submit" value="Log-in">
  </form>
</div>
      </td>
    </tr>
  </table>
</div>
</body>
</html>