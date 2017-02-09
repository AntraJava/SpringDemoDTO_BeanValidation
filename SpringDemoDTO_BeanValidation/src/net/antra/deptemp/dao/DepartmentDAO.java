package net.antra.deptemp.dao;

import java.util.List;

import net.antra.deptemp.entity.Department;

public interface DepartmentDAO {

	void save(Department dept);

	List<Department> findAllDepartments();

	List<Department> findBasicDeptInfo();

}
