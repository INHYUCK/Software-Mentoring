package net.skhu.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import net.skhu.dto.Employee;
import net.skhu.dto.Professor;
import net.skhu.dto.Student;
import net.skhu.repository.EmployeeRepository;
import net.skhu.repository.ProfessorRepository;
import net.skhu.repository.StudentRepository;

@Controller
@RequestMapping("admin")
public class AdminController {

	@Autowired StudentRepository studentRepository;
	@Autowired ProfessorRepository professorRepository;
	@Autowired EmployeeRepository employeeRepository;

	@RequestMapping("index")
	public String list(Model model){
		List<Student> stdList = studentRepository.findAll();
		List<Professor> profList = professorRepository.findAll();
		List<Employee> empList = employeeRepository.findAll();

		model.addAttribute("stdList", stdList);
		model.addAttribute("profList", profList);
		model.addAttribute("empList", empList);

		return "admin/index";
	}

}
