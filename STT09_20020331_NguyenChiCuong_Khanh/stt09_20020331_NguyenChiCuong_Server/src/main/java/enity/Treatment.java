package enity;

import java.io.Serializable;
import java.time.LocalDate;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "Treatment")
public class Treatment implements Serializable {
	@Id
	@Column(columnDefinition = "date")
	private LocalDate startDate;
	@Column(columnDefinition = "date")
	private LocalDate endDate;
	@Column(columnDefinition = "varchar(255)")
	private String diagnosis;
	@ManyToOne
	@JoinColumn(name="doctor_id")
	private Doctor doctor;
	@Id
	@ManyToOne
	@JoinColumn(name="patient_id")
	private Patient patient;
	@Id
	@ManyToOne
	@JoinColumn(name="department_id")
	private Department department;
	public Treatment() {
		super();
	}
	public Treatment(LocalDate startDate, LocalDate endDate, String diagnosis, Doctor doctor, Patient patient,
			Department department) {
		super();
		this.startDate = startDate;
		this.endDate = endDate;
		this.diagnosis = diagnosis;
		this.doctor = doctor;
		this.patient = patient;
		this.department = department;
	}
	public LocalDate getStartDate() {
		return startDate;
	}
	public void setStartDate(LocalDate startDate) {
		this.startDate = startDate;
	}
	public LocalDate getEndDate() {
		return endDate;
	}
	public void setEndDate(LocalDate endDate) {
		this.endDate = endDate;
	}
	public String getDiagnosis() {
		return diagnosis;
	}
	public void setDiagnosis(String diagnosis) {
		this.diagnosis = diagnosis;
	}
	public Doctor getDoctor() {
		return doctor;
	}
	public void setDoctor(Doctor doctor) {
		this.doctor = doctor;
	}
	public Patient getPatient() {
		return patient;
	}
	public void setPatient(Patient patient) {
		this.patient = patient;
	}
	public Department getDepartment() {
		return department;
	}
	public void setDepartment(Department department) {
		this.department = department;
	}
	@Override
	public String toString() {
		return "Treatment [startDate=" + startDate + ", endDate=" + endDate + ", diagnosis=" + diagnosis + ", doctor="
				+ doctor + ", patient=" + patient + ", department=" + department + "]";
	}
	
}
