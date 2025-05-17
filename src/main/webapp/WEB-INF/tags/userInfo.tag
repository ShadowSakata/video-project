<%@ tag pageEncoding="UTF-8"%>
<%@attribute name="user" required="true" rtexprvalue="true" type="videohostingproject.entity.User"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
    .user-info {
        width: 400px;
        background-color: #ddd;
        padding: 10px;
        overflow-y: auto;
    }

    .user-info ul {
        list-style: none;
        padding: 0;
    }

    .user-info ul li {
        margin: 5px 0;
        cursor: pointer;
    }
</style>
<div class="user-info">
    <ul>
        <li>Username:</li>
        <li>${user.username}</li>
        <li>Email:</li>
        <li>${user.email}</li>
        <li>User is admin:</li>
        <li>${user.admin}</li>
    </ul>
</div>