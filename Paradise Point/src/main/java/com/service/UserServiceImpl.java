package com.service;


import com.dao.UserDAO;
import com.model.UserDTO;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;


@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDAO userRepository;

    @Autowired
    private BCryptPasswordEncoder bCryptPasswordEncoder;

    @Override
    public void save(UserDTO user) {
    	System.out.println(user.getUsername()+" "+user.getPassword());
        user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
        user.setRole("USER");
        user.setAmt(100000);
        if(user.getUsername().equals("Administrator"))
        {
        	user.setRole("ADMIN");
        	user.setAmt(0);
        	List<UserDTO> users=userRepository.findAll();
        	for(UserDTO userdto:users) {
        		if(userdto.getUsername().equals("Administrator")) {
        			return;
        		}
        	}
        }
        userRepository.save(user);
    }

    @Override
    public UserDTO findByUsername(String username) {
        return userRepository.findByUsername(username);
    }

	@Override
	public UserDTO findById(int uid) {
		return userRepository.getById(uid);		 
	}

	@Override
	public List<UserDTO> findAll() {
		return userRepository.findAll();
	}

	@Override
	public void delete(UserDTO user) {
		userRepository.delete(user);
	}

	@Override
	public void update(UserDTO user) {
		user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
		userRepository.save(user);
	}

	@Override
	public long count() {
		return userRepository.count();
	}

	@Override
	public double getAdminAmount() {
		UserDTO user=userRepository.findByUsername("Administrator");
		return user.getAmt();
	}

}
