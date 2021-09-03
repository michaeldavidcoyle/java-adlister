import java.io.Serializable;

public class Quote implements Serializable {

    private int id;
    private String content;
    private Author author;

    public Quote() {
    }

    public Quote(int id, String content, Author author) {
        this.id = id;
        this.content = content;
        this.author = author;
    }

    public int getId() {
        return this.id;
    }

    // Should probably never be used.
//    public void setId(int id) {
//        this.id = id;
//    }

    public String getContent() {
        return this.content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Author getAuthor() {
        return this.author;
    }

    public void setAuthor(Author author) {
        this.author = author;
    }
}
