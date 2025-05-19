package videohostingproject.servlet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.jsp.PageContext;
import videohostingproject.services.UserService;

import java.io.IOException;

@WebServlet("/doRegister")
public class RegisterServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        UserService userService = (UserService) getServletContext().getAttribute("userService");
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        String validation = req.getParameter("validation");
        String email = req.getParameter("email");
        System.out.println(userService);
        System.out.println("Adding user " + username);
        String errorMessage = null;
        if (username==null || username.isEmpty()) {
            errorMessage = "Username is required!";
            req.setAttribute("error", errorMessage);
            req.getRequestDispatcher("register.jsp").forward(req, resp);
        }
        if(!password.equals(validation)) {
            errorMessage = "Password and validation must be the same!";
            req.setAttribute("error", errorMessage);
            req.setAttribute("username", username);
            req.setAttribute("email", email);
            req.getRequestDispatcher("register.jsp").forward(req, resp);
        }
        if (errorMessage==null) {
            try {
                if(userService.addUser(username, password, email)){
                    System.out.println("User added successfully");
                    RequestDispatcher rd = req.getRequestDispatcher("/doLogin");
                    rd.forward(req, resp);
                }else{
                    System.out.println("User already exists");
                    errorMessage = "User already exists";
                    req.setAttribute("error", errorMessage);
                    req.getRequestDispatcher("register.jsp").forward(req, resp);
                }
            } catch (RuntimeException e) {
                errorMessage = e.getMessage();
                System.out.println(errorMessage);
                req.setAttribute("error", errorMessage);
                req.getRequestDispatcher("register.jsp").forward(req, resp);
            }
        }
    }
}