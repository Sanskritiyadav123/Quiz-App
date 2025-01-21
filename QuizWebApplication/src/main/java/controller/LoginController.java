package controller;
import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Reg;

import java.io.IOException;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginController() {
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
		PrintWriter out = response.getWriter();
	    
	    try
	    {
	      String email = request.getParameter("email");
	      String pass = request.getParameter("pwd");
	      
	      Reg r = new Reg();
	      boolean chk= r.checkUser(email, pass);
	      if(chk)
	      {
	        HttpSession session = request.getSession();
	        session.setAttribute("uname", r.getName());
	        session.setAttribute("email", email);
	        response.sendRedirect("Welcome.jsp");
	      }
	      else {
	      out.println("invalid id or password");
	    }
	    }
	    
	    catch(Exception ex)
	    {
	      out.println(ex);
	    }
	}
}
