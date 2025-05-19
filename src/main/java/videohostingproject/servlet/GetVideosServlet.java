package videohostingproject.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import videohostingproject.entity.IdList;
import videohostingproject.entity.Video;
import videohostingproject.services.VideoService;

import java.io.IOException;
@WebServlet("/getVideos")
public class GetVideosServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int page = Integer.parseInt(req.getParameter("pgnum"));
        String query = req.getParameter("q");
        System.out.println("page number: " + page);
        VideoService vs = (VideoService) getServletContext().getAttribute("videoService");
        IdList<Video> queryResult = vs.search(query);
        IdList<Video> videos = vs.getVideosOnPage(page, queryResult, 9);
        int maxPage = vs.totalPages(queryResult, 9);
        for(Video v : videos){
            System.out.println(v.getId());
            System.out.println(v.getTitle());
            System.out.println(v.getLocation());
        }
        req.setAttribute("videos", videos);
        req.setAttribute("maxPage", maxPage);
        req.getRequestDispatcher("/previewTable.jsp").include(req, resp);
    }
}
