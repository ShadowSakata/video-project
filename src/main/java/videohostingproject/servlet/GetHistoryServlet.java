package videohostingproject.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import videohostingproject.entity.IdList;
import videohostingproject.entity.User;
import videohostingproject.entity.Video;
import videohostingproject.services.VideoService;

import java.io.IOException;

@WebServlet("/history")
public class GetHistoryServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int page;
        if(req.getParameter("pgnum") == null) page = 1;
        else page = Integer.parseInt(req.getParameter("pgnum"));
        if(page < 1) page = 1;
        VideoService vs = (VideoService) getServletContext().getAttribute("videoService");
        HttpSession session = req.getSession();
        IdList<Video> history = vs.getHistory((User) session.getAttribute("authUser"));
        IdList<Video> result = vs.getVideosOnPage(page, history, 6);
        int maxPage = vs.totalPages(history, 6);
        req.setAttribute("videos", result);
        req.setAttribute("page", page);
        req.setAttribute("maxPage", maxPage);
        req.getRequestDispatcher("previewHistory.jsp").include(req, resp);
    }
}
