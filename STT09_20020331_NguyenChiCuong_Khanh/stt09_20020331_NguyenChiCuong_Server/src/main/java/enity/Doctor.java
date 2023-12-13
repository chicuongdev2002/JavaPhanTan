package enity;

import java.io.Serializable;
import java.util.List;

import jakarta.persistence.AttributeOverride;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;

@Entity
@Table(name = "Doctor")
@AttributeOverride(name="id",column = @Column(name="id"))
public class Doctor extends Person implements Serializable {
	@Column(columnDefinition = "varchar(255)")
	private String speciality;
	@OneToMany(mappedBy = "doctor")
	private List<Treatment> treatments;

	public Doctor() {
		super();
	}

	public Doctor(String speciality) {
		super();
		this.speciality = speciality;
	}

	public String getSpeciality() {
		return speciality;
	}

	public void setSpeciality(String speciality) {
		this.speciality = speciality;
	}

	@Override
	public String toString() {
		return super.toString() +"Doctor [speciality=" + speciality + "]";
	}



}
