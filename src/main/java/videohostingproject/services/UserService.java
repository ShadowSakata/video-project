package videohostingproject.services;

import videohostingproject.entity.IdList;
import videohostingproject.entity.User;
import videohostingproject.helper.UserListHelper;

import java.io.Serializable;
import java.util.ArrayList;

public class UserService implements Serializable {
    private static int lastId;
    private IdList<User> globalUsers;
    private String dataPath;
    public UserService(String dataPath) {
        this.dataPath = dataPath;
        lastId = 0;
        globalUsers = UserListHelper.readUserList(dataPath);
    }

    public ArrayList<User> getUsers() {
        return globalUsers;
    }

    public void addUser(User user) {
        globalUsers.add(user);
        UserListHelper.saveUserList(globalUsers, dataPath);
    }
    public void addUser(String username, String password, String email) {
        User user = new User(globalUsers.getLastId(), username, password, email);
        globalUsers.incLastId();
        globalUsers.add(user);
        UserListHelper.saveUserList(globalUsers, dataPath);
    }

    public User findUser(String username) {
        for (User user : globalUsers) {
            if (user.getUsername().equals(username)) {
                return user;
            }
        }
        return null;
    }

    public User authenticate(String login, String password) {
        User user = findUser(login);
        System.out.println("User: " + user);
        if (user==null || !user.getPassword().equals(password)) {
            System.out.println("Wrong password, actual password: " + user.getPassword() + " supplied password: " + password);
            return null;
        } else {
            return user;
        }
    }

    @Override
    public String toString() {
        return "UserService{" +
                ", dataPath='" + dataPath + '\'' +
                '}';
    }
}
