<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="my" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
        font-size: 1.2em;
        font-weight: bold;
        text-align: center;
        background-color: #fff;
        flex-shrink: 0;
    }
    .page-controls {
         text-align: center;
         padding: 10px;
         background-color: #333;
         color: white;
        width: 100px;
    }

    .page-controls button {
        padding: 5px 10px;
        margin: 5px;
        background-color: white;
        border: 1px solid #ccc;
        cursor: pointer;
    }
</style>
<div class="page-controls">
        <c:if test="${requestScope.page > 1}">
    <a href="${pageContext.request.contextPath}/home?pgnum=${requestScope.page - 1}&q=${requestScope.q}">
        <button>Previous</button>
    </a>
        </c:if>

    <label>${requestScope.page}</label>

        <c:if test="${requestScope.page < requestScope.maxPage}">
    <a href="${pageContext.request.contextPath}/home?pgnum=${requestScope.page + 1}&q=${requestScope.q}">
        <button>Next</button>
    </a>
        </c:if>
</div>
<div class="video-list">
    <table class="video-table" id="preview-table">
        <c:forEach var="video" items="${requestScope.videos}" varStatus="loop">
        <c:choose>
            <c:when test="${(loop.index + 1) % 3 == 0}">
                <td>
                    <div class="video-item">
                        <my:preview video="${video}" />
                        <div class="video-title">${video.title}</div>
                    </div>
                </td>
                </tr>
            </c:when>
            <c:when test="${(loop.index + 2) % 3 == 0}">
                <td>
                    <div class="video-item">
                        <my:preview video="${video}" />
                        <div class="video-title">${video.title}</div>
                    </div>
                </td>
            </c:when>
            <c:when test="${(loop.index) % 3 == 0}">
            <tr>
                <td>
                    <div class="video-item">
                        <my:preview video="${video}" />
                        <div class="video-title">${video.title}</div>
                    </div>
                </td>
                </c:when>
        </c:choose>
        </c:forEach>
    </table>
</div>