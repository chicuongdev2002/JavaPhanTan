package dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import db.Connect;
import enity.Patient;

public class PatientDao {
	private SessionFactory sessionFactory;
	private Session session;

	public PatientDao() {
		sessionFactory = Connect.getInstance().getSessionFactory();
	}

	public boolean addPatient(Patient patient) {
		session = sessionFactory.getCurrentSession();
		Transaction tr = session.getTransaction();
		try {
			tr.begin();
			session.persist(patient);
			tr.commit();
			return true;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			tr.rollback();
		}
		return false;
	}
}
