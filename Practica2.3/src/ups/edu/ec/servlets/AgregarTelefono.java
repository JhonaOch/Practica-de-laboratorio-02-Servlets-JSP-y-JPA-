package ups.edu.ec.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ups.edu.ec.dao.DAOFactory;
import ups.edu.ec.dao.PersonaDAO;
import ups.edu.ec.dao.TelefonoDAO;
import ups.edu.ec.modelo.Persona;
import ups.edu.ec.modelo.Telefono;

/**
 * Servlet implementation class AgregarTelefono
 */
@WebServlet("/AgregarTelefono")
public class AgregarTelefono extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AgregarTelefono() {
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

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		String numero = request.getParameter("numero");
		String tipo = request.getParameter("tipo");
		String operadora = request.getParameter("operadora");
		//String persona=request.getParameter("persona");

		//TelefonoDAO telefonoDao = DAOFactory.getDAOFactory().getTelefonoDAO();
		PersonaDAO userDAO=DAOFactory.getDAOFactory().getPersonaDAO();
		Persona user = userDAO.findById(String.valueOf(request.getSession().getAttribute("userID")));
				
		Telefono telefono = new Telefono(numero, tipo, operadora,user);
		
		user.agregarTelefono(telefono);
		userDAO.update(user);//
		//PersonaDAO userDAO=DAOFactory.getDAOFactory().getPersonaDAO();

		
		//telefono.setPersona(persona);
		
		///persona.agregarTelefono(telefono);
		// userDAO.update(persona);
		  //telefono.setPersona(persona);
		//telefonoDao.create(telefono);

		response.sendRedirect("Agenda");

	}

}
