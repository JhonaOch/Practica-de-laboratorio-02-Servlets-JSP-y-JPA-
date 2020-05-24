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
 * Servlet implementation class Agenda
 */
@WebServlet("/Agenda")
public class Agenda extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Agenda() {
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
		String sesion = request.getParameter("logout");

		if (sesion != null) {
			if (sesion.equals("true")) {
				request.getSession().invalidate();
				response.sendRedirect("/Practica2.3/web/index.html");
			}
		} else {
			PersonaDAO personaDao = DAOFactory.getDAOFactory().getPersonaDAO();
			Persona user = personaDao.findById(String.valueOf(request.getSession().getAttribute("userID")));

			request.setAttribute("user", user);
			getServletContext().getRequestDispatcher("/web/private/Agenda.jsp").forward(request, response);
			System.out.println(request.getSession().getAttribute("userID"));
			System.out.println(user);
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
