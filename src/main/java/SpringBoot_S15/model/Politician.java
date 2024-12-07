package SpringBoot_S15.model;


import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="politician_table")
public class Politician {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)	//auto increment
	@Column(name="politician_id")
	private int id;
	@Column(name="politician_name",nullable=false,length = 50)
	private String name;
	@Column(name="politician_gender",nullable=false,length = 10)
	private String gender;
	@Column(name="politician_email",nullable=false)
	private String email;
	@Column(name="politician_password",nullable=false,length = 50)
	private String password;
	@Column(name="politician_location",nullable=false,length = 100)
	private String location;
	@Column(name="politician_position",nullable=false,length = 100)
	private String position;
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
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
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	
}
