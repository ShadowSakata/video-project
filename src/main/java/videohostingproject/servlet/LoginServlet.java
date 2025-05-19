package videohostingproject.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.jsp.PageContext;
import videohostingproject.entity.User;
import videohostingproject.services.UserService;

import java.io.IOException;

@WebServlet("/doLogin")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        String errorMessage = "";
        System.out.println("Logging in user " + username);
        UserService userService = (UserService) getServletContext().getAttribute("userService");
        if (username==null || username.equals("")) {
            errorMessage = "Username is required";
            req.setAttribute("error", errorMessage);
            req.getRequestDispatcher("login.jsp").forward(req, resp);
        } else {
            User user = userService.authenticate(username, password);
            if (user==null) {
                errorMessage = "Wrong username or password";
                req.setAttribute("error", errorMessage);
                req.setAttribute("username", username);
                req.getRequestDispatcher("login.jsp").forward(req, resp);
            } else {
                HttpSession session = req.getSession();
                session.setAttribute("authUser", user);
                System.out.println("Logged in user " + username);
                resp.sendRedirect(req.getContextPath() + "/profile?pgnum=1");
            }
        }
        System.out.println(errorMessage);
    }
}
