package dao;

import org.springframework.stereotype.Repository;

@Repository
public interface InstallmentDAO {
	
	double calculateEMI(int duration);
	double calculateNewBal(double emi, double bal,int id);
	double getRemCredits(double cred, double price,int id);

}
