package ups.edu.ec.jpa;

import java.util.ArrayList;
import java.util.List;

import ups.edu.ec.dao.PersonaDAO;
import ups.edu.ec.modelo.Persona;

public class JPAPersonaDAO extends JPAGenericDAO<Persona, String> implements PersonaDAO {

	public JPAPersonaDAO() {
		//super(user.class);
		super(Persona.class);
	}
	
	@Override
	public Persona findUser(String correo, String contrasena) {
		// TODO Auto-generated method stub
		System.out.println("Correo " + correo + " Contrasena " + contrasena);
		String  sql = "FROM Persona u WHERE u.correo = '" + correo + "' AND u.contrasena = '" + contrasena + "'";
		Persona user = (Persona) em.createQuery(sql).getSingleResult();
		user.getLista().size();
		return user;
	}

	@Override
	public List<Persona> findByIdOrMail(String context) {
		List<Persona> users = new ArrayList<>();//creo q sta mal
		if (context.equals("all")) {
			users = (List<Persona>) em.createQuery("FROM Persona u").getResultList();
		}else {
			String spql = "FROM Persona u WHERE u.cedula = '" + context + "' OR u.correo = '" + context + "'";
			users = (List<Persona>) em.createQuery(spql).getResultList();
		}
		return users;
	}

  
	
}