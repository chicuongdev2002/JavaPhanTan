package enity;

import java.awt.SecondaryLoop;
import java.io.Serializable;
import java.util.List;

import org.hibernate.annotations.CollectionId;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;

@Entity
@Table(name = "Patient")
public class Patient implements Serializable {
	@Column(columnDefinition = "nvarchar(255)")
	private String address;
	private int age;
	@Column(columnDefinition = "nvarchar(255)")
	private String firstName;
	@Column(columnDefinition = "nvarchar(255)")
	private String gender;
	@Id
	@Column(name="patientID",columnDefinition = "nvarchar(13)")
	private String id;
	@Column(columnDefinition = "nvarchar(255)")
	private String lastName;
	@Column(columnDefinition = "nvarchar(255)")
	private String phone;
	@OneToMany(mappedBy = "patient")
	private List<Treatment> treatments;
	public Patient(String address, int age, String firstName, String gender, String id, String lastName, String phone) {
		super();
		this.address = address;
		this.age = age;
		this.firstName = firstName;
		this.gender = gender;
		this.id = id;
		this.lastName = lastName;
		this.phone = phone;
	}
	public Patient() {
		super();
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public List<Treatment> getTreatments() {
		return treatments;
	}
	public void setTreatments(List<Treatment> treatments) {
		this.treatments = treatments;
	}
	@Override
	public String toString() {
		return "Patient [address=" + address + ", age=" + age + ", firstName=" + firstName + ", gender=" + gender
				+ ", id=" + id + ", lastName=" + lastName + ", phone=" + phone + ", treatments=" + treatments + "]";
	}
	
	
}
