package web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import web.vo.Emp;
@Service
public class A02_EmpService {
	@Autowired
	private A03_EmpDao dao;
	public List<Emp> getEmpList(Emp sch){
		
		if(sch.getEname()==null) sch.setEname("");
		if(sch.getJob()==null) sch.setJob("");
		/*
		Emp sch2 = new Emp();
		if(sch.getEname()==null) {
			sch2.setEname("%"+sch.getEname()+"%");
		}
		if(sch.getJob()==null) {
			sch2.setJob("%%");
		}else {
			sch2.setJob("%"+sch.getJob()+"%");
		}
		*/
		return dao.getEmpList(sch);
	}
}
