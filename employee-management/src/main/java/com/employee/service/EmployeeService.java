package com.employee.service;

import java.util.List;
import com.employee.model.Employee;

public interface EmployeeService {
	void save(Employee emp);
    List<Employee> getAll();
    Employee getById(int id);
    void delete(int id);
    List<Employee> searchByName(String keyword);
}
