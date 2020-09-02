package com.infotech.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name = "KHNA")
public class Stnt {

	//@Id
	//@GeneratedValue(strategy = GenerationType.AUTO)
	//@Column(name = "id")
	//private int id;
	
	@NotEmpty
	@Column(name = "REGISTRATIONID")
	private String REGISTRATIONID;
	
	@NotEmpty
	@Column(name = "REGFULLNAME")
	private String REGFULLNAME;
	
	
	@NotNull
	@Column(name = "GENDER")
	private String GENDER;
	
	@NotEmpty
	@Column(name = "REGCATEGORY")
	private String REGCATEGORY;
	
	@NotEmpty
	@Column(name = "REGPACKGENAME")
	private String REGPACKGENAME;
	
	@NotEmpty
	@Column(name = "REGISTRANTTYPE")
	private String REGISTRANTTYPE;
	
	@NotEmpty
	@Column(name = "PAYMENTMODE")
	private String PAYMENTMODE;
	
	@NotEmpty
	@Column(name = "REGADDRESS1")
	private String REGADDRESS1;
	
	@NotEmpty
	@Column(name = "REGADDRESS2")
	private String REGADDRESS2;
	
	@NotEmpty
	@Column(name = "REGADDRESSSTATE")
	private String REGADDRESSSTATE;
	
	@NotEmpty
	@Column(name = "REGADDRESSZIP")
	private String REGADDRESSZIP;
	
	@NotEmpty
	@Column(name = "KERALAHOMEDIST")
	private String KERALAHOMEDIST;
	
	@NotEmpty
	@Column(name = "TREASURERACCNTLINK")
	private String TREASURERACCNTLINK;
	
	@NotEmpty
	@Column(name = "ROOMID")
	private String ROOMID;
	
	@NotEmpty
	@Column(name = "ROOMFLOOR")
	private String ROOMFLOOR;
	
	@NotEmpty
	@Column(name = "ROOMSPECIALINSTR")
	private String ROOMSPECIALINSTR;
	
	@NotEmpty
	@Column(name = "EXTENDEDSTAY")
	private String EXTENDEDSTAY;
	
	@NotEmpty
	@Column(name = "ROOMSTARTDATE")
	private String ROOMSTARTDATE;
	
	@NotEmpty
	@Column(name = "ROOMENDDATE")
	private String ROOMENDDATE;
	
	@NotEmpty
	@Column(name = "FOODALLERGY")
	private String FOODALLERGY;
	
	@NotEmpty
	@Column(name = "COMMENTS")
	private String COMMENTS;
	
	
	@NotEmpty
	@Column(name = "SOUVENIRDONATION")
	private String SOUVENIRDONATION;
	
	@NotEmpty
	@Column(name = "DONATION")
	private String DONATION;
	
	@NotEmpty
	@Column(name = "TRAVELITENARARY")
	private String TRAVELITENARARY;
	
	@NotEmpty
	@Column(name = "CUSTOMFLD2")
	private String CUSTOMFLD2;
	
	@NotEmpty
	@Column(name = "CUSTOMFLD3")
	private String CUSTOMFLD3;
	//@NotNull
	//@Min(value = 1000000000)
	//@Column(name = "phone")
	//private Long phone;

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

	public String getGENDER() {
		return GENDER;
	}

	public void setGENDER(String gENDER) {
		GENDER = gENDER;
	}

	public String getREGCATEGORY() {
		return REGCATEGORY;
	}

	public void setREGCATEGORY(String rEGCATEGORY) {
		REGCATEGORY = rEGCATEGORY;
	}

	public String getREGPACKGENAME() {
		return REGPACKGENAME;
	}

	public void setREGPACKGENAME(String rEGPACKGENAME) {
		REGPACKGENAME = rEGPACKGENAME;
	}

	public String getREGISTRANTTYPE() {
		return REGISTRANTTYPE;
	}

	public void setREGISTRANTTYPE(String rEGISTRANTTYPE) {
		REGISTRANTTYPE = rEGISTRANTTYPE;
	}

	public String getPAYMENTMODE() {
		return PAYMENTMODE;
	}

	public void setPAYMENTMODE(String pAYMENTMODE) {
		PAYMENTMODE = pAYMENTMODE;
	}

	public String getREGADDRESS1() {
		return REGADDRESS1;
	}

	public void setREGADDRESS1(String rEGADDRESS1) {
		REGADDRESS1 = rEGADDRESS1;
	}

	public String getREGADDRESS2() {
		return REGADDRESS2;
	}

	public void setREGADDRESS2(String rEGADDRESS2) {
		REGADDRESS2 = rEGADDRESS2;
	}

	public String getREGADDRESSSTATE() {
		return REGADDRESSSTATE;
	}

	public void setREGADDRESSSTATE(String rEGADDRESSSTATE) {
		REGADDRESSSTATE = rEGADDRESSSTATE;
	}

	public String getREGADDRESSZIP() {
		return REGADDRESSZIP;
	}

	public void setREGADDRESSZIP(String rEGADDRESSZIP) {
		REGADDRESSZIP = rEGADDRESSZIP;
	}

	public String getKERALAHOMEDIST() {
		return KERALAHOMEDIST;
	}

	public void setKERALAHOMEDIST(String kERALAHOMEDIST) {
		KERALAHOMEDIST = kERALAHOMEDIST;
	}

	public String getTREASURERACCNTLINK() {
		return TREASURERACCNTLINK;
	}

	public void setTREASURERACCNTLINK(String tREASURERACCNTLINK) {
		TREASURERACCNTLINK = tREASURERACCNTLINK;
	}

	public String getROOMID() {
		return ROOMID;
	}

	public void setROOMID(String rOOMID) {
		ROOMID = rOOMID;
	}

	public String getROOMFLOOR() {
		return ROOMFLOOR;
	}

	public void setROOMFLOOR(String rOOMFLOOR) {
		ROOMFLOOR = rOOMFLOOR;
	}

	public String getROOMSPECIALINSTR() {
		return ROOMSPECIALINSTR;
	}

	public void setROOMSPECIALINSTR(String rOOMSPECIALINSTR) {
		ROOMSPECIALINSTR = rOOMSPECIALINSTR;
	}

	public String getEXTENDEDSTAY() {
		return EXTENDEDSTAY;
	}

	public void setEXTENDEDSTAY(String eXTENDEDSTAY) {
		EXTENDEDSTAY = eXTENDEDSTAY;
	}

	public String getROOMSTARTDATE() {
		return ROOMSTARTDATE;
	}

	public void setROOMSTARTDATE(String rOOMSTARTDATE) {
		ROOMSTARTDATE = rOOMSTARTDATE;
	}

	public String getROOMENDDATE() {
		return ROOMENDDATE;
	}

	public void setROOMENDDATE(String rOOMENDDATE) {
		ROOMENDDATE = rOOMENDDATE;
	}

	public String getFOODALLERGY() {
		return FOODALLERGY;
	}

	public void setFOODALLERGY(String fOODALLERGY) {
		FOODALLERGY = fOODALLERGY;
	}

	public String getCOMMENTS() {
		return COMMENTS;
	}

	public void setCOMMENTS(String cOMMENTS) {
		COMMENTS = cOMMENTS;
	}

	public String getSOUVENIRDONATION() {
		return SOUVENIRDONATION;
	}

	public void setSOUVENIRDONATION(String sOUVENIRDONATION) {
		SOUVENIRDONATION = sOUVENIRDONATION;
	}

	public String getDONATION() {
		return DONATION;
	}

	public void setDONATION(String dONATION) {
		DONATION = dONATION;
	}

	public String getTRAVELITENARARY() {
		return TRAVELITENARARY;
	}

	public void setTRAVELITENARARY(String tRAVELITENARARY) {
		TRAVELITENARARY = tRAVELITENARARY;
	}

	public String getCUSTOMFLD2() {
		return CUSTOMFLD2;
	}

	public void setCUSTOMFLD2(String cUSTOMFLD2) {
		CUSTOMFLD2 = cUSTOMFLD2;
	}

	public String getCUSTOMFLD3() {
		return CUSTOMFLD3;
	}

	public void setCUSTOMFLD3(String cUSTOMFLD3) {
		CUSTOMFLD3 = cUSTOMFLD3;
	}

	
}
