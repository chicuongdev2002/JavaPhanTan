package client;

import java.net.MalformedURLException;
import java.rmi.Naming;
import java.rmi.NotBoundException;
import java.rmi.RemoteException;
import java.time.LocalDate;

import enity.Patient;
import interfacePakage.InterfacePatient;

public class Client {

	public static void main(String[] args) throws MalformedURLException, RemoteException, NotBoundException {
		// TODO Auto-generated method s
		InterfacePatient implementPatient = (InterfacePatient) Naming.lookup("rmi://B111M01:1234/implementPatient");
		// Cau a
	    Patient p=new Patient("000-00-1235","Nguyen Van A","0367483370","Nam",LocalDate.of(2002,04,11),"HCM");
		boolean rs=implementPatient.addPatient(p);
		System.out.println(rs);
	}

}
