package com.service;

import java.util.List;


import com.model.UserDTO;

public interface UserService {
    void save(UserDTO user);
    
    UserDTO findById(int uid);
    UserDTO findByUsername(String username);

	//User findByMailid(String mailid);
    List<UserDTO> findAll();

	void delete(UserDTO user);

	void update(UserDTO user);

	long count();

	double getAdminAmount();

	
}
