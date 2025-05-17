package videohostingproject.helper;

import videohostingproject.entity.IdList;
import videohostingproject.entity.User;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;

public abstract class UserListHelper {
    public static IdList<User> readUserList(String dataPath) {
        try {
            ObjectInputStream in = new ObjectInputStream(new
                    FileInputStream(dataPath));
            return (IdList<User>)in.readObject();
        } catch (Exception e) {
            return new IdList<>();
        }
    }

    public static void saveUserList(IdList<User> users, String dataPath) {
        synchronized (users) {
            try {
                ObjectOutputStream out = new ObjectOutputStream(new FileOutputStream(dataPath));
                out.writeObject(users);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
