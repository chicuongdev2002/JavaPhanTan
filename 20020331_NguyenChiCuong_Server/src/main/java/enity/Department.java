package enity;

import java.io.Serializable;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "Department")
public class Department implements Serializable {
	@Id
	@Column(name="departmentID",columnDefinition = "nvarchar(13)")
	private String id;
	@Column(columnDefinition = "nvarchar(255)")
	private String location;
	@Column(columnDefinition = "nvarchar(255)")
	private String name;
}
