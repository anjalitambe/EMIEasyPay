package service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.InstallmentDAO;

@Service
public class InstallmentServiceImpl implements IInstallmentService {
	
	@Autowired
	private InstallmentDAO installmentDAO;

	@Override
	public double calculateEMI(int duration) {

		return installmentDAO.calculateEMI(duration);
	}

	@Override
	public double calculateNewBal(double emi, double bal,int id) {
		// TODO Auto-generated method stub
		return installmentDAO.calculateNewBal(emi,bal,id);
	}

	@Override
	public double getRemCredits(double cred, double price,int id) {
		// TODO Auto-generated method stub
		return installmentDAO.getRemCredits(cred, price,id);
	}

}
