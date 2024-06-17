package com.project.maydemo.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.maydemo.model.Experience;
import com.project.maydemo.repository.Experrepo;




@Controller
public class ExperienceController {

	@Autowired
	Experrepo exr;
	
	
	@RequestMapping("/addexp")
	public String addExperience(@ModelAttribute Experience e)
	{
		System.out.println(e);	
		exr.save(e);
		return "demo.jsp";
	}
	
	
	@RequestMapping("/datafetch")
	public String fetch(Model m)
	{
		
		List<Experience> e_data=exr.findAll();
		
		System.out.println(e_data);
		m.addAttribute("data",e_data);
		
		return "datafetch.jsp";
		
	}
	
	@RequestMapping("/delete/{id}")
	public String delete(@PathVariable int id)
	{
		
		exr.deleteById(id);
		return "redirect:/datafetch";
		
	}
	
	@RequestMapping("/{id}")
	public String edit(@PathVariable int id,Model m)
	{
		Experience ob=exr.findById(id).orElse(null);
		m.addAttribute("edit_data",ob);
		return "edit.jsp";
		
	}
	@RequestMapping("/edit/{id}")
	public String update(@PathVariable int id, @ModelAttribute Experience ob)
	{
		Experience aa=exr.findById(id).orElse(null);
		
		if(aa!=null)
		{
			aa.setCompanyname(ob.getCompanyname());
			aa.setRole(ob.getRole());
			aa.setDateofjoining(ob.getDateofjoining());
			aa.setLastdate(ob.getLastdate());
			
			exr.save(aa);
		}
		return "redirect:/datafetch";
		
	}
	
	@RequestMapping("/home1")
	public String home1()
	{
		return "multi.jsp";
	}
	@RequestMapping("/add1")
	public String multidata(@RequestBody List<Experience> al)
	{
		exr.saveAll(al);
		return "redirect:/datafetch";
	}
}



