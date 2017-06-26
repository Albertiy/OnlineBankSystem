/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cn.niit.dao;

import cn.niit.domain.InterestRate;
import cn.niit.domain.Loan;
import java.util.List;

/**
 *
 * @author BearK
 */
public interface LoanDao {

    public void save(Loan loan);

    public Loan findLoanById(String account_id);

    public List<InterestRate> getAllInterestRates();
}
