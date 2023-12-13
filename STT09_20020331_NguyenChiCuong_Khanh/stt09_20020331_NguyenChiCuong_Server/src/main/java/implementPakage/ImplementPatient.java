package implementPakage;

import java.rmi.RemoteException;
import java.rmi.server.UnicastRemoteObject;

import dao.PatientDao;
import enity.Patient;
import interfacePakage.InterfacePatient;

public class ImplementPatient extends UnicastRemoteObject implements InterfacePatient {
 private PatientDao pd;
 
	public  ImplementPatient() throws RemoteException {
		super();
		// TODO Auto-generated constructor stub
		pd=new PatientDao();
	}

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	public boolean addPatient(Patient patient) throws RemoteException {
		// TODO Auto-generated method stub
		return pd.addPatient(patient);
	}

}
