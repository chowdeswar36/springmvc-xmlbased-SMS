package com.cg.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cg.model.Student;
import com.cg.service.StudentDaoImpl;

@Controller
public class MyController {

	@Autowired
	StudentDaoImpl studaoimpl;

	public void setStudaoimpl(StudentDaoImpl studaoimpl) {
		this.studaoimpl = studaoimpl;
	}

	@RequestMapping("/viewForm")
	public String addStu() {
		return "stuform";
	}

	@RequestMapping("/saveStudents")
	public String saveStus(Student student, Model model) {
		studaoimpl.create(student);
		System.out.println("Record added with id :" + student.getStuid());
		return "redirect:/getStudents/1";
	}

	@RequestMapping("/getStudents/{pageid}")
	public String getAllStu(@PathVariable int pageid, Model model) {
		int total = 5;
		pageid = pageid * total - total;
		List<Student> list = studaoimpl.getAllStudents(pageid, total);
		model.addAttribute("list", list);
		return "viewstus";
	}

	@RequestMapping("/delStudent/{stuid}")
	public String deleteStu(@PathVariable("stuid") int stuid) {
		studaoimpl.delete(stuid);
		System.out.println("Record deleted with id :" + stuid);
		return "redirect:/getStudents/1";
	}

	@RequestMapping("/editStudent/{stuid}")
	public String updateStudent(@PathVariable("stuid") int stuid, Model model) {
		Student student = studaoimpl.findElementById(stuid);
		model.addAttribute("student", student);
		return "updateform";
	}

	@RequestMapping("/saveUpdates")
	public String saveUpdate(Student student) {
		studaoimpl.update(student);
		System.out.println("Record updated with id :" + student.getStuid());
		return "redirect:/getStudents/1";
	}

}