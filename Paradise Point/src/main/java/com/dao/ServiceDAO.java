package com.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.model.CompKey;
import com.model.ServiceDTO;

public interface ServiceDAO extends JpaRepository<ServiceDTO, CompKey>{

	@Query("from ServiceDTO where partyid=:partyid")
	List<ServiceDTO> findByPartyId(@Param("partyid") int partyid);
	
}
