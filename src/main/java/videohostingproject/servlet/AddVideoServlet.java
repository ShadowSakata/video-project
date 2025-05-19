package videohostingproject.servlet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import videohostingproject.entity.User;
import videohostingproject.entity.Video;
import videohostingproject.services.VideoService;

import java.io.IOException;
import java.net.http.HttpRequest;

@WebServlet("/addVideo")
public class AddVideoServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        VideoService vs = (VideoService) getServletContext().getAttribute("videoService");
        User user = (User) req.getSession().getAttribute("authUser");
        String title = req.getParameter("title");
        String location = req.getParameter("location");
        String description = req.getParameter("description");
        vs.add(location, title, description, user.getUsername());
        resp.sendRedirect("/vids/home");

    }
}
