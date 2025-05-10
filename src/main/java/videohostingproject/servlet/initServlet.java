package videohostingproject.servlet;

import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import videohostingproject.entity.UserList;
import videohostingproject.entity.VideoList;
import videohostingproject.helper.UserListHelper;
import videohostingproject.helper.VideoListHelper;

public class initServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
        UserList userList = UserListHelper.readUserList(getServletContext());

        getServletContext().setAttribute("users", userList);

        VideoList videoList = VideoListHelper.readAdList(getServletContext());

        getServletContext().setAttribute("globalVideos", videoList);
    }
}
