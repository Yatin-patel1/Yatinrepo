package com.infotech.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.infotech.dao.DAO;
import com.infotech.model.Stnt;
import com.infotech.service.StudentService;

@Service("studentService")
public class StudentServiceImpl implements StudentService {
	
	@Autowired
	private DAO dAO;
	
	public void setStudentDAO(DAO dAO) {
		this.dAO = dAO;
	}
	
	public DAO getStudentDAO() {
		return dAO;
	}
	
	@Override
	public boolean registerStudent(Stnt stnt) {
		boolean isRegister=false;
		boolean saveStudent = getStudentDAO().saveStudent(stnt);
		if(saveStudent)
			isRegister=true;
		return isRegister;
	}

	@Override
	public Stnt validateStudentCredential(String REGISTRATIONID, String REGFULLNAME) {
		Stnt stnt = getStudentDAO().getStudentDetailsByEmailAndPassword(REGISTRATIONID, REGFULLNAME);
		return stnt;
	}
}
