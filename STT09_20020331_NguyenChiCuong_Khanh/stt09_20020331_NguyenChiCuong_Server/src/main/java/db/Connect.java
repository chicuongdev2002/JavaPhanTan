package db;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.Metadata;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;

import enity.Department;
import enity.Doctor;
import enity.Patient;
import enity.Person;
import enity.Treatment;

public class Connect {
	private static Connect instance = null;
	private SessionFactory sessionFactory;
	private Session session;

	public Connect() {
		StandardServiceRegistry registry = new StandardServiceRegistryBuilder().configure().build();
		Metadata metadata = new MetadataSources(registry)
				.addAnnotatedClass(Doctor.class)
				.addAnnotatedClass(Patient.class)
				.addAnnotatedClass(Treatment.class)
				.addAnnotatedClass(Department.class)
				.getMetadataBuilder().build();
		sessionFactory=metadata.buildSessionFactory();
		session=sessionFactory.getCurrentSession();
	}
	public static Connect getInstance() {
		if(instance==null)
			instance=new Connect();
		return instance;
	}
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}
}
