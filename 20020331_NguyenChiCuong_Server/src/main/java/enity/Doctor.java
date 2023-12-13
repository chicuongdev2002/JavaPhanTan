package enity;

import java.io.Serializable;
import java.util.List;
import java.util.Set;

import jakarta.persistence.CollectionTable;
import jakarta.persistence.Column;
import jakarta.persistence.ElementCollection;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;

@Entity
@Table(name = "Doctor")
public class Doctor implements Serializable {
	@Id
	@Column(name="doctorID")
	private String id;
	@ElementCollection
	@CollectionTable(name = "Certificate",joinColumns = @JoinColumn(name="doctorID"))
	private Set<String> certifications;
	@Column(columnDefinition = "nvarchar(255)")
	private String email;
	@Column(columnDefinition = "nvarchar(255)")
	private String firstName;
	@Column(columnDefinition = "nvarchar(255)")
	private String lastName;
	@Column(columnDefinition = "nvarchar(255)")
	private String phone;
	@Column(columnDefinition = "nvarchar(255)")
	private String specialty;
	@OneToMany(mappedBy = "doctor")
	private List<Treatment> treatments;
	@ManyToOne
    @JoinColumn(name="departmentID")
	private Department department;
}
