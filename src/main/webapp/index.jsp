<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="layout" tagdir="/WEB-INF/tags"%>
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
		.genre-list {
			width: 200px;
			background-color: #ddd;
			padding: 10px;
			overflow-y: auto;
		}

		.genre-list ul {
			list-style: none;
			padding: 0;
		}

		.genre-list ul li {
			margin: 5px 0;
			cursor: pointer;
		}

		/* Video grid with table */

		/* Page controls */
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
		<div class="genre-list">
			<ul>
				<li>Genre 1</li>
				<li>Genre 2</li>
				<li>Genre 3</li>
				<li>Genre 4</li>
				<li>Genre 5</li>
			</ul>
		</div>

		<!-- Video list (3x3 table filling the space) -->
		<jsp:include page="previewTable.jsp"></jsp:include>
	</div>

	<!-- Page controls -->
	<div class="page-controls">
		<button>Previous</button>
		<button>Next</button>
	</div>
</div>
</body>
</html>
