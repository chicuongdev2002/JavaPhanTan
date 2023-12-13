package enity;


import java.io.Serializable;
import java.time.LocalDate;
import java.util.List;

import jakarta.persistence.AttributeOverride;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;

@Entity
@Table(name = "Patient")
@AttributeOverride(name="id",column = @Column(name="id"))
public class Patient extends Person  implements Serializable {
	@Column(columnDefinition = "varchar(255)")
	private String gender;
	@Column(columnDefinition = "date")
	private LocalDate dateOfBirth;
	@Column(columnDefinition = "varchar(255)")
	private String address;
	@OneToMany(mappedBy = "patient")
    private List<Treatment> treatments;
	public Patient() {
		super();
	}

	

	



	public Patient(String id, String name, String phone, String gender, LocalDate dateOfBirth, String address) {
		super(id, name, phone);
		this.gender = gender;
		this.dateOfBirth = dateOfBirth;
		this.address = address;
	}







	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public LocalDate getDateOfBirth() {
		return dateOfBirth;
	}

	public void setDateOfBirth(LocalDate dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	@Override
	public String toString() {
		return "Patient [gender=" + gender + ", dateOfBirth=" + dateOfBirth + ", address=" + address + "]";
	}

}
