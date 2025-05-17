<%@tag pageEncoding="UTF-8" %>
<%@attribute name="dir" required="true" type="java.lang.String" %>

<a href="view.jsp">
    <img src="${dir}/preview.jpg" style="
        width: 100%;
        height: auto;
        flex-shrink: 0;
    ">
</a>