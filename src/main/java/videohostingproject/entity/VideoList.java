package videohostingproject.entity;

import java.util.ArrayList;

public class VideoList extends ListOfIdentifiables<Video> {

    public VideoList() {
        super();
    }
    public void addVideo(Video video) {
        identifiables.add(video);
    }
    public void addVideo(String location, String title, String description) {
        identifiables.add(new Video(nextId(), location, title, description ));
    }
    public Video getVideoByTitle(String title) {
        for (Video video : identifiables) {
            if (video.getTitle().equals(title)) {
                return video;
            }
        }
        return null;
    }

    public VideoList searchVideos(String input) {
        VideoList result = new VideoList();
        for (Video video : identifiables) {
            if (video.getTitle().toLowerCase().contains(input.toLowerCase())) {
                result.addVideo(video);
            }
        }
        return result;
    }

    public void deleteVideo(Video video) {
        identifiables.remove(video);
    }
}
