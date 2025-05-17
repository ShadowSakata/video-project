<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="my" tagdir="/WEB-INF/tags"%>
<!DOCTYPE html>
<html>
<head>
    <title>Профиль</title>
    <meta http-equiv='Content-Type' content='text/html; charset=UTF-8' />
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        .container {
            display: flex;
            flex-direction: column;
            height: 100vh;
        }
        .main {
            display: flex;
            flex: 1;
            background-color: #f4f4f4;
        }

        .page-controls {
            text-align: center;
            padding: 10px;
            background-color: #333;
            color: white;
        }

        .page-controls button {
            padding: 5px 10px;
            margin: 5px;
            background-color: white;
            border: 1px solid #ccc;
            cursor: pointer;
        }
    </style>
</head>
<body>
<div class="container">
    <jsp:include page="/header.jsp" />
    <div class="main">
        <!-- Genre list -->
        <my:userInfo user="${sessionScope.authUser}" />

        <!-- Video list (3x3 table filling the space) -->
        <jsp:include page="previewHistory.jsp" />
    </div>

    <!-- Page controls -->
    <div class="page-controls">
        <button>Previous</button>
        <button>Next</button>
    </div>
</div>
</body>
</html>
