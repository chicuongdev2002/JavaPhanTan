package patientInterfacePakage;

import java.rmi.Remote;
import java.rmi.RemoteException;

import enity.Patient;

public interface PatientInterface extends Remote {
	public boolean addPatient(Patient patient)throws RemoteException; 
}
