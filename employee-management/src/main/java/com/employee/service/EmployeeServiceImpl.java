package com.employee.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.employee.dao.EmployeeDao;
import com.employee.model.Employee;

import jakarta.transaction.Transactional;

@Service
public class EmployeeServiceImpl implements EmployeeService{

	@Autowired
	private EmployeeDao employeeDao;
	
	@Override
	@Transactional
	public void save(Employee emp) {
		employeeDao.save(emp);
	}

	@Override
	@Transactional
	public List<Employee> getAll() {
		return employeeDao.getAll();
	}

	@Override
	@Transactional
	public Employee getById(int id) {
		return employeeDao.getById(id);
	}

	@Override
	@Transactional
	public void delete(int id) {
		employeeDao.delete(id);
	}
	
	@Override
	@Transactional
	public List<Employee> searchByName(String keyword) {
	    return employeeDao.searchByName(keyword);
	}
	
}
