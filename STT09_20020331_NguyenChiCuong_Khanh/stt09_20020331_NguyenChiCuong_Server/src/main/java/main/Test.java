package main;

import java.time.LocalDate;
import java.util.List;
import java.util.Map;

import dao.DoctorDao;
import dao.PatientDao;
import db.Connect;
import enity.Doctor;
import enity.Patient;

public class Test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		//Connect c = new Connect();
		//Cau a
//		PatientDao pd=new PatientDao();
//	    Patient p=new Patient("000-00-1234","Nguyen Chi Cuong","0367483370","Nam",LocalDate.of(2002,04,11),"HCM");
//		boolean rs=pd.addPatient(p);
		//Cau b
//		DoctorDao dd=new DoctorDao();
//		List<Doctor> list = dd.getDoctorsByDepartment("Stomatology");
//		list.forEach(e->System.out.println(e));
//		//Cau c
		DoctorDao dDao=new DoctorDao();
		Map<Doctor, Integer> map = dDao.getNoTreatmentByDoctor(9,2022);
		map.entrySet().forEach(e->{
			System.out.println("Doctor: "+e.getKey());
			System.out.println("NoTreatment: "+e.getValue());
		});
	}

}
