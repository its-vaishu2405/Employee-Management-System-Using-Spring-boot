package com.project.maydemo.repository;



import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.project.maydemo.model.Employee;



@Repository
public interface Emprepo extends JpaRepository<Employee, Integer> {

	Employee findByEmail(String email);

}



