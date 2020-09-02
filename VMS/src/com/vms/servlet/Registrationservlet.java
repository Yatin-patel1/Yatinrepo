package com.vms.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.vms.ba.Registrationba;
import com.vms.dao.Registrationdao;

/**
 * Servlet implementation class Registrationservlet
 */
@WebServlet("/Registrationservlet")
public class Registrationservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Registrationservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		System.out.println("Registrationservlet post");
		String username= request.getParameter("uname");
		String password= request.getParameter("pwd");
		String email =request.getParameter("email");
		
		String loginname = request.getParameter("loginname");
        String loginpwd = request.getParameter("loginpwd");
        
        if(Registrationdao.checkUser(loginname, loginpwd))
        {
            RequestDispatcher rs = request.getRequestDispatcher("Welcome");
            rs.forward(request, response);
        }
        else
        {
           System.out.println("User may not exist!");
           RequestDispatcher rs = request.getRequestDispatcher("");
           rs.include(request, response);
        }
		PrintWriter writer  = response.getWriter();
		writer.println("Successful");
		Registrationba y1 = new Registrationba();
		y1.RegisterBA(username, password, email);
		
	}

	}

