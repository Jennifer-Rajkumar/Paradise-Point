package com.model;

import java.io.Serializable;
import java.util.Objects;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name="purchasetrans")
public class PurchaseTransDTO implements Cloneable, Serializable, Comparable<PurchaseTransDTO>{
	
	//purchase_Id(PK),partyId,service_Id(PK)
	@EmbeddedId
	private CompKeyTrans compkey;
	private int partyid;
	
	private PurchaseTransDTO() {
		
	}
	private PurchaseTransDTO(int purchaseid,int partyid,int serviceid) {
		CompKeyTrans compkey=CompKeyTrans.createInstanceWithValues(purchaseid, serviceid);
		this.partyid=partyid;
	}
	
    private static PurchaseTransDTO purchaseTransDTO;
	
	synchronized public static PurchaseTransDTO createInstance() {
		if(purchaseTransDTO==null) {
			purchaseTransDTO=new PurchaseTransDTO();
			return purchaseTransDTO;
		}
		else {
			return purchaseTransDTO.createClone();
		}
	}
	synchronized public static PurchaseTransDTO createInstanceWithValues(int purchaseid,int partyid,int serviceid) {
		if(purchaseTransDTO==null) {
			purchaseTransDTO = new PurchaseTransDTO(purchaseid,partyid,serviceid);
			return purchaseTransDTO;
		}
		else {
			purchaseTransDTO=purchaseTransDTO.createClone();
			CompKeyTrans compkey=CompKeyTrans.createInstanceWithValues(purchaseid,serviceid);
			purchaseTransDTO.setCompkey(compkey);
			purchaseTransDTO.setPartyid(partyid);
			
			return purchaseTransDTO;
		}
	}
	
	private PurchaseTransDTO createClone() {
		try {
			return (PurchaseTransDTO)super.clone();
		}catch(Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	public CompKeyTrans getCompkey() {
		return compkey;
	}
	public void setCompkey(CompKeyTrans compkey) {
		this.compkey = compkey;
	}
	public int getPartyid() {
		return partyid;
	}
	public void setPartyid(int partyid) {
		this.partyid = partyid;
	}
	@Override
	public int hashCode() {
		return Objects.hash(partyid);
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		PurchaseTransDTO other = (PurchaseTransDTO) obj;
		return partyid == other.partyid;
	}
	@Override
	public int compareTo(PurchaseTransDTO o) {
		return this.partyid-o.partyid;
	}
		
}