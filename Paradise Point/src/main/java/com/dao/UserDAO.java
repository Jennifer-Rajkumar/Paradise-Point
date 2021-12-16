package com.dao;


import org.springframework.data.jpa.repository.JpaRepository;

import com.model.UserDTO;

public interface UserDAO extends JpaRepository<UserDTO, Integer> {
    UserDTO findByUsername(String username);

	UserDTO findByMailid(String mailid);

	//void updateUser(UserDTO user);
}
