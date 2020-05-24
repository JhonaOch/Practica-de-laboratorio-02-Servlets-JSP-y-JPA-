package ups.edu.ec.dao;




import ups.edu.ec.jpa.JPAPersonaDAO;
import ups.edu.ec.jpa.JPATelefonoDAO;


public  class JPADAOFactory extends DAOFactory{

	

	@Override
	public PersonaDAO getPersonaDAO() {
		// TODO Auto-generated method stub
		return new JPAPersonaDAO();
	}

	@Override
	public TelefonoDAO getTelefonoDAO() {
		// TODO Auto-generated method stub
		return new JPATelefonoDAO();
	}

	


	

	

	

    
    
}
