package demo;

import dao.PatientDao;
import db.Connect;
import enity.Patient;

public class Test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		//Connect c = new Connect();
		try {
			PatientDao pd=new PatientDao();
			Patient p=new Patient("a",20,"a", "a", "PT-2", "a", "a");
			boolean rs=pd.addPatient(p);
			System.out.println(rs);
		} catch (Exception e) {
			// TODO: handle exception
			System.err.println("Err"+e.getMessage());
		}
		
	}

}
