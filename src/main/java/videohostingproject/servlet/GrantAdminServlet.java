package videohostingproject.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import videohostingproject.services.UserService;

import java.io.IOException;

@WebServlet("/grantAdmin")
public class GrantAdminServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        UserService userService = (UserService) getServletContext().getAttribute("userService");
        if(userService.grantAdminToUser(username)){
            resp.sendRedirect(getServletContext().getContextPath() + "/home");
        }else{
            resp.sendError(HttpServletResponse.SC_BAD_REQUEST);
        }
    }
}
