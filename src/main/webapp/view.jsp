<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="my" tagdir="/WEB-INF/tags"%>
<html>
<head>
    <title>Видео</title>
</head>
<body style="height: 100vh">
<jsp:include page="header.jsp"></jsp:include>
<my:2Columns leftColumnWidth="25%" rightColumnWidth="75%">
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
                <my:videoPlayer></my:videoPlayer>
            </div>
		</jsp:attribute>
</my:2Columns>
</body>
</html>
