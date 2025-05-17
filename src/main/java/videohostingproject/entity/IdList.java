package videohostingproject.entity;

import java.util.ArrayList;

public class IdList<T> extends ArrayList<T> {
    private static int lastId;
    public IdList() {
        super();
        lastId = 0;
    }

    public int getLastId() {
        return lastId;
    }

    public void incLastId() {
        lastId++;
    }
}
