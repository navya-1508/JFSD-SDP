package SpringBoot_S15.model;


import java.sql.Blob;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="problem_table")
public class Problem {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)	//auto increment
	@Column(name="problem_id")
	private int id;
	@Column(name="citizen_name",nullable=false,length = 50)
	private String name;
	@Column(name="citizen_email",nullable=false,length = 10)
	private String email;
	@Column(name="problem_location",nullable=false,length = 100)
	private String location;
	@Column(name="problem_description",nullable=false,length = 100)
	private String description;
	@Column(name="problem_img",nullable=false,length = 100)
	private Blob img; //binary large object
	public Blob getImg() {
		return img;
	}
	public void setImg(Blob img) {
		this.img = img;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	
}
