package rest;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
	@Path("/hellorest")
public class Rest {
	@GET
	@Produces(MediaType.TEXT_XML)
	public String sayHelloXML() {
		System.out.println("in XML");
		String response="<?xml version='1.0'?>"+
		"<hello>Hello Yatin</hello>";
		return response;
	}
}
