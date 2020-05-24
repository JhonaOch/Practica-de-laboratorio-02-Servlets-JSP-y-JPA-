package ups.edu.ec.dao;

import java.util.List;

import ups.edu.ec.modelo.Persona;

public interface PersonaDAO extends GenericDAO<Persona, String> {
    public abstract Persona findUser(String correo, String contrasena);
    public abstract List<Persona> findByIdOrMail(String context);
}