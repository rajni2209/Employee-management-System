package com.employee.dao;

import java.util.List;
import com.employee.model.Employee;

public interface EmployeeDao {
	public void save(Employee emp);
	public List<Employee> getAll();
	public Employee getById(int id);
	public void delete(int id);	
	public List<Employee> searchByName(String keyword);
}
