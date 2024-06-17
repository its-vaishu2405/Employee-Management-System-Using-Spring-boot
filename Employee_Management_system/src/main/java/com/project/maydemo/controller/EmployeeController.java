package com.project.maydemo.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.maydemo.model.Employee;
import com.project.maydemo.repository.Emprepo;

@Controller
public class EmployeeController {

	
	@Autowired
	private Emprepo erepo;
	
	@GetMapping("/")
	public String showRegistrationForm()
	{
		return "Register.jsp";
	}
	
	@PostMapping("/Registration")
	public String registerEmployee(@ModelAttribute Employee employee)
	{
		erepo.save(employee);
		return "login.jsp";
	}


	@GetMapping("/login")
	public String login(@RequestParam String email,@RequestParam String Password)
	{
		System.out.println(email);
		System.out.println(Password);
		
		Employee ob=erepo.findByEmail(email);
		if(ob!=null && ob.getEmail().equalsIgnoreCase(email) && ob.getPassword().equals(Password))
		
		{
			return "welcome.jsp";
		}
		else
		{
			return "login.jsp";
		}
		
	}
}

