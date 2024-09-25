package com.example.model.controller;

import com.example.model.Entities.Employee;  
import com.example.model.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class EmployeeController {
    @Autowired
    private EmployeeService employeeService;

    @GetMapping("/empLogin")
    public String showEmployeeLogin() {
        return "empLogin"; // Return the JSP page for login
    }

    @PostMapping("/empLogin")
    public String loginEmployee(Employee employee, Model model) {
        Employee foundEmployee = employeeService.findEmployeeById(employee.getEmployeeId());
        if (foundEmployee != null && foundEmployee.getPassword().equals(employee.getPassword())) {
            // Successful login logic
            return "employeeDashboard"; // Redirect to employee dashboard
        } else {
            model.addAttribute("message", "Invalid credentials");
            return "empLogin"; // Return to login page with error message
        }
    }
}
