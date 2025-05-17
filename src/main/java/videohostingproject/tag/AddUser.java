package videohostingproject.tag;

import jakarta.servlet.ServletContext;
import jakarta.servlet.jsp.PageContext;
import jakarta.servlet.jsp.tagext.SimpleTagSupport;
import videohostingproject.entity.User;
import videohostingproject.services.UserService;

import java.io.IOException;

public class AddUser extends SimpleTagSupport {
    private String username;
    private String email;
    private String password;
    public void doTag() {
        PageContext pageContext = (PageContext) getJspContext();
        ServletContext servletContext = pageContext.getServletContext();
        UserService userService = (UserService) servletContext.getAttribute("userService");
        System.out.println(userService);
        System.out.println("Adding user " + username);
        String errorMessage = null;
        if (username==null || username.isEmpty()) {
            errorMessage = "Логин не может быть пустым!";
        }
        if (errorMessage==null) {
            try {
                userService.addUser(username, password, email);
                System.out.println("User added successfully");
            } catch (RuntimeException e) {
                errorMessage = e.getMessage();
                System.out.println(errorMessage);
            }
        }

        getJspContext().setAttribute("errorMessage", errorMessage,
                PageContext.SESSION_SCOPE);
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
