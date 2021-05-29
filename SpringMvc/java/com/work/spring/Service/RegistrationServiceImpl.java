package com.work.spring.Service;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import org.apache.log4j.Logger;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.work.spring.DAO.RegistrationDAO;
import com.work.spring.DTO.RegistrationDto;
import com.work.spring.Entity.RegistrationEntity;



@Service
public class RegistrationServiceImpl implements RegistrationService{
	
	private Logger logger;
	@Autowired
	 private RegistrationDAO dao;
	
	public RegistrationServiceImpl() {
		
		// TODO Auto-generated constructor stub
		logger=Logger.getLogger(getClass());
	}
	
	public String validateAndSave(RegistrationDto dto) {
		logger.info("inside {} ");
		RegistrationEntity entity = new RegistrationEntity();
		try {
			
			RegistrationEntity edEntity = dao.getByEmailId(dto.getEmailId());
			logger.info("user dta from DB " + edEntity);
			if (edEntity == null) {
				
				BeanUtils.copyProperties(dto, entity);
				
				entity.setRegisteredBy("ali");

				LocalDateTime ldate = LocalDateTime.now();
				
				DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd-MM-yy HH:mm:ss");
				
				String date = formatter.format(ldate);
				
				entity.setRegisteredDate(date);

				int affectedRows = dao.save(entity);
				logger.info("affectedRows " + affectedRows);
				
				if (affectedRows>0) {
					logger.info("user successfully registered");
					return "User Successfully Registered";
				} else {
					logger.info("9090909ajskajsljaklsjlajsklajskajklsjaklsjklasjklajslkajskal");
					logger.info("user not registered");
					return "user not registered";
				}
				
			} else {
				logger.info("user already exist");
				return "user already exist";
			}
		} catch (Exception e) {
			logger.error("you have an Exception in {} "+ e.getMessage(),e);
		}
		return "";
	}

	

}
