package com.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.stereotype.Repository;
import com.model.PartyDTO;

public interface PartyDAO extends JpaRepository<PartyDTO, Integer>{
}
