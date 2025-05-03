package videohostingproject.entity;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.ArrayList;

public class ListOfIdentifiables <T extends Identifiable & Serializable> implements Serializable {
    protected ArrayList<T> identifiables;
    private int nextId;
    public ListOfIdentifiables() {
        this.nextId = 1;
    }

    public int nextId() {
        return nextId++;
    }

    public ArrayList<T> getIdentifiables() {
        return identifiables;
    }

    public void setIdentifiables(ArrayList<T> identifiables) {
        this.identifiables = identifiables;
    }

    private void readObject (final ObjectInputStream in) throws IOException, ClassNotFoundException{
        identifiables = (ArrayList<T>)in.readObject();

        nextId = 0;
        for(T item : identifiables){
            final int itemId = item.getId();
            if(itemId > nextId)
                nextId = itemId;
        }

        nextId++;
    }

    private void writeObject(final ObjectOutputStream out) throws IOException{
        out.writeObject(identifiables);
    }
}
