<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="layout" tagdir="/WEB-INF/tags"%>
<!DOCTYPE html>
<html>
<head>
<title>Главная страница</title>
<meta http-equiv='Content-Type' content='text/html; charset=UTF-8' />
</head>
<body style="height: 100vh">
	<jsp:include page="/header.jsp"></jsp:include>
	<layout:2Columns leftColumnWidth="25%" rightColumnWidth="75%">
		<jsp:attribute name="leftColumnBody">
			<div style="background-color: #5ee529; border-radius: 5px">
				<p>placeHolder info</p>
				<p>-------------</p>
				<p>-------------</p>
				<p>-------------</p>
				<p>-------------</p>
				<p>-------------</p>
				<p>-------------</p>
			</div>
		</jsp:attribute>
		<jsp:attribute name="rightColumnBody">
			<div style="background-color: #ffdd0f">
				<jsp:include page="previewTable.jsp"></jsp:include>
			</div>
		</jsp:attribute>
	</layout:2Columns>
</body>
</html>
