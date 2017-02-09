package net.antra.deptemp.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import net.antra.deptemp.entity.Department;

@Repository//use Repository to indicate a DAO layer
public class DepartmentDAOImpl implements DepartmentDAO{
	
	
	// EntityManagerFactory will create entitymanager for each thread.
	// Spring will inject a proxy here.
	@PersistenceContext 
	EntityManager em;

	@Override
	public void save(Department dept) {
		em.persist(dept); // the dept object will be in attached status.
	}

	@Override
	public List<Department> findAllDepartments() {// use JOIN FETCH to make the list loaded eagerly.  FetchType is lazy in the entity.
		Query query = em.createQuery("select DISTINCT OBJECT(d) from Department d LEFT OUTER JOIN FETCH d.employeeList");
		return query.getResultList();
	}

	@Override
	public List<Department> findBasicDeptInfo() {// or simple 'select d from Department d';
		Query query = em.createQuery("select DISTINCT OBJECT(d) from Department d ");
		return query.getResultList();
	}
	
}
