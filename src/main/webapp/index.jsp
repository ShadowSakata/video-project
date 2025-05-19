<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="my" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Главная страница</title>
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
	</style>
</head>
<body>
<div class="container">
	<jsp:include page="/header.jsp" />
	<div class="main">
		<!-- Genre list -->
<%--		<div class="genre-list">--%>
<%--			<ul>--%>
<%--				<li>Genre 1</li>--%>
<%--				<li>Genre 2</li>--%>
<%--				<li>Genre 3</li>--%>
<%--				<li>Genre 4</li>--%>
<%--				<li>Genre 5</li>--%>
<%--			</ul>--%>
<%--		</div>--%>

		<!-- Video list (3x3 table filling the space) -->
		<jsp:include page="/getVideos?pgnum=${(requestScope.page!=null) ? requestScope.page : 1}&q=${requestScope.q}"/>
	</div>
</div>
</body>
</html>
