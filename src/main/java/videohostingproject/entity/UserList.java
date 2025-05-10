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
    public synchronized User findUser(String login){
        for(User user : identifiables){
            if(user.getUsername().equals(login))
                return user;
        }
        return null;
    }

    public synchronized User findUser(Integer id){
        for(User user : identifiables){
            if(user.getId() == id)
                return user;
        }
        return null;
    }
}
