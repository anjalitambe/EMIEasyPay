package service;

import org.springframework.stereotype.Service;

@Service
public interface IInstallmentService {
	
	double calculateEMI(int duration);

	double calculateNewBal(double emi, double bal,int id);

	double getRemCredits(double cred, double price,int id);

}
