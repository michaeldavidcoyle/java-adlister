import java.io.Serializable;

public class Album implements Serializable {

    private int id;
    private String artist;
    private String name;
    private int releaseDate;
    private float sales;
    private String genre;

    public Album() {
    }

    public int getId() {
        return id;
    }

    // Should probably never be used.
//    public void setId(int id) {
//        this.id = id;
//    }

    public String getArtist() {
        return this.artist;
    }

    public void setArtist(String artist) {
        this.artist = artist;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getReleaseDate() {
        return this.releaseDate;
    }

    public void setReleaseDate(int releaseDate) {
        this.releaseDate = releaseDate;
    }

    public float getSales() {
        return this.sales;
    }

    public void setSales(float sales) {
        this.sales = sales;
    }

    public String getGenre() {
        return this.genre;
    }

    public void setGenre(String genre) {
        this.genre = genre;
    }
}
