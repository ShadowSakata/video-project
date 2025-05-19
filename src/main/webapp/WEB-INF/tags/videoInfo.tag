<%@ tag pageEncoding="UTF-8"%>
<%@attribute name="video" required="true" rtexprvalue="true" type="videohostingproject.entity.Video"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
    .video-info {
        width: 400px;
        background-color: #ddd;
        padding: 10px;
        overflow-y: auto;
    }

    .video-info ul {
        list-style: none;
        padding: 0;
    }

    .video-info ul li {
        margin: 5px 0;
        cursor: pointer;
    }

    .cell-name {
        background-color: #282831;
        color: #dddddd;
        padding: 5px;
        border-radius: 5px;
    }
</style>
<div class="video-info">
    <ul>
        <li class="cell-name">Title:</li>
        <li>${video.title}</li>
        <li class="cell-name">Description:</li>
    </ul>
    <p style="word-break: break-word">${video.description}</p>
    <ul>
        <li class="cell-name">Uploaded by:</li>
        <li>${video.uploader}</li>
    </ul>
</div>