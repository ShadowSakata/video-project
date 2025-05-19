package videohostingproject.servlet;

import jakarta.servlet.ServletContextEvent;
import jakarta.servlet.ServletContextListener;
import jakarta.servlet.annotation.WebListener;
import videohostingproject.services.UserService;
import org.jboss.logging.Logger;
import videohostingproject.services.VideoService;

@WebListener
public class AppContextListener implements ServletContextListener {
    @Override
    public void contextInitialized(ServletContextEvent sce) {
        sce.getServletContext().setAttribute("userService",
                new UserService("C:/Users/shift/IdeaProjects/video-project/src/main/webapp/WEB-INF/users.dat"));
        System.out.println("User service initialized");
        sce.getServletContext().setAttribute("videoService",
                new VideoService("C:/Users/shift/IdeaProjects/video-project/src/main/webapp/WEB-INF/videos.dat"));
        System.out.println("Video service initialized");
    }
    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        System.out.println("User service destroyed");
        System.out.println("Video service destroyed");
    }
}
