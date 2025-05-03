package videohostingproject.entity;

public class UserList extends ListOfIdentifiables<User> {
    public UserList() {
        super();
    }
    public void addUser(User user) {
        identifiables.add(user);
    }
    public void deleteUser(User user) {
        identifiables.remove(user);
    }
}
