package interfacePakage;

import java.rmi.Remote;
import java.rmi.RemoteException;

import enity.Patient;

public interface InterfacePatient extends Remote {
	public boolean addPatient(Patient patient) throws RemoteException;
}
