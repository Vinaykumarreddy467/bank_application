package com.example.model.service;

import com.example.model.Entities.Employee;  
import com.example.model.repository.EmployeeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class EmployeeService {
    @Autowired
    private EmployeeRepository employeeRepository;

    public Employee findEmployeeById(String employeeId) {
        return employeeRepository.findByEmployeeId(employeeId);
    }

//    public void saveEmployee(Employee employee) {
//        employeeRepository.save(employee);
//        
//    }
}
