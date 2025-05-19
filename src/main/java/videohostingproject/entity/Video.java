package videohostingproject.entity;

import java.io.Serializable;

public class Video implements Serializable, Identifiable {
    private final int id;
    private String location;
    private String title;
    private String description;
    private String uploader;

    public Video(int id, String location, String title, String description, String uploader) {
        this.id = id;
        this.location = location;
        this.title = title;
        this.description = description;
        this.uploader = uploader;
    }

    @Override
    public int getId() {
        return id;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getUploader() {
        return uploader;
    }

    public void setUploader(String uploader) {
        this.uploader = uploader;
    }
}
