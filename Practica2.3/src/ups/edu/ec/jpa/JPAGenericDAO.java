package ups.edu.ec.jpa;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Persistence;

import ups.edu.ec.dao.GenericDAO;

public class JPAGenericDAO<T, ID> implements GenericDAO<T, ID> {

		private Class<T> persistenClass;
		protected EntityManager em;

		public JPAGenericDAO(Class<T> persistenClass) {
			this.persistenClass = persistenClass;
			this.em = Persistence.createEntityManagerFactory("jpa").createEntityManager();
		}

		@Override
		public boolean create(T entity) {
			// TODO Auto-generated method stub
			em.getTransaction().begin();
			try {
				em.persist(entity);
				em.getTransaction().commit();
				return true;
			} catch (Exception e) {
				System.out.println("Error.....JPAGenericDAO.create " + e);
				if (em.getTransaction().isActive()) {
					em.getTransaction().rollback();
				}

				return false;
			}

		}

		@Override
		public T findById(ID id) {
			// TODO Auto-generated method stub
			return em.find(persistenClass, id);

		}

		@Override
		public boolean update(T entity) {
			em.getTransaction().begin();
			try {
				em.persist(entity);
				em.getTransaction().commit();
				return true;
			} catch (Exception e) {
				System.out.println("Error.....JPAGenericDAO.update " + e);
				if (em.getTransaction().isActive()) {
					em.getTransaction().rollback();
				}
				return false;
			}
		}

		@Override
		public boolean delete(T entity) {
			em.getTransaction().begin();
			try {
				em.remove(entity);
				em.getTransaction().commit();
				return true;
			} catch (Exception e) {
				System.out.println("Error.....JPAGenericDAO.delete " + e);
				if (em.getTransaction().isActive()) {
					em.getTransaction().rollback();
				}

				return false;
			}
		}

		@Override
		public List<T> find() {
			// TODO Auto-generated method stub
			return null;
		}

		@Override
		public boolean deleteById(ID id) {
			T entity = this.findById(id);
			if (entity != null) {
				this.delete(entity);

			}
			return false;
		}


}
