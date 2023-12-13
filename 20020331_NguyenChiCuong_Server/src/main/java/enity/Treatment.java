package enity;

import java.io.Serializable;
import java.util.Date;

import javax.print.Doc;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "Treatment")
public class Treatment implements Serializable {
	@Column(columnDefinition = "nvarchar")
	private String description;
	@Column(columnDefinition = "datetime")
	private Date endDate;
	@Column(columnDefinition = "datetime")
	private Date startDate;
	@Id
	@ManyToOne
	@JoinColumn(name="doctorID")
	private Doctor doctor;
	@Id
	@ManyToOne
	@JoinColumn(name="patientID")
	private Patient patient;
}
