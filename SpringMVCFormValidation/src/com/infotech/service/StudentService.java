package com.infotech.service;

import com.infotech.model.Stnt;

public interface StudentService {
	public abstract Stnt validateStudentCredential(String REGISTRATIONID,	String REGFULLNAME);
	public abstract boolean registerStudent(Stnt stnt);

}