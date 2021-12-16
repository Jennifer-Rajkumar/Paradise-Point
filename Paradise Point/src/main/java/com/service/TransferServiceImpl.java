package com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

@Service("bs")
@Transactional
public class TransferServiceImpl implements TransferService {

	@Autowired
	private TransactionService ts;

	@Transactional(propagation = Propagation.REQUIRED)
	@Override
	public void doMoneyTransfer(int crid, int drid, double amount) throws Exception {
		ts.doCredit(crid, amount);
		ts.doDebit(drid, amount);
	}

	public TransactionService getTs() {
		return ts;
	}

	public void setTs(TransactionService ts) {
		this.ts = ts;
	}
}
