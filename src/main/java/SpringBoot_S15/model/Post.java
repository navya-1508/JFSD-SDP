package SpringBoot_S15.model;

import java.sql.Blob;

import jakarta.persistence.*;

@Entity
@Table(name="post_table")
public class Post {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY) // Auto-increment
    @Column(name="post_id")
    private int id;

    @Column(name="post_title", nullable = false, length = 50)
    private String title;

    @Column(name="post_description", nullable = false, length = 100)
    private String description;

    @Lob // Use @Lob for large binary data
    @Column(name="post_img", nullable = false)
    private Blob img;

    // Getters and Setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
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

    public Blob getImg() {
		return img;
	}
	public void setImg(Blob img) {
		this.img = img;
	}

	public void setDescription(String description) {
        this.description = description;
    }

}
