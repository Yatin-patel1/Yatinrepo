package com.infotech.model;

import org.hibernate.validator.constraints.NotEmpty;

public class Credential {

	@NotEmpty
	private String REGISTRATIONID;
	
	@NotEmpty
	private String REGFULLNAME;

	public String getREGISTRATIONID() {
		return REGISTRATIONID;
	}

	public void setREGISTRATIONID(String rEGISTRATIONID) {
		REGISTRATIONID = rEGISTRATIONID;
	}

	public String getREGFULLNAME() {
		return REGFULLNAME;
	}

	public void setREGFULLNAME(String rEGFULLNAME) {
		REGFULLNAME = rEGFULLNAME;
	}

	

	
}
