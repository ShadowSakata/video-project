package videohostingproject.tag;


import jakarta.servlet.jsp.JspException;
import jakarta.servlet.jsp.PageContext;
import jakarta.servlet.jsp.tagext.SimpleTagSupport;
import videohostingproject.entity.User;
import videohostingproject.services.UserService;

import java.io.IOException;

public class Login extends SimpleTagSupport {
    private String login;
    private String password;

    public void setLogin(String login) {
        this.login = login;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void doTag() {
        String errorMessage = null;
        System.out.println("Logging in user " + login);
        UserService userService = (UserService) getJspContext().getAttribute("userService", PageContext.APPLICATION_SCOPE);
        if (login==null || login.equals("")) {
            errorMessage = "Логин не может быть пустым!";
        } else {
            User user = userService.authenticate(login, password);
            if (user==null) {
                errorMessage = "Такой пользователь не существует или указанная комбинация логин/пароль неверна!";
            } else {
                getJspContext().setAttribute("authUser", user,
                        PageContext.SESSION_SCOPE);
            }
        }
        System.out.println("Logged in user " + login);
        System.out.println(errorMessage);
        getJspContext().setAttribute("errorMessage", errorMessage, PageContext.SESSION_SCOPE);
    }
}
