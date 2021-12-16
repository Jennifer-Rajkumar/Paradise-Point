package com.service;

public interface TransactionService {
	public void doCredit(int accid,double amt)throws Exception;
	public void doDebit(int accid,double amt)throws Exception;
}
