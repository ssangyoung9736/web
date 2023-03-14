package web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import web.vo.Emp;

@Controller
public class A01_EmpController {

	@Autowired
	private A02_EmpService service;
	// http://localhost:7080/web/empList.do
	@RequestMapping("/empList.do")
	public String getEmpList(@ModelAttribute("sch")Emp sch, Model d){
		d.addAttribute("empList", service.getEmpList(sch));
		return "a01_empList";
	}
}
