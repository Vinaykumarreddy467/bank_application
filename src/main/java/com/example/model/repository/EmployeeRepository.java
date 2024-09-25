package com.example.model.repository;

import com.example.model.model.Employee;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface EmployeeRepository extends JpaRepository<Employee, Integer> {
    com.example.model.Entities.Employee findByEmployeeId(String employeeId);

	
}
