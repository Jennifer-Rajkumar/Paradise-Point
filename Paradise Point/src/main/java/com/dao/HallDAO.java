package com.dao;

import java.sql.Date;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.data.repository.query.Param;

import com.model.HallDTO;

public interface HallDAO extends JpaRepository<HallDTO, Integer>{
	
}
