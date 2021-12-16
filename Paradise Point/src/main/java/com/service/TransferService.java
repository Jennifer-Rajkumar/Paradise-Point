package com.service;

public interface TransferService {
	public void doMoneyTransfer(int crid,int drid,double amount)throws Exception;
}
