package server;

import java.rmi.RemoteException;
import java.rmi.registry.LocateRegistry;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;

import implePatientPakage.ImplementPatient;
import patientInterfacePakage.PatientInterface;

public class Server {

	public static void main(String[] args) throws RemoteException, NamingException {
		// TODO Auto-generated method stub
		LocateRegistry.createRegistry(2424);
		Context context = new InitialContext();
		PatientInterface implementPatient = new ImplementPatient();
		context.bind("rmi://CuongDev:2424/implementPatient", implementPatient);
		System.out.println("Server is ready");
	}

}
