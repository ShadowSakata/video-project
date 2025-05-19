package videohostingproject.services;

import videohostingproject.entity.IdList;
import videohostingproject.entity.User;
import videohostingproject.entity.Video;
import videohostingproject.helper.UserListHelper;
import videohostingproject.helper.VideoListHelper;

import java.util.ArrayList;
import java.util.Objects;

public class VideoService {

    private IdList<Video> globalVideos;
    private String dataPath;

    public VideoService(String dataPath) {
        this.dataPath = dataPath;
        globalVideos = VideoListHelper.readVideoList(dataPath);
    }

    public IdList<Video> getVideosOnPage(int page, IdList<Video> list, int perPage) {
        IdList<Video> videosOnPage = new IdList<>();

        for(int i = page * perPage - perPage; i < page * perPage && i < list.size(); i++){

            videosOnPage.add(list.get(i));
        }

        return videosOnPage;
    }

    public IdList<Video> getHistory(User user) {
        IdList<Video> historyPage = new IdList<>();
        ArrayList<Integer> history = user.getHistory();

        for(int i = 0 ; i < history.size(); i++){
            historyPage.add(getVideoById(history.get(i)));
        }

        return historyPage;
    }

    public Video getVideoById(int id) {
        for(Video video : globalVideos){
            if(video.getId() == id){
                return video;
            }
        }
        return null;
    }

    public void add(String location, String title, String description, String uploader) {
        System.out.println("Last Id before upload " + globalVideos.getLastId());
        globalVideos.add(0, new Video(globalVideos.getLastId(), location, title, description, uploader));
        globalVideos.incLastId();
        System.out.println("Last Id after upload " + globalVideos.getLastId());
        VideoListHelper.saveVideoList(globalVideos, dataPath);
    }

    public int totalPages(IdList<Video> videos, int perPage) {
        double size = videos.size();
        return (size / perPage == 0) ? 1 : (int) Math.ceil(size / perPage);
    }

    public IdList<Video> search(String query) {
        if(Objects.equals(query, "")) return globalVideos;
        IdList<Video> result = new IdList<>();
        for(Video video : globalVideos){
            if(video.getTitle().toLowerCase().contains(query.toLowerCase())){
                result.add(video);
            }
        }
        return result;
    }
}
