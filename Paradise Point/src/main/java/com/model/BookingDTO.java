package com.model;

import java.sql.Date;

import java.util.Objects;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="booking")
public class BookingDTO implements Comparable<BookingDTO>{
	
	@Id
	private Date date;
	private int hall1;
	private int hall2;
	private int hall3;
	private int hall4;
	private int hall5;
	private int hall6;

	
	private static BookingDTO booking;
	
	public BookingDTO() {
		
	}
	public BookingDTO(Date date,int hall1,int hall2,int hall3,int hall4,int hall5,int hall6) {
		this.date=date;
		this.hall1=hall1;
		this.hall2=hall2;
		this.hall3=hall3;
		this.hall4=hall4;
		this.hall5=hall5;
		this.hall6=hall6;
	}
	
	synchronized public static BookingDTO createInstance() {
		if(booking==null) {
			booking=new BookingDTO();
			return booking;
		}
		else {
			return booking.createClone();
		}
	}
	
	synchronized public static BookingDTO createInstanceWithValues(Date date,int hall1,int hall2,int hall3,int hall4,int hall5,int hall6) {
		if(booking==null) {
			booking = new BookingDTO(date,hall1,hall2,hall3,hall4,hall5,hall6);
			return booking;
		}
		else {
			booking=booking.createClone();
			booking.setDate(date);
			booking.setHall1(hall1);
			booking.setHall2(hall2);
			booking.setHall3(hall3);
			booking.setHall4(hall4);
			booking.setHall5(hall5);
			booking.setHall6(hall6);
			return booking;
		}
	}
	
	private BookingDTO createClone() {
		try {
			return (BookingDTO)super.clone();
		}catch(Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public int getHall1() {
		return hall1;
	}
	public void setHall1(int hall1) {
		this.hall1 = hall1;
	}
	public int getHall2() {
		return hall2;
	}
	public void setHall2(int hall2) {
		this.hall2 = hall2;
	}
	public int getHall3() {
		return hall3;
	}
	public void setHall3(int hall3) {
		this.hall3 = hall3;
	}
	public int getHall4() {
		return hall4;
	}
	public void setHall4(int hall4) {
		this.hall4 = hall4;
	}
	public int getHall5() {
		return hall5;
	}
	public void setHall5(int hall5) {
		this.hall5 = hall5;
	}
	
	
	@Override
	public String toString() {
		return "BookingDTO [date=" + date + ", hall1=" + hall1 + ", hall2=" + hall2 + ", hall3=" + hall3 + ", hall4="
				+ hall4 + ", hall5=" + hall5 + ", hall6=" + hall6 + "]";
	}
	@Override
	public int hashCode() {
		return Objects.hash(date, hall1, hall2, hall3, hall4, hall5, hall6);
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		BookingDTO other = (BookingDTO) obj;
		return Objects.equals(date, other.date) && hall1 == other.hall1 && hall2 == other.hall2 && hall3 == other.hall3
				&& hall4 == other.hall4 && hall5 == other.hall5 && hall6 == other.hall6;
	}
	@Override
	public int compareTo(BookingDTO o) {
		// TODO Auto-generated method stub
		return this.date.compareTo(o.date);
	}
	public int getHall6() {
		return hall6;
	}
	public void setHall6(int hall6) {
		this.hall6 = hall6;
	}
	

}
