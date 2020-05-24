package ups.edu.ec.jpa;

import java.util.List;

import ups.edu.ec.dao.TelefonoDAO;
import ups.edu.ec.modelo.Telefono;

public class JPATelefonoDAO extends JPAGenericDAO<Telefono, Integer> implements TelefonoDAO {

	public JPATelefonoDAO() {
		// TODO Auto-generated constructor stub
		super(Telefono.class);
	}
	
	@Override
	public List<Telefono> findByPersonaId(String cedula) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Telefono> findBySearchTelf(String cedula, String numero) {
		// TODO Auto-generated method stub
		return null;
	}
}
