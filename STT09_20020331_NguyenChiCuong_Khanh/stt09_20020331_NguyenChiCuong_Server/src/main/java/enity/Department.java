package enity;

import java.io.Serializable;
import java.util.List;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;

@Entity
@Table(name = "Department")
public class Department implements Serializable {
	@Id
	@Column(columnDefinition = "varchar(255)")
	private String id;
	@Column(columnDefinition = "varchar(255)")
	private String name;
	@Column(columnDefinition = "varchar(255)")
	private String location;
	@OneToMany(mappedBy = "department")
	private List<Treatment> treatments;
	public Department(String id, String name, String location) {
		super();
		this.id = id;
		this.name = name;
		this.location = location;
	}
	public Department() {
		super();
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public List<Treatment> getTreatments() {
		return treatments;
	}
	public void setTreatments(List<Treatment> treatments) {
		this.treatments = treatments;
	}
	@Override
	public String toString() {
		return "Department [id=" + id + ", name=" + name + ", location=" + location + "]";
	}
	
}
