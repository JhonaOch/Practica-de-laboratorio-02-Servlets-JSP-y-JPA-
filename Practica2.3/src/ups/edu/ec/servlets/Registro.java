package ups.edu.ec.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ups.edu.ec.dao.DAOFactory;
import ups.edu.ec.dao.PersonaDAO;
import ups.edu.ec.modelo.Persona;

/**
 * Servlet implementation class Registro
 */
@WebServlet("/Registro")
public class Registro extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Registro() {
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
		doGet(request, response);

		String cedula = request.getParameter("cedula");
		String nombres = request.getParameter("nombres");
		String apellidos = request.getParameter("apellidos");
		String correo = request.getParameter("correo");
		String contrasena = request.getParameter("password");
		//int activo = 1;

		System.out.println("Nombre:" + cedula + "  Persona:" + nombres + "   Apellido:" + apellidos + "  Correo:"
				+ correo + " Contrasena " + contrasena);

		//DAOFactory.getDAOFactory().createTables();
		PersonaDAO personaDao = DAOFactory.getDAOFactory().getPersonaDAO();
		Persona persona = new Persona(cedula, nombres, apellidos, correo, contrasena);

		if (personaDao.create(persona)) {
			response.sendRedirect("/Practica2.3/web/public/Login.html");
			System.out.println("Usuario Creado");

		} else {
			System.out.println("Usuario No Creado");
			response.sendRedirect("Registro");
		}

	}

}
