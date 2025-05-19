package videohostingproject.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import videohostingproject.services.VideoService;

import java.io.IOException;

@WebServlet("/profile")
public class ProfileServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int page;
        if(req.getParameter("pgnum") == null) page = 1;
        else page = Integer.parseInt(req.getParameter("pgnum"));
        req.setAttribute("page", page);
        req.getRequestDispatcher("/profile.jsp").forward(req, resp);
    }
}
