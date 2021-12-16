package com.model;

import java.util.Objects;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="party")
public class PartyDTO implements Comparable<PartyDTO>{
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int partyid;
	private String partyname;
	private String partyimg;
	
	private static PartyDTO partyDTO;
	
	public PartyDTO() {
		
	}
	
	public PartyDTO(int partyid, String partyname, String partyimg) {
		this.partyid = partyid;
		this.partyname = partyname;
		this.partyimg = partyimg;
	}
	
	synchronized public static PartyDTO createInstance() {
		if(partyDTO==null) {
			partyDTO=new PartyDTO();
			return partyDTO;
		}
		else {
			return partyDTO.createClone();
		}
	}
	
	synchronized public static PartyDTO createInstanceWithValues(int partyid, String partyname, String partyimg) {
		if(partyDTO==null) {
			partyDTO = new PartyDTO(partyid,partyname,partyimg);
			return partyDTO;
		}
		else {
			partyDTO=partyDTO.createClone();
			partyDTO.setPartyid(partyid);
			partyDTO.setPartyname(partyname);
			partyDTO.setPartyimg(partyimg);
			return partyDTO;
		}
	}
	
	private PartyDTO createClone() {
		try {
			return (PartyDTO)super.clone();
		}catch(Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	public int getPartyid() {
		return partyid;
	}
	public void setPartyid(int partyid) {
		this.partyid = partyid;
	}
	public String getPartyname() {
		return partyname;
	}
	public void setPartyname(String partyname) {
		this.partyname = partyname;
	}
	public String getPartyimg() {
		return partyimg;
	}
	public void setPartyimg(String partyimg) {
		this.partyimg = partyimg;
	}
	@Override
	public int hashCode() {
		return Objects.hash(partyid, partyimg, partyname);
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		PartyDTO other = (PartyDTO) obj;
		return partyid == other.partyid && Objects.equals(partyimg, other.partyimg)
				&& Objects.equals(partyname, other.partyname);
	}
	
	
	@Override
	public String toString() {
		return "PartyDTO [partyid=" + partyid + ", partyname=" + partyname + ", partyimg=" + partyimg + "]";
	}
	@Override
	public int compareTo(PartyDTO o) {
		// TODO Auto-generated method stub
		return this.partyname.compareTo(o.partyname);
	}
	
}