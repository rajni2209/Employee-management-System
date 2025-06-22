package com.employee.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.employee.model.Employee;
import com.employee.service.EmployeeService;

@Controller
public class EmployeeController {
	
	@Autowired
	private EmployeeService employeeService;
	
	@GetMapping("/")
	public String home(Model model) {
		model.addAttribute("list", employeeService.getAll());
		return "list-employees";
	}
	
	@GetMapping("/add")
	public String showaddForm(Model model) {
		model.addAttribute("employee", new Employee());
		return "add-employees";
	}
	
	@PostMapping("/save")
	public String save(@ModelAttribute("employee") Employee emp) {
		employeeService.save(emp);
		return "redirect:/";
	}
	
	@RequestMapping("/cancel")
	public String cancel() {
		return "redirect:/";
	}
	
	
	@GetMapping("/edit/{id}")
	public String editEmployee(@PathVariable("id") int id, Model model) {
	    Employee emp = employeeService.getById(id);
	    model.addAttribute("employee", emp);
	    return "add-employees";
	}

	@GetMapping("/delete/{id}")
	public String deleteEmployee(@PathVariable("id") int id) {
	    employeeService.delete(id);
	    return "redirect:/";
	}
	
	@GetMapping("/search")
	public String search(@RequestParam("keyword") String keyword, Model model) {
	    List<Employee> result = employeeService.searchByName(keyword);
	    model.addAttribute("list", result);
	    return "list-employees";
	}
}
