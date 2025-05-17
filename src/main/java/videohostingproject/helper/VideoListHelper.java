package videohostingproject.helper;

import videohostingproject.entity.Video;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.ArrayList;

public abstract class VideoListHelper {

    public static ArrayList<Video> readAdList(String dataPath) {
        try {
            ObjectInputStream in = new ObjectInputStream(new
                    FileInputStream(dataPath));
            return (ArrayList<Video>)in.readObject();
        } catch (Exception e) {
            return new ArrayList<Video>();
        }
    }

    public static void saveAdList(ArrayList<Video> videos, String dataPath) {
        synchronized (videos) {
            try {
                ObjectOutputStream out = new ObjectOutputStream(new FileOutputStream(dataPath));
                out.writeObject(videos);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
