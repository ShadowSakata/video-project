<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="my" tagdir="/WEB-INF/tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Video</title>
    <style>
        /* General styles */
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

        /* Header styles */
        .header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: #333;
            color: white;
            padding: 10px 20px;
        }

        .header .logo {
            font-size: 1.5em;
            font-weight: bold;
        }

        .header .search-bar input {
            width: 200px;
            padding: 5px;
        }

        .header .profile {
            cursor: pointer;
        }

        /* Main content area */
        .main {
            display: flex;
            flex: 1;
            background-color: #f4f4f4;
        }

        /* Video info section */
        .video-info {
            width: 300px;
            background-color: #ddd;
            padding: 10px;
            overflow-y: auto;
        }

        .video-info h2 {
            font-size: 1.5em;
            margin-bottom: 10px;
        }

        .video-info p {
            font-size: 1em;
            line-height: 1.5;
        }

        .player-container {
            flex: 1;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
            background-color: #fff;
        }
        @media (max-width: 768px) {
            .main {
                flex-direction: column;
            }

            .video-info {
                width: 100%;
                height: auto;
            }
        }
    </style>
</head>
<body>
<div class="container">

    <jsp:include page="header.jsp"/>
    <!-- Main content -->
    <div class="main">
        <!-- Video info section -->
        <div class="video-info">
            <h2>Video Info</h2>
        </div>

        <!-- Video player -->
        <div class="player-container">
            <my:videoPlayer dir="car-mpd/car.mpd"></my:videoPlayer>
        </div>
    </div>
</div>
</body>
</html>