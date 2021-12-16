package com.model;

import java.io.Serializable;
import javax.persistence.Embeddable;

@Embeddable
public class CompKey implements Serializable,Cloneable,Comparable<CompKey>{
	
	private int partyid;
	private int serviceid;
	
	private CompKey() {
		
	}
	public CompKey(int partyid,int serviceid) {
		this.partyid=partyid;
		this.serviceid=serviceid;
	}
	
	private static CompKey compkey;
	synchronized public static CompKey createInstance() {
		if(compkey==null) {
			compkey=new CompKey();
			return compkey;
		}
		return compkey.createClone();
	}
	synchronized public static CompKey createInstanceWithValues(int partyid, int serviceid) {
		if(compkey==null) {
			compkey=new CompKey(partyid,serviceid);
			return compkey;
		}
		else {
			compkey=compkey.createClone();
			compkey.setPartyid(partyid);
			compkey.setServiceid(serviceid);
			
			return compkey;
		}
	}
	
	
	private CompKey createClone() {
		try {
			return (CompKey)super.clone();
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
	public int getServiceid() {
		return serviceid;
	}
	public void setServiceid(int serviceid) {
		this.serviceid = serviceid;
	}
	@Override
	public int compareTo(CompKey o) {
		// TODO Auto-generated method stub
		return this.getPartyid()-o.getPartyid();
	}
	
}