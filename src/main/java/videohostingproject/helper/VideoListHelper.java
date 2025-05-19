package videohostingproject.helper;

import videohostingproject.entity.IdList;
import videohostingproject.entity.Video;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.ArrayList;

public abstract class VideoListHelper {

    public static IdList<Video> readVideoList(String dataPath) {
        try {
            ObjectInputStream in = new ObjectInputStream(new
                    FileInputStream(dataPath));
            return (IdList<Video>)in.readObject();
        } catch (Exception e) {
            return new IdList<Video>();
        }
    }

    public static void saveVideoList(IdList<Video> videos, String dataPath) {
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
