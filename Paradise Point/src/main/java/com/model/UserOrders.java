package com.model;

import java.sql.Date;
import java.util.Objects;

import org.springframework.stereotype.Component;
@Component
public class UserOrders implements Comparable<UserOrders>{
	private String username;
	private int purchaseid;
	private String partyname;
	private int hallno;
	private Date date;
	private double cost;
	
	public UserOrders() {
		
	}
	public UserOrders(String username, int purchaseid, String partyname, int hallno, Date date, double cost) {
		
		this.username = username;
		this.purchaseid = purchaseid;
		this.partyname = partyname;
		this.hallno = hallno;
		this.date = date;
		this.cost = cost;
	}
//	private static UserOrders user;
//	synchronized public static UserOrders createInstance() {
//		if(user==null) {
//			user=new UserOrders();
//			return user;
//		}
//		else {
//			return user.createClone();
//		}
//	}
//	
//	synchronized public static UserOrders createInstanceWithValues(String username, int purchaseid, String partyname, int hallno, Date date, double cost) {
//		if(user==null) {
//			user = new UserOrders(username,purchaseid,partyname,hallno,date,cost);
//			return user;
//		}
//		else {
//			user=user.createClone();
//			user.setUsername(username);
//			user.setPurchaseid(purchaseid);
//			user.setPartyname(partyname);
//			user.setHallno(hallno);
//			user.setDate(date);
//			user.setCost(cost);
//			return user;
//		}
//	}
	
//	private UserOrders createClone() {
//		try {
//			return (UserOrders)super.clone();
//		}catch(Exception e) {
//			e.printStackTrace();
//			return null;
//		}
//	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public int getPurchaseid() {
		return purchaseid;
	}
	public void setPurchaseid(int purchaseid) {
		this.purchaseid = purchaseid;
	}
	public String getPartyname() {
		return partyname;
	}
	public void setPartyname(String partyname) {
		this.partyname = partyname;
	}
	public int getHallno() {
		return hallno;
	}
	public void setHallno(int hallno) {
		this.hallno = hallno;
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
	public String toString() {
		return "UserOrders [username=" + username + ", purchaseid=" + purchaseid + ", partyname=" + partyname
				+ ", hallno=" + hallno + ", date=" + date + ", cost=" + cost + "]";
	}
	@Override
	public int hashCode() {
		return Objects.hash(cost, date, hallno, partyname, purchaseid, username);
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		UserOrders other = (UserOrders) obj;
		return Double.doubleToLongBits(cost) == Double.doubleToLongBits(other.cost) && Objects.equals(date, other.date)
				&& hallno == other.hallno && Objects.equals(partyname, other.partyname)
				&& purchaseid == other.purchaseid && Objects.equals(username, other.username);
	}
	@Override
	public int compareTo(UserOrders o) {
		// TODO Auto-generated method stub
		return o.username.compareTo(this.username);
	}
	

}
