package com.model;
import java.io.Serializable;
import java.util.Objects;
import javax.persistence.Embeddable;
@Embeddable
public class CompKeyTrans implements Serializable,Cloneable,Comparable<CompKeyTrans>{
	private int purchaseid;
	private int serviceid;
	
	private CompKeyTrans() {
		
	}
	public CompKeyTrans(int purchaseid,int serviceid) {
		this.purchaseid=purchaseid;
		this.serviceid=serviceid;
	}
	
	private static CompKeyTrans compkey;
	synchronized public static CompKeyTrans createInstance() {
		if(compkey==null) {
			compkey=new CompKeyTrans();
			return compkey;
		}
		return compkey.createClone();
	}
	synchronized public static CompKeyTrans createInstanceWithValues(int purchaseid, int serviceid) {
		if(compkey==null) {
			compkey=new CompKeyTrans(purchaseid,serviceid);
			return compkey;
		}
		else {
			compkey=compkey.createClone();
			compkey.setPurchaseid(purchaseid);
			compkey.setServiceid(serviceid);
			
			return compkey;
		}
	}
	
	
	private CompKeyTrans createClone() {
		try {
			return (CompKeyTrans)super.clone();
		}catch(Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	
	public int getPurchaseid() {
		return purchaseid;
	}
	public void setPurchaseid(int purchaseid) {
		this.purchaseid = purchaseid;
	}
	public int getServiceid() {
		return serviceid;
	}
	public void setServiceid(int serviceid) {
		this.serviceid = serviceid;
	}
	@Override
	public int compareTo(CompKeyTrans o) {
		// TODO Auto-generated method stub
		return this.getPurchaseid()-o.getPurchaseid();
	}
	@Override
	public int hashCode() {
		return Objects.hash(purchaseid, serviceid);
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		CompKeyTrans other = (CompKeyTrans) obj;
		return purchaseid == other.purchaseid && serviceid == other.serviceid;
	}
	@Override
	public String toString() {
		return "CompKeyTrans [purchaseid=" + purchaseid + ", serviceid=" + serviceid + "]";
	}
}