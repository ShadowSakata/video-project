<%@page language="java" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="vh" uri="http://tag/vh"%>
<fmt:requestEncoding value="UTF-8" />
<vh:addUser username="${param.username}" email="${param.mail}" password="${param.password}"/>
<c:choose>
<c:when test="${sessionScope.errorMessage==null}">
<jsp:forward page="/doLogin.jsp" />
</c:when>
<c:otherwise>
	<c:redirect url="/register.jsp" />
</c:otherwise>
</c:choose>
