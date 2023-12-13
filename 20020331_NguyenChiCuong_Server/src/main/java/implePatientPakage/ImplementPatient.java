package implePatientPakage;

import java.rmi.RemoteException;
import java.rmi.server.UnicastRemoteObject;

import dao.PatientDao;
import enity.Patient;
import patientInterfacePakage.PatientInterface;

public class ImplementPatient extends UnicastRemoteObject implements PatientInterface {
	private PatientDao pd;

	public ImplementPatient() throws RemoteException {
		super();
		// TODO Auto-generated constructor stub
		pd = new PatientDao();
	}

	/**
	 * 
	 */
	private static final long serialVersionUID = -3865393300724736621L;

	@Override
	public boolean addPatient(Patient patient) throws RemoteException {
		// TODO Auto-generated method stub
		return pd.addPatient(patient);
	}

}
