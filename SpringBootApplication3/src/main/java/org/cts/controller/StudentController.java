package org.cts.controller;

import javax.validation.Valid;

import org.cts.model.Student;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class StudentController {
	@GetMapping("/hello")
	public String showHome(Model model) {
		Student student = new Student();
		model.addAttribute(student);
		return "index";
	}

	@PostMapping("/processForm")
	public String processForm(@Valid @ModelAttribute("student") Student student, BindingResult result) {
		if (result.hasErrors()) {
			return "index";
		} else {
			return "student-confirm";
		}
	}
}