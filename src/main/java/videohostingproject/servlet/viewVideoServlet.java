package videohostingproject.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import videohostingproject.entity.User;
import videohostingproject.entity.Video;
import videohostingproject.services.UserService;
import videohostingproject.services.VideoService;

import java.io.IOException;

@WebServlet("/view")
public class viewVideoServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int videoID = Integer.parseInt(req.getParameter("id"));
        VideoService vs = (VideoService) getServletContext().getAttribute("videoService");
        UserService us = (UserService) getServletContext().getAttribute("userService");
        Video video = vs.getVideoById(videoID);
        HttpSession session = req.getSession();
        User user = (User) session.getAttribute("authUser");
        if(user != null) {
            user.addToHistory(video.getId());
            us.save();
        }
        req.setAttribute("video", video);
        req.getRequestDispatcher("view.jsp").forward(req, resp);
    }
}
