package ups.edu.ec.dao;



public abstract class DAOFactory {
	protected static DAOFactory factory = new JPADAOFactory();

	public static DAOFactory getDAOFactory() {
		return factory;
	}

//	public abstract void createTables();

	public abstract TelefonoDAO getTelefonoDAO();

	public abstract PersonaDAO getPersonaDAO();
		// TODO Auto-generated method stub

	

}
