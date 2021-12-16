package com.model;
import java.io.Serializable;
import java.sql.Date;
import java.util.Objects;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="purchasemaster")
public class PurchaseMasterDTO implements Serializable,Cloneable,Comparable<PurchaseMasterDTO>{
	//purchase_Id(PK),uid,HallId,Date,Cost
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int purchaseid;
	private int uid;
	private int hallid;
	private Date date;
	private double cost;
	
	private PurchaseMasterDTO() {
		
	}
	private PurchaseMasterDTO(int purchaseid,int uid,int hallid,Date date,double cost) {
		this.purchaseid=purchaseid;
		this.uid=uid;
		this.hallid=hallid;
		this.date=date;
		this.cost=cost;
	}
	private static PurchaseMasterDTO PurchaseMasterDTO;
	synchronized public static PurchaseMasterDTO createInstance() {
		if(PurchaseMasterDTO==null) {
			PurchaseMasterDTO=new PurchaseMasterDTO();
			return PurchaseMasterDTO;
		}
		else {
			return PurchaseMasterDTO.createClone();
		}
	}
	
	synchronized public static PurchaseMasterDTO createInstanceWithValues(int purchaseid,int uid,int hallid,Date date,double cost) {
		if(PurchaseMasterDTO==null) {
			PurchaseMasterDTO = new PurchaseMasterDTO(purchaseid,uid,hallid,date,cost);
			return PurchaseMasterDTO;
		}
		else {
			PurchaseMasterDTO=PurchaseMasterDTO.createClone();
			PurchaseMasterDTO.setPurchaseid(purchaseid);
			PurchaseMasterDTO.setHallid(hallid);
			PurchaseMasterDTO.setUid(uid);
			PurchaseMasterDTO.setDate(date);
			PurchaseMasterDTO.setCost(cost);
			return PurchaseMasterDTO;
		}
	}
	
	private PurchaseMasterDTO createClone() {
		try {
			return (PurchaseMasterDTO)super.clone();
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
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public int getHallid() {
		return hallid;
	}
	public void setHallid(int hallid) {
		this.hallid = hallid;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public double getCost() {
		return cost;
	}
	public void setCost(double cost) {
		this.cost = cost;
	}
	@Override
	public int hashCode() {
		return Objects.hash(cost, date, hallid, purchaseid, uid);
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		PurchaseMasterDTO other = (PurchaseMasterDTO) obj;
		return Double.doubleToLongBits(cost) == Double.doubleToLongBits(other.cost) && Objects.equals(date, other.date)
				&& hallid == other.hallid && purchaseid == other.purchaseid && uid == other.uid;
	}
	@Override
	public String toString() {
		return "PurchaseMasterDTO [purchaseid=" + purchaseid + ", uid=" + uid + ", hallid=" + hallid + ", date=" + date
				+ ", cost=" + cost + "]";
	}
	@Override
	public int compareTo(PurchaseMasterDTO o) {
		// TODO Auto-generated method stub
		return this.purchaseid-o.purchaseid;
	}
}