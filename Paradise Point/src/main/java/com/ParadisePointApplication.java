package com;

import org.springframework.boot.SpringApplication;



import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.orm.jpa.HibernateJpaAutoConfiguration;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import com.dao.BookingDAO;
import com.dao.HallDAO;
import com.dao.PartyDAO;
import com.dao.PurchaseMasterDAO;
import com.dao.ServiceDAO;
import com.dao.UserDAO;
import com.model.UserDTO;
import com.service.UserService;
import com.service.UserServiceImpl;

import java.util.Date;

import org.apache.log4j.Logger;


@SpringBootApplication(exclude = HibernateJpaAutoConfiguration.class)
@ComponentScan(basePackages = { "mycom" })
@EnableJpaRepositories(basePackageClasses = { UserDAO.class, PartyDAO.class, HallDAO.class, BookingDAO.class,
		ServiceDAO.class, PurchaseMasterDAO.class })
public class ParadisePointApplication {
	static Logger logger=Logger.getLogger(ParadisePointApplication.class.getName());
	
	public static void main(String[] args) {			       
		SpringApplication.run(ParadisePointApplication.class, args);
		logger.info("Logged in on : " + new Date());
		
	}
}
  
