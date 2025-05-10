package videohostingproject.helper;

import jakarta.servlet.ServletContext;
import org.jboss.logging.Logger;
import videohostingproject.entity.User;
import videohostingproject.entity.UserList;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;

public abstract class UserListHelper {
    private static final String USERS_FILENAME = "WEB-INF/users.dat";
    private static String USERS_PATH = null;
    private static Logger logger = Logger.getLogger(UserListHelper.class);
    public static UserList readUserList(ServletContext context) {
        try {
            USERS_PATH = context.getRealPath(USERS_FILENAME);
            logger.info("Reading user list from " + USERS_PATH);
            ObjectInputStream in = new ObjectInputStream(new
                    FileInputStream(USERS_PATH));
            UserList res = (UserList)in.readObject();
            for(User u : res.getIdentifiables()){
                logger.info(u.getUsername());
            }
            return res;
        } catch (Exception e) {
            return new UserList();
        }
    }

    public static void saveUserList(UserList users) {
        synchronized (users) {
            try {
                ObjectOutputStream out = new ObjectOutputStream(new FileOutputStream(USERS_PATH));
                out.writeObject(users);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
