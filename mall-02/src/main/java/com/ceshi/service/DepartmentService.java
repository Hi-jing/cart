package com.ceshi.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ceshi.bean.Department;
import com.ceshi.dao.DepartmentMapper;

@Service
public class DepartmentService {

	
	@Autowired
	DepartmentMapper departmentMapper;
	
	
	public List<Department> getDepts() {
		
		List<Department> list = departmentMapper.selectByExample(null);
		return list;
	}

}
