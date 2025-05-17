<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="my" tagdir="/WEB-INF/tags" %>
<style>
    .video-list {
        flex: 1;
        display: flex;
        justify-content: center;
        align-items: center;
        padding: 10px;
    }

    .video-table {
        width: 100%;
        height: 100%;
        table-layout: fixed;
        border-collapse: collapse;
        background-color: white;
        border: 1px solid #ccc;
    }

    .video-table td {
        text-align: center;
        border: 1px solid #ccc;
        padding: 10px;
    }

    .video-item {
        display: flex;
        flex-direction: column;
        justify-content: space-between;
        align-items: center;
        width: 100%;
        height: 100%;
        background-color: #f9f9f9;
        border: 1px solid #ccc;
        border-radius: 5px;
        overflow: hidden;
    }

    .video-item img {
        width: 100%;
        height: auto;
        flex-shrink: 0;
    }

    .video-item .video-title {
        padding: 5px;
        font-size: 0.9em;
        text-align: center;
        background-color: #fff;
        flex-shrink: 0;
    }
</style>
<div class="video-list">
    <table class="video-table">
        <tr>
            <td>
                <div class="video-item">
                    <my:preview dir="car-mpd" />
                    <div class="video-title">Video Title 1</div>
                </div>
            </td>
            <td>
                <div class="video-item">
                    <my:preview dir="car-mpd" />
                    <div class="video-title">Video Title 2</div>
                </div>
            </td>
            <td>
                <div class="video-item">
                    <my:preview dir="car-mpd" />
                    <div class="video-title">Video Title 3</div>
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <div class="video-item">
                    <my:preview dir="car-mpd" />
                    <div class="video-title">Video Title 4</div>
                </div>
            </td>
            <td>
                <div class="video-item">
                    <my:preview dir="car-mpd" />
                    <div class="video-title">Video Title 5</div>
                </div>
            </td>
            <td>
                <div class="video-item">
                    <my:preview dir="car-mpd" />
                    <div class="video-title">Video Title 6</div>
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <div class="video-item">
                    <my:preview dir="car-mpd" />
                    <div class="video-title">Video Title 7</div>
                </div>
            </td>
            <td>
                <div class="video-item">
                    <my:preview dir="car-mpd" />
                    <div class="video-title">Video Title 8</div>
                </div>
            </td>
            <td>
                <div class="video-item">
                    <my:preview dir="car-mpd" />
                    <div class="video-title">Video Title 9</div>
                </div>
            </td>
        </tr>
    </table>
</div>