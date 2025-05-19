<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="my" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
	.header {
		display: flex;
		justify-content: space-between;
		align-items: center;
		background-color: #181818;
		color: white;
		padding: 10px 20px;
	}
	.header .logo {
		font-size: 1.5em;
		font-weight: bold;
	}

	.header .profile .when-logged-in {
		display: flex;
		justify-content: space-between;
		align-items: center;
	}

	.header .search-bar input {
		width: 200px;
		padding: 5px;
	}

	.header .profile {
		cursor: pointer;
	}

	.header .controls {
		color: white;
		background-color: #333;
		padding: 5px;
		margin: 10px;
		border-radius: 5px;
	}

	.header .search-text-field{
		border-radius: 5px;
		background-color: #9f9f9f;
	}

</style>
	<div class="header">
		<div class="logo">
			<a href="/vids/home?pgnum=1">
				<img src="https://catpedia.wiki/images/5/59/Milly.png" width="240" height="80" border="0" align="left" alt="image">
			</a>
		</div>
		<div class="search-bar">
			<form method="get" action="home">
				<input class="search-text-field" type="text" name="q">
				<input class="controls" type="submit" value="Search">
			</form>
		</div>
		<div class="profile">
			<c:choose>
				<c:when test="${sessionScope.authUser!=null}">
					<div class="when-logged-in">
					<c:if test="${sessionScope.authUser.admin}">

						<div>
							<form action="grantAdmin.jsp" method="post">
								<button class="controls">Grant admin</button>
							</form>
						</div>
						<div>
							<form action="upload.jsp" method="post">
								<button class="controls">Upload video</button>
							</form>
						</div>
					</c:if>
						<div>
							<form action="doLogout" method="post">
								<button class="controls">Logout</button>
							</form>
						</div>
						<div>
							<a href="profile?pgnum=1">
								<button class="controls">Profile</button>
							</a>
						</div>
					</div>
				</c:when>
				<c:otherwise>
					<a href="login.jsp">
						<button class="controls">Log-in</button>
					</a>
				</c:otherwise>
			</c:choose>
		</div>
	</div>