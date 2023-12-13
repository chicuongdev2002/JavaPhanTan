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
import enity.Treatment;

public class Connect {
	private static Connect instance = null;
	private SessionFactory sessionFactory;
	private Session session;

	public Connect() {
		StandardServiceRegistry registry = new StandardServiceRegistryBuilder().configure().build();
		Metadata metadata = new MetadataSources(registry)
				.addAnnotatedClass(Patient.class)
				.addAnnotatedClass(Doctor.class)
				.addAnnotatedClass(Treatment.class)
				.addAnnotatedClass(Department.class)
				.getMetadataBuilder()
				.build();
		sessionFactory = metadata.getSessionFactoryBuilder().build();
		session = sessionFactory.getCurrentSession();
	}

	public static Connect getInstance() {
		if (instance == null)
			instance = new Connect();
		return instance;

	}

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}
}
