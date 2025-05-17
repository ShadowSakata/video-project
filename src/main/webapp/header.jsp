<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="my" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
	.header {
		display: flex;
		justify-content: space-between;
		align-items: center;
		background-color: tan;
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

</style>
	<div class="header">
		<div class="logo">
			<a href="/vids">
				<img src="https://catpedia.wiki/images/5/59/Milly.png" width="240" height="80" border="0" align="left" alt="image">
			</a>
		</div>
		<div class="search-bar">
			<input type="text">
			<input type="submit" value="Search">
		</div>
		<div class="profile">
			<c:choose>
				<c:when test="${sessionScope.authUser!=null}">
					<a href="profile.jsp">
						<p>profile</p>
					</a>
				</c:when>
				<c:otherwise>
					<a href="login.jsp">
						<p>Log-in</p>
					</a>
				</c:otherwise>
			</c:choose>
		</div>
	</div>