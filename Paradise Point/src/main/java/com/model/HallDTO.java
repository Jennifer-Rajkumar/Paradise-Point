package com.model;

import java.util.Objects;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="hall")
public class HallDTO {
	@Id
	private int hallid;
	private String hallimg;
	private int accomodation;
	private double AC;
	private double hallcost;
	
	private static HallDTO hallinfo;
	private HallDTO() {
		
	}
	public HallDTO(int hallid,String hallimg,int accomodation,double AC,double hallcost) {
		this.hallid=hallid;
		this.hallimg=hallimg;
		this.accomodation=accomodation;
		this.AC=AC;
		this.hallcost=hallcost;
	}
	synchronized public static HallDTO createInstance() {
		if(hallinfo==null) {
			hallinfo=new HallDTO();
			return hallinfo;
		}
		else {
			return hallinfo.createClone();
		}
	}
	
	synchronized public static HallDTO createInstanceWithValues(int hallid,String hallimg,int accomodation,double AC,double hallcost) {
		if(hallinfo==null) {
			hallinfo = new HallDTO(hallid,hallimg,accomodation,AC,hallcost);
			return hallinfo;
		}
		else {
			hallinfo=hallinfo.createClone();
			hallinfo.setHallid(hallid);
			hallinfo.setHallimg(hallimg);
			hallinfo.setAccomodation(accomodation);
			hallinfo.setAC(AC);
			hallinfo.setHallcost(hallcost);
			return hallinfo;
		}
	}
	
	private HallDTO createClone() {
		try {
			return (HallDTO)super.clone();
		}catch(Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	public int getHallid() {
		return hallid;
	}
	public void setHallid(int hallid) {
		this.hallid = hallid;
	}
	public String getHallimg() {
		return hallimg;
	}
	public void setHallimg(String hallimg) {
		this.hallimg = hallimg;
	}
	public int getAccomodation() {
		return accomodation;
	}
	public void setAccomodation(int accomodation) {
		this.accomodation = accomodation;
	}
	public double getAC() {
		return AC;
	}
	public void setAC(double aC) {
		AC = aC;
	}
	public double getHallcost() {
		return hallcost;
	}
	public void setHallcost(double hallcost) {
		this.hallcost = hallcost;
	}
	@Override
	public String toString() {
		return "HallInfoDTO [hallid=" + hallid + ", hallimg=" + hallimg + ", accomodation=" + accomodation + ", AC="
				+ AC + ", hallcost=" + hallcost + "]";
	}
	@Override
	public int hashCode() {
		return Objects.hash(AC, accomodation, hallcost, hallid, hallimg);
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		HallDTO other = (HallDTO) obj;
		return Double.doubleToLongBits(AC) == Double.doubleToLongBits(other.AC) && accomodation == other.accomodation
				&& Double.doubleToLongBits(hallcost) == Double.doubleToLongBits(other.hallcost)
				&& hallid == other.hallid && Objects.equals(hallimg, other.hallimg);
	}
	
}
