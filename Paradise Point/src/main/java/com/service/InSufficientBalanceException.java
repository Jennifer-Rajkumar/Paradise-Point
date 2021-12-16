package com.service;

public class InSufficientBalanceException extends Exception {
	String msg;

	public InSufficientBalanceException(String msg) {
		this.msg = msg;
	}

	@Override
	public String toString() {
		return this.msg;
	}
}