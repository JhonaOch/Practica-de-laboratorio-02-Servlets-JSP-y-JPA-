package ups.edu.ec.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ups.edu.ec.dao.DAOFactory;
import ups.edu.ec.dao.PersonaDAO;
import ups.edu.ec.modelo.Persona;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Login() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String mail = request.getParameter("correo");
		String pass = request.getParameter("password");

		PersonaDAO personaDao = DAOFactory.getDAOFactory().getPersonaDAO();
		Persona persona = personaDao.findUser(mail, pass);
		if (persona != null) {
			System.out.println("usuario encontrado");
			HttpSession session = request.getSession(true);

			System.out.println("Sesion iniciada" + request.getSession().getId());

			session.setAttribute("sesionID", String.valueOf(session.getId()));
			session.setAttribute("userID", persona.getCedula());

			response.sendRedirect("/Practica2.3/Agenda");

			System.out.println(mail + pass);

		} else {
			System.out.println("usuario NOOOOO encontrado");
			// response.sendRedirect("login");
		}
	}

}
