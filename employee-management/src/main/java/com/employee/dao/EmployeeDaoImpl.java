package com.employee.dao;

import java.util.List;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.employee.model.Employee;
import org.hibernate.SessionFactory;
import jakarta.transaction.Transactional;

@Repository
public class EmployeeDaoImpl implements EmployeeDao {
	
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	@Transactional
	public void save(Employee emp) {
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(emp);
	}

	@Override
	@Transactional
	public List<Employee> getAll() {
		Session session = sessionFactory.getCurrentSession();
		return session.createQuery("from Employee",Employee.class).list();
	}

	@Override
	@Transactional
	public Employee getById(int id) {
		Session session = sessionFactory.getCurrentSession();
		return session.get(Employee.class, id);
	}

	@Override
	@Transactional
	public void delete(int id) {
		Session session = sessionFactory.getCurrentSession();
		Employee emp = session.get(Employee.class, id);
		if(emp != null) {
			session.delete(emp);
		}
	}

	@Override
	@Transactional
	public List<Employee> searchByName(String keyword) {
	    Session session = sessionFactory.getCurrentSession();

	    String queryStr = "FROM Employee WHERE lower(name) LIKE :keyword";
	    return session.createQuery(queryStr, Employee.class)
	                  .setParameter("keyword", "%" + keyword.toLowerCase() + "%")
	                  .getResultList();
	}
	
}
