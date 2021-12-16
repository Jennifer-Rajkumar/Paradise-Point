package com.model;

import java.io.Serializable;
import java.util.Date;
import java.util.Objects;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Table;

import org.springframework.transaction.annotation.Transactional;

@Entity
@Table(name="service")
public class ServiceDTO implements Cloneable, Serializable, Comparable<ServiceDTO>{
	@EmbeddedId
	private CompKey compkey;
	private String servicename;
	private String serviceimg;
	private double servicecost;
	
    private static ServiceDTO serviceDTO;
	
	synchronized public static ServiceDTO createInstance() {
		if(serviceDTO==null) {
			serviceDTO=new ServiceDTO();
			return serviceDTO;
		}
		else {
			return serviceDTO.createClone();
		}
	}
	synchronized public static ServiceDTO createInstanceWithValues(int partyid, int serviceid, String servicename, String serviceimg, double servicecost) {
		if(serviceDTO==null) {
			serviceDTO = new ServiceDTO(partyid,serviceid,servicename,serviceimg,servicecost);
			return serviceDTO;
		}
		else {
			serviceDTO=serviceDTO.createClone();
			CompKey compkey=CompKey.createInstanceWithValues(partyid,serviceid);
		    serviceDTO.setCompkey(compkey);
			serviceDTO.setServicename(servicename);
		    serviceDTO.setServiceimg(serviceimg);
		    serviceDTO.setServicecost(servicecost);
			
			return serviceDTO;
		}
	}
	
	private ServiceDTO createClone() {
		try {
			return (ServiceDTO)super.clone();
		}catch(Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	public ServiceDTO() {
		
	}
	
	public ServiceDTO(int partyid, int serviceid, String servicename, String serviceimg, double servicecost) {
		CompKey compkey=new CompKey(partyid, serviceid);
		this.servicename = servicename;
		this.serviceimg = serviceimg;
		this.servicecost = servicecost;
	}
	
	
	public CompKey getCompkey() {
		return compkey;
	}
	public void setCompkey(CompKey compkey) {
		this.compkey = compkey;
	}
	public String getServicename() {
		return servicename;
	}
	public void setServicename(String servicename) {
		this.servicename = servicename;
	}
	public String getServiceimg() {
		return serviceimg;
	}
	public void setServiceimg(String serviceimg) {
		this.serviceimg = serviceimg;
	}
	public double getServicecost() {
		return servicecost;
	}
	public void setServicecost(double servicecost) {
		this.servicecost = servicecost;
	}
	public static ServiceDTO getServiceDTO() {
		return serviceDTO;
	}
	public static void setServiceDTO(ServiceDTO serviceDTO) {
		ServiceDTO.serviceDTO = serviceDTO;
	}
	
	@Override
	public int compareTo(ServiceDTO o) {
		// TODO Auto-generated method stub
		return this.servicename.compareTo(servicename);
	}
}