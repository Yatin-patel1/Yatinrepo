package com.infotech.dao;

import com.infotech.model.Stnt;

public interface DAO {
	public abstract boolean saveStudent(Stnt stnt);
	public Stnt getStudentDetailsByEmailAndPassword(String REGISTRATIONID,String REGFULLNAME);
}
