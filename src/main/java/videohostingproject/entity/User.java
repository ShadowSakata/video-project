package videohostingproject.entity;

import java.io.Serializable;
import java.util.ArrayList;

public class User implements Serializable, Identifiable {
    private static int lastId = 0;
    private int id;
    private String username;
    private String password;
    private String email;
    private Boolean isAdmin;
    private ArrayList<Integer> history;

    public User(int id, String username, String password, String email, Boolean isAdmin) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.email = email;
        this.isAdmin = isAdmin;
        this.history = new ArrayList<>();
    }
    public User(int id, String username, String password, String email) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.email = email;
        this.isAdmin = false;
        this.history = new ArrayList<>();
    }
    public User(){
        this.id = 0;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Override
    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }

    public Boolean getAdmin() {
        return isAdmin;
    }

    public void setAdmin(Boolean admin) {
        isAdmin = admin;
    }

    public ArrayList<Integer> getHistory() {
        return history;
    }
    public void addToHistory(int id) {
        if(history.contains(id)) history.remove(Integer.valueOf(id));
        history.add(0, id);
    }
    public int totalHistoryPages(){
        return (history.size() / 6 == 0) ? 1 : history.size() / 6;
    }
}
