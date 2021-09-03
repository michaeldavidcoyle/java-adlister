import java.io.Serializable;

public class Album implements Serializable {

    private String artist;
    private String name;
    private String releaseDate;
    private String sales;
    private String genre;

    public Album() {
    }

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

    public String getReleaseDate() {
        return this.releaseDate;
    }

    public void setReleaseDate(String releaseDate) {
        this.releaseDate = releaseDate;
    }

    public String getSales() {
        return this.sales;
    }

    public void setSales(String sales) {
        this.sales = sales;
    }

    public String getGenre() {
        return this.genre;
    }

    public void setGenre(String genre) {
        this.genre = genre;
    }
}
