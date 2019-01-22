package dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.Bank;
import model.Customer;
import model.EMICard;

@Repository
public class InstallmentDAOImpl implements InstallmentDAO{
	
	private static final Logger logger = 			
			LoggerFactory.getLogger(InstallmentDAOImpl.class);
	
	
	@Autowired
	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}
	
	
	

	@Override
	public double calculateEMI(int duration) {
		// TODO Auto-generated method stub
		return 0;
	}




	@Override
	public double calculateNewBal(double emi, double bal,int id) {
		
		Session session = this.sessionFactory.openSession();
		  Transaction tx = session.beginTransaction();
		      Customer c= (Customer) session.get(Customer.class,id);
		      double bb=c.getBank().getBalance();
		      System.out.println("old bal in dao"+bb);
		      double newbal= bal-emi;
		      System.out.println("new bal in dao"+newbal);
		      
		      
		      Bank bank = c.getBank();
		      System.out.println("persistent cust bank in dao"+bank);
		      
		      bank.setBalance(newbal);
		      c.setBank(bank);
		      
		      System.out.println("updated persistent cust bank in dao"+bank);
		      
		  
		  
		  
		  session.save(c);
		  tx.commit();
		  return newbal;
		
		
		
		
		
		
		
//		OLD
//		Session session = this.sessionFactory.openSession();
//		Transaction tx = session.beginTransaction();
//	 
//	
//		double newbal= bal-emi;
//		
//		tx.commit();
//		session.close();
//		return newbal;
	}




	@Override
	public double getRemCredits(double cred, double price,int id) {
		
		
		Session session = this.sessionFactory.openSession();
		  Transaction tx = session.beginTransaction();
		  //get the customer    
		  Customer c= (Customer) session.get(Customer.class,id);
		      int cardid=c.getCard().getCardID();
		      //get his card
		      EMICard card= (EMICard) session.get(EMICard.class, cardid);
		      
		      //calculate rem creds
		      double remcred= cred-price;
		      
		      card.setRemaingCredits(remcred);
		      card.setCredits(remcred);
		      c.setCard(card);
		      
		      tx.commit();
		      session.save(card);
		      session.save(c);
	   
		      
			return remcred;
		      

	}

}
