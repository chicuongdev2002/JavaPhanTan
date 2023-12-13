package client;

import java.net.MalformedURLException;
import java.rmi.Naming;
import java.rmi.NotBoundException;
import java.rmi.RemoteException;

import enity.Patient;
import patientInterfacePakage.PatientInterface;

public class Client {

	public static void main(String[] args) throws MalformedURLException, RemoteException, NotBoundException {
		// TODO Auto-generated method stub
		PatientInterface implementPatient = (PatientInterface) Naming.lookup("rmi://CuongDev:2424/implementPatient");
		try {
			Patient p=new Patient("a",20,"a", "a", "PT-3", "a", "a");
			boolean rs=implementPatient.addPatient(p);
			System.out.println(rs);
		} catch (Exception e) {
			// TODO: handle exception
			System.err.println("Err"+e.getMessage());
		}
	}

}
