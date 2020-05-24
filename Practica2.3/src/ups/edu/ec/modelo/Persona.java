package ups.edu.ec.modelo;

import java.io.Serializable;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class Persona implements Serializable {

	private static final long serialVersionUID = 1L;
	
	@Id
	private String cedula;
	
	private String nombres;
	private String apellidos;
	
	@Column(unique=true,nullable =false)
	private String correo;
	
	@Column(nullable=false)
	private String contrasena;
	
	//private int activo;
	
	
	@OneToMany(cascade=CascadeType.ALL,mappedBy = "persona",orphanRemoval = true)
	private List<Telefono> lista;
	
	

	public Persona() {
	}

	public Persona(String cedula, String nombres, String apellidos, String correo, String contrasena) {
		this.cedula = cedula;
		this.nombres = nombres;
		this.apellidos = apellidos;
		this.correo = correo;
		this.contrasena = contrasena;
		//this.activo = activo;
	}

	public String getNombres() {
		return nombres;
	}

	public void setNombres(String nombres) {
		this.nombres = nombres;
	}

	public String getApellidos() {
		return apellidos;
	}

	public void setApellidos(String apellidos) {
		this.apellidos = apellidos;
	}

	public String getCedula() {
		return cedula;
	}

	public void setCedula(String cedula) {
		this.cedula = cedula;
	}

	public String getCorreo() {
		return correo;
	}

	public void setCorreo(String correo) {
		this.correo = correo;
	}

	public String getContrasena() {
		return contrasena;
	}

	public void setContrasena(String contrasena) {
		this.contrasena = contrasena;
	}

	//public int getActivo() {
		//return activo;
	//}

	//public void setActivo(int activo) {
		//this.activo = activo;
	//}

	public List<Telefono> getLista() {
		return lista;
	}

	public void setLista(List<Telefono> lista) {
		this.lista = lista;
	}
	
	///
	public void eliminarTelefono(Telefono telefono) {
		
		if(lista.contains(telefono)) {
			System.out.println("Se elimino");
			this.lista.remove(telefono);
			telefono.setPersona(null);
		}
	}

	///
	public void agregarTelefono(Telefono telefono) {
		if(!lista.contains(telefono)) {
			this.lista.add(telefono);
			telefono.setPersona(this);
		}
	}
	
	
	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		//result = prime * result + activo;
		result = prime * result + ((apellidos == null) ? 0 : apellidos.hashCode());
		result = prime * result + ((cedula == null) ? 0 : cedula.hashCode());
		result = prime * result + ((contrasena == null) ? 0 : contrasena.hashCode());
		result = prime * result + ((correo == null) ? 0 : correo.hashCode());
		//result = prime * result + ((lista == null) ? 0 : lista.hashCode());
		result = prime * result + ((nombres == null) ? 0 : nombres.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Persona other = (Persona) obj;
		//if (activo != other.activo)
			//return false;
		if (apellidos == null) {
			if (other.apellidos != null)
				return false;
		} else if (!apellidos.equals(other.apellidos))
			return false;
		if (cedula == null) {
			if (other.cedula != null)
				return false;
		} else if (!cedula.equals(other.cedula))
			return false;
		if (contrasena == null) {
			if (other.contrasena != null)
				return false;
		} else if (!contrasena.equals(other.contrasena))
			return false;
		if (correo == null) {
			if (other.correo != null)
				return false;
		} else if (!correo.equals(other.correo))
			return false;
		//if (lista == null) {
			//if (other.lista != null)
				//return false;
		//} else if (!lista.equals(other.lista))
		//	return false;
		if (nombres == null) {
			if (other.nombres != null)
				return false;
		} else if (!nombres.equals(other.nombres))
			return false;
		return true;
	}

	

	
}
