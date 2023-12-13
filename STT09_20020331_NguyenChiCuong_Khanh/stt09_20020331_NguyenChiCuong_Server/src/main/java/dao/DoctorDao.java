package dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.naming.Context;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import db.Connect;
import enity.Doctor;

public class DoctorDao {
	private SessionFactory sessionFactory;
	private Session session;

	public DoctorDao() {
		sessionFactory = Connect.getInstance().getSessionFactory();
	}

	public List<Doctor> getDoctorsByDepartment(String deptName) {
		session = sessionFactory.getCurrentSession();
		Transaction tr = session.getTransaction();
		try {
			tr.begin();
			List<Doctor> doctors = session.createNativeQuery("select * from Doctor d where d.id in(\r\n"
					+ " select t.doctor_id from Department  dp inner join Treatment t on dp.id=t.department_id where d.name='"
					+ deptName + "')", Doctor.class).getResultList();
			tr.commit();
			return doctors;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			tr.rollback();
		}
		return null;
	}

	public Map<Doctor, Integer> getNoTreatmentByDoctor(int month, int year) {
		session = sessionFactory.getCurrentSession();
		Transaction tr = session.getTransaction();
		try {
			tr.begin();
			Map<Doctor, Integer> map = new HashMap<Doctor, Integer>();
			List<Object[]> objects = session.createNativeQuery(
					"    select t.doctor_id,count(*)  from [dbo].[Treatment] t where MONTH(t.startDate)=:month and YEAR(t.startDate)=:year group by t.doctor_id ",
					Object[].class).setParameter("month", month).setParameter("year", year).getResultList();
			for (Object[] o : objects) {
				map.put(session.find(Doctor.class, (String) o[0]), (Integer) o[1]);
			}
			tr.commit();
			return map;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			tr.rollback();
		}
		return null;

	}
}
