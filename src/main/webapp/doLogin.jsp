<%@page language="java" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="vh" uri="http://tag/vh"%>
<fmt:requestEncoding value="UTF-8" />
<vh:login login="${param.username}" password="${param.password}" />
<c:choose>
	<c:when test="${sessionScope.errorMessage==null}">
		<c:redirect url="/profile.jsp" />
	</c:when>
	<c:otherwise>
		<c:redirect url="/index.jsp" />
	</c:otherwise>
</c:choose>
