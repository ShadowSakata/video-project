package videohostingproject.helper;

import jakarta.servlet.ServletContext;
import videohostingproject.entity.VideoList;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;

public abstract class VideoListHelper {
    private static final String VIDEOS_FILENAME = "WEB-INF/vids.dat";
    private static String VIDEOS_PATH = null;

    public static VideoList readAdList(ServletContext context) {
        try {
            VIDEOS_PATH = context.getRealPath(VIDEOS_FILENAME);
            ObjectInputStream in = new ObjectInputStream(new
                    FileInputStream(VIDEOS_PATH));
            return (VideoList)in.readObject();
        } catch (Exception e) {
            return new VideoList();
        }
    }

    public static void saveAdList(VideoList videos) {
        synchronized (videos) {
            try {
                ObjectOutputStream out = new ObjectOutputStream(new FileOutputStream(VIDEOS_PATH));
                out.writeObject(videos);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
