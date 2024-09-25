package com.example.model.model;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class User {
    @Id
    private String employeeId;
    private String Password;
    public String getEmployeeId() {
		return employeeId;
	}
	public void setEmployeeId(String employeeId) {
		this.employeeId = employeeId;
	}
	public String getPassword() {
		return Password;
	}
	

	public void setPassword(String password) {
		Password = password;
	}

	@Override
	public String toString() {
		return "User [employeeId=" + employeeId + ", Password=" + Password + "]";
	}
	
}
