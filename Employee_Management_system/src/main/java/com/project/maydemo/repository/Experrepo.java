package com.project.maydemo.repository;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.project.maydemo.model.Experience;


@Repository
public interface Experrepo extends JpaRepository<Experience, Integer>{

}



