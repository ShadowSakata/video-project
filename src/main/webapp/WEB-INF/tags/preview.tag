<%@tag pageEncoding="UTF-8" %>
<%@attribute name="video" required="true" type="videohostingproject.entity.Video" %>

<a href="view?id=${video.id}">
    <img src="${video.location}/preview.jpg" style="
        width: 100%;
        height: auto;
        flex-shrink: 0;
    ">
</a>