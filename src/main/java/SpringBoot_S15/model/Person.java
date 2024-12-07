package SpringBoot_S15.model;


import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="person_table")
public class Person {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)	//auto increment
	@Column(name="person_id")
	private int id;
	@Column(name="person_name",nullable=false,length = 50)
	private String name;
	@Column(name="person_gender",nullable=false,length = 10)
	private String gender;
	@Column(name="person_dob",nullable=false)
	private String dob;
	@Column(name="person_email",nullable=false,unique=true,length = 50)
	private String email;
	@Column(name="person_password",nullable=false,length = 50)
	private String password;
	@Column(name="person_location",nullable=false,length = 100)
	private String location;
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
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
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
