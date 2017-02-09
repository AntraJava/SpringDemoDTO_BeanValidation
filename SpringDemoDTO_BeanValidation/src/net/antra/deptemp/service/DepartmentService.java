package net.antra.deptemp.service;

import java.util.List;

import net.antra.deptemp.entity.Department;

public interface DepartmentService {
	public void saveDept(Department dept);

	public List<Department> loadDeptDetails();

	public List<Department> loadDeptBasicInfo();

}
