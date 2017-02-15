package net.antra.deptemp.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseStatus;

import net.antra.deptemp.entity.Department;
import net.antra.deptemp.service.DepartmentService;
import net.antra.deptemp.vo.DeptVO;
import net.antra.deptemp.vo.DeptValidator;

@Controller
public class DeptController {
	
	@Autowired
	DepartmentService deptService;
	
	@RequestMapping("/viewDept")
	public String showDept(ModelMap model) {
		
		model.addAttribute("deptList", deptService.loadDeptBasicInfo());
		return "dept";
	}

	@RequestMapping("/manageDept")
	public String showManageDept(@ModelAttribute("department") DeptVO department) {
		department.setName("1");
		return "manageDept";
	}

	@Autowired
	DeptValidator dValidator;
	
	@RequestMapping(value = "/addDept",method = RequestMethod.POST)
	public String showAddDept(@ModelAttribute("department") @Valid DeptVO department, BindingResult res, Error error,ModelMap model) {// @Valid DeptVO dept,
		//deptService.saveDept(dept);
		//dValidator.validate(department, res);
		if(res.hasErrors()){
			model.addAttribute("fail", "Sorry, it failed to add a department.");
		}else{
			model.addAttribute("success", "Successfully add a department.");
//			throw new RuntimeException();
		}

		return "manageDept";
	}
	@ExceptionHandler(Exception.class)
    //@ResponseStatus(value = HttpStatus.BAD_REQUEST)
    public String handleValidationException(Exception e){
        
        return "error";
    }
}
