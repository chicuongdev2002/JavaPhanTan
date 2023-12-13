package server;

import java.rmi.RemoteException;
import java.rmi.registry.LocateRegistry;
import java.util.Hashtable;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;

import implementPakage.ImplementPatient;
import interfacePakage.InterfacePatient;

public class Server {

	public static void main(String[] args) throws RemoteException, NamingException {
		// TODO Auto-generated method stub
     Hashtable<String,String> evm=new Hashtable<String, String>();
     evm.put("java.security.policy","rmi/policy.policy");
     LocateRegistry.createRegistry(1234);
     Context context=new InitialContext(evm);
     InterfacePatient implementPatient=new ImplementPatient();
     context.bind("rmi://B111M01:1234/implementPatient", implementPatient);
     System.out.println("Server is ready");
	}

}
