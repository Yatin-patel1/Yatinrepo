<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration Page</title>
<style type="text/css">
.error {
	color: red;
}
</style>
</head>
<body>
	<h3 align="center">${headerMessage}</h3>
	<form:form action="/SpringMVCFormValidation/registerSuccess"
		method="post" modelAttribute="student">
		<table align="center">
		<caption align="top">Student registration form</caption>
			<tr>
				<td>Enter REGISTRATION ID:</td>
				<td><form:input path="REGISTRATIONID" /></td>
				<td><form:errors path="REGISTRATIONID" cssClass="error"/></td>
			</tr>
			<tr>
				<td>Enter REG FULLNAME:</td>
				<td><form:password path="REGFULLNAME"/></td>
				<td><form:errors path="REGFULLNAME" cssClass="error"/></td>
			</tr>
			
			<tr>
				<td>Gender:</td>
				<td><form:radiobutton path="gender" value="Male" label="Male" />
					<form:radiobutton path="gender" value="Female" label="Female" /></td>
				<td><form:errors path="gender" cssClass="error" /></td>

			</tr>			

			<tr>
				<td>Enter REG CATEGORY:</td>
				<td><form:input path="REGCATEGORY"/></td>
				<td><form:errors path="REGCATEGORY" cssClass="error"/></td>

			</tr>
			
			<tr>
				<td>Enter REG PACKGE NAME:</td>
				<td><form:input path="REGPACKGENAME"/></td>
				<td><form:errors path="REGPACKGENAME" cssClass="error"/></td>
			</tr>

			

			<tr>
				<td>Enter REGISTRATION TYPE:</td>
				<td><form:input path="REGISTRANTTYPE"/></td>						
				<td><form:errors path="REGISTRANTTYPE" cssClass="error" /></td>

			</tr>

			<tr>
				<td>Enter PAYMENT MODE:</td>
				<td><form:input path="PAYMENTMODE"/></td>						
				<td><form:errors path="PAYMENTMODE" cssClass="error" /></td>
			</tr>
			
			<tr>
				<td>Enter REG ADDRESS 1:</td>
				<td><form:input path="REGADDRESS1"/></td>						
				<td><form:errors path="REGADDRESS1" cssClass="error" /></td>
			</tr>
			
			<tr>
				<td>Enter REG ADDRESS 2:</td>
				<td><form:input path="REGADDRESS2"/></td>						
				<td><form:errors path="REGADDRESS2" cssClass="error" /></td>
			</tr>
			
			<tr>
				<td>Enter REG ADDRESS STATE:</td>
				<td><form:input path="REGADDRESSSTATE"/></td>						
				<td><form:errors path="REGADDRESSSTATE" cssClass="error" /></td>
			</tr>
			
			<tr>
				<td>Enter REG ADDRESS ZIP:</td>
				<td><form:input path="REGADDRESSZIP"/></td>						
				<td><form:errors path="REGADDRESSZIP" cssClass="error" /></td>
			</tr>
			
			<tr>
				<td>Enter KERALA HOME DIST:</td>
				<td><form:input path="KERALAHOMEDIST"/></td>						
				<td><form:errors path="KERALAHOMEDIST" cssClass="error" /></td>
			</tr>
			
			<tr>
				<td>Enter TREASURER ACCNT LINK:</td>
				<td><form:input path="TREASURERACCNTLINK"/></td>						
				<td><form:errors path="TREASURERACCNTLINK" cssClass="error" /></td>
			</tr>
			
			<tr>
				<td>Enter ROOM ID:</td>
				<td><form:input path="ROOMID"/></td>						
				<td><form:errors path="ROOMID" cssClass="error" /></td>
			</tr>
			
			<tr>
				<td>Enter ROOM FLOOR:</td>
				<td><form:input path="ROOMFLOOR"/></td>						
				<td><form:errors path="ROOMFLOOR" cssClass="error" /></td>
			</tr>
			
			<tr>
				<td>Enter ROOM SPECIAL INSTR:</td>
				<td><form:input path="ROOMSPECIALINSTR"/></td>						
				<td><form:errors path="ROOMSPECIALINSTR" cssClass="error" /></td>
			</tr>
			
			<tr>
				<td>Enter EXTENDED STAY:</td>
				<td><form:input path="EXTENDEDSTAY"/></td>						
				<td><form:errors path="EXTENDEDSTAY" cssClass="error" /></td>
			</tr>
			
			<tr>
				<td>Enter ROOM START DATE:</td>
				<td><form:input path="ROOMSTARTDATE"/></td>						
				<td><form:errors path="ROOMSTARTDATE" cssClass="error" /></td>
			</tr>
			
			<tr>
				<td>Enter ROOM END DATE:</td>
				<td><form:input path="ROOMENDDATE"/></td>						
				<td><form:errors path="ROOMENDDATE" cssClass="error" /></td>
			</tr>
			
			<tr>
				<td>Enter FOOD ALLERGY:</td>
				<td><form:input path="FOODALLERGY"/></td>						
				<td><form:errors path="FOODALLERGY" cssClass="error" /></td>
			</tr>
			
			<tr>
				<td>Enter COMMENTS:</td>
				<td><form:input path="COMMENTS"/></td>						
				<td><form:errors path="COMMENTS" cssClass="error" /></td>
			</tr>
			
			<tr>
				<td>Enter SOUVENIR DONATION:</td>
				<td><form:input path="SOUVENIRDONATION"/></td>						
				<td><form:errors path="SOUVENIRDONATION" cssClass="error" /></td>
			</tr>
			
			<tr>
				<td>Enter DONATION:</td>
				<td><form:input path="DONATION"/></td>						
				<td><form:errors path="DONATION" cssClass="error" /></td>
			</tr>
			
			<tr>
				<td>Enter TRAVEL ITENARARY:</td>
				<td><form:input path="TRAVELITENARARY"/></td>						
				<td><form:errors path="TRAVELITENARARY" cssClass="error" /></td>
			</tr>
			
			<tr>
				<td>Enter CUSTOM FLD 2:</td>
				<td><form:input path="CUSTOMFLD2"/></td>						
				<td><form:errors path="CUSTOMFLD2" cssClass="error" /></td>
			</tr>
			
			<tr>
				<td>Enter CUSTOM FLD 3:</td>
				<td><form:input path="CUSTOMFLD3"/></td>						
				<td><form:errors path="CUSTOMFLD3" cssClass="error" /></td>
			</tr>
			
			<tr>
				<td><input type="submit" value="Register"></td>
			</tr>
		</table>

	</form:form>

</body>
</html>