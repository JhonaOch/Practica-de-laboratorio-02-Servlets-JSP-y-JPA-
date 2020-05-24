package ups.edu.ec.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ups.edu.ec.dao.DAOFactory;
import ups.edu.ec.dao.TelefonoDAO;
import ups.edu.ec.modelo.Persona;
import ups.edu.ec.modelo.Telefono;

/**
 * Servlet implementation class Editar
 */
@WebServlet("/Editar")
public class Editar extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Editar() {
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

		String sesion = request.getParameter("delete");
		String id = request.getParameter("idTelefono");
		if (sesion != null && id != null) {
			if (sesion.equals("true")) {

				TelefonoDAO phoneDao = DAOFactory.getDAOFactory().getTelefonoDAO();
				Telefono phone = phoneDao.findById(Integer.parseInt(id));

				System.out.println("telefono a eliminar.. " + id);

				Persona user = DAOFactory.getDAOFactory().getPersonaDAO()
						.findById(String.valueOf(request.getSession().getAttribute("userID")));
				phone.setPersona(user);
				phoneDao.delete(phone);

				response.sendRedirect("Agenda");
			}
		} else {
		}
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
		String idTelefono = request.getParameter("idtel");

		TelefonoDAO phoneDao = DAOFactory.getDAOFactory().getTelefonoDAO();
		Telefono phone = phoneDao.findById(Integer.parseInt(idTelefono));
		Persona user = DAOFactory.getDAOFactory().getPersonaDAO()
				.findById(String.valueOf(request.getSession().getAttribute("userID")));
		phone.setPersona(user);
		;
		phone.setNumero(numero);
		phone.setTipo(tipo);
		phone.setOperadora(operadora);

		phoneDao.update(phone);

		response.sendRedirect("Agenda");

	}

}
