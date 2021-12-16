package com.service;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import com.dao.UserDAO;
import com.model.UserDTO;

@Service("ts")
@Transactional
public class TransactionServiceImpl implements TransactionService {
	@Autowired
	private UserDAO userDao;

	@Transactional(propagation = Propagation.REQUIRED)
	@Override
	public void doCredit(int crid, double amt) throws Exception {
		UserDTO user = userDao.getById(crid);
		double old_amount = user.getAmt();
		double new_amount = old_amount + amt;
		user.setAmt(new_amount);
		userDao.save(user);
	}

	@Transactional(propagation = Propagation.REQUIRED, rollbackFor = { InSufficientBalanceException.class })
	@Override
	public void doDebit(int drid, double amt) throws Exception {
		UserDTO user = userDao.getById(drid);
		double old_amount = user.getAmt();
		double new_amount = old_amount - amt;
		user.setAmt(new_amount);
		userDao.save(user);

		if (old_amount < amt) {
			throw new InSufficientBalanceException("no money money money..............");
		}
	}

	public UserDAO getAccountsDao() {
		return userDao;
	}

	public void setAccountsDao(UserDAO userDao) {
		this.userDao = userDao;
	}

}