package videohostingproject.services;

import videohostingproject.entity.IdList;
import videohostingproject.entity.User;
import videohostingproject.helper.UserListHelper;

import java.io.Serializable;
import java.util.ArrayList;

public class UserService implements Serializable {
    private IdList<User> globalUsers;
    private String dataPath;
    public UserService(String dataPath) {
        this.dataPath = dataPath;
        globalUsers = UserListHelper.readUserList(dataPath);
        globalUsers.add(new User(globalUsers.getLastId(), "admin", "admin", "admin", true));
    }

    public ArrayList<User> getUsers() {
        return globalUsers;
    }

    public void addUser(User user) {
        globalUsers.add(user);
        UserListHelper.saveUserList(globalUsers, dataPath);
    }
    public boolean addUser(String username, String password, String email) {
        if(findUser(username) != null) return false;
        User user = new User(globalUsers.getLastId(), username, password, email);
        globalUsers.incLastId();
        globalUsers.add(user);
        UserListHelper.saveUserList(globalUsers, dataPath);
        return true;
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
    public void save(){
        UserListHelper.saveUserList(globalUsers, dataPath);
    }

    public boolean grantAdminToUser(String username) {
        User u = findUser(username);
        if(u==null) return false;
        u.setAdmin(true);
        save();
        return true;
    }
}
