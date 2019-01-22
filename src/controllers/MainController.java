package controllers;

import java.io.IOException;
import java.sql.Blob;
import java.sql.Date;
import java.util.List;

import javax.persistence.criteria.CriteriaBuilder.In;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.transaction.TransactionManager;
import javax.validation.Valid;

import org.hibernate.Hibernate;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.SharedSessionContract;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;



import model.Address;
import model.Admin;
import model.Bank;
import model.Customer;
import model.EMICard;
import model.Installment;
import model.Product;
import service.AdminService;
import service.CustomerService;
import service.IInstallmentService;
import service.IProductService;



@Controller
@SessionAttributes(value = "sessionuser")
public class MainController {
	//only annotate this part
	private IProductService productService;

	public IProductService getProductService() {
		return productService;
	}
	@Autowired
	public void setProductService(IProductService productService) {
		this.productService = productService;
	}
	@Autowired
	SessionFactory sf;

	
	
	private CustomerService customerService;
	@Autowired
	public void setCustomerService(CustomerService customerService) {
		this.customerService = customerService;
	}


  
	private AdminService adminService;
	@Autowired
	public void setAdminService(AdminService adminService) {
		this.adminService = adminService;
	}
	
	private IInstallmentService iInstallmentService;
	@Autowired
	public void setiInstallmentService(IInstallmentService iInstallmentService) {
		this.iInstallmentService = iInstallmentService;
	}
	

	
			// FOR LOGIN AND LOGIN FORM
			@RequestMapping(value = "/Login", method = RequestMethod.GET)
			public String indexes() {
			return "login";
			}
	

		
		@RequestMapping(value = "/LoginForms", method = RequestMethod.POST)
		public ModelAndView loginpro1(HttpServletRequest request, HttpServletResponse response,
				HttpSession session,	@ModelAttribute("login") Customer u, BindingResult result, Model model, EMICard e) {
			ModelAndView mav = null;
			String username=request.getParameter("email");
			String password=request.getParameter("password");
			System.out.println("Username is: "+ username+ " Password is: "+password);
			if(customerService.verifyUser(username,password))
			{
				mav = new ModelAndView("dashboard");
				Customer customer = customerService.getCustomer(username, password);
				session.setAttribute("customerobj", customer);
	
				session.setAttribute("firstName", customer.getFirstName());
				session.setAttribute("lastName", customer.getLastName());
				session.setAttribute("cardType", customer.getCard().getCardType());
				session.setAttribute("validDate",customer.getCard().getValidDate());
				session.setAttribute("activated",customer.getCard().getActivated());
				session.setAttribute("cardID",customer.getCard().getCardID());
				session.setAttribute("balance",customer.getBank().getBalance());
				session.setAttribute("credits",customer.getCard().getCredits());
				session.setAttribute("remaingCredits",customer.getCard().getRemaingCredits());
			
				
				Product pro=(Product) session.getAttribute("productobj");
				Installment i=(Installment) session.getAttribute("installmentobj");
				
				System.out.println("Username is: "+ username+ " Password is: "+password);
				
			}
			else
			{
				mav = new ModelAndView("loginerror");
			}
			return mav;
			}
		
		
		

		//FOR REGISTRATION AND REGISTRATION FORM
		@RequestMapping(value = "/RegisterSpring", method = RequestMethod.GET)
		public String regSpring(Model model) {
			model.addAttribute("customer",new Customer());
			return "register";
			}
		
		 @RequestMapping(value = "/RegisterFormsSpring", method = RequestMethod.POST)
		    public String validateregistrationPage1(@Valid @ModelAttribute("customer") Customer customer,
		    		BindingResult bindingResult,Model model,HttpSession session) {
			 	System.out.println(customer);
			 	String card1="Gold";
			 	String card2="Titanium";
			 	
			 	if(customer.getCard().getCardType().equals(card1))
			 	{
			 		customer.getCard().setCredits(40000);
			 		Date validDate= customerService.createValidDate();
			 		customer.getCard().setValidDate(validDate);
			 	}
			 	else if(customer.getCard().getCardType().equals(card2))
			 	{
			 		customer.getCard().setCredits(60000);
			 		Date validDate= customerService.createValidDate();
			 		customer.getCard().setValidDate(validDate);
			 	}
			 	
				double bal = customerService.createBalance();
				customer.getBank().setBalance(bal);
				Date vd = customerService.createValidDate();
				customer.getCard().setValidDate(vd);
			    customerService.addCustomer(customer);
			    return "regSuccessPage";
		 	}
		 
	
		
		//FOR ADMIN LOGIN 
		@RequestMapping(value = "/Admin", method = RequestMethod.GET)
		public String adminLog(Model model) {
		model.addAttribute("admin",new Admin());
		return "adminLogin";
		}
		
		
		//FROM ADMIN LOGIN FORM

		@RequestMapping(value = "/AdminForms", method = RequestMethod.POST)
		public ModelAndView loginpro(HttpServletRequest request, HttpServletResponse response,
		@ModelAttribute("admin") Admin u, BindingResult result, Model model) {
		ModelAndView mav = null;
		String adminName=request.getParameter("adminName");
		String password=request.getParameter("password");

		if(adminService.verifyUser1(adminName,password))
		{

		mav = new ModelAndView("admindashboard");   

		}
		else
		{
		
		mav = new ModelAndView("loginerror");
		}

		return mav;

		}  
		
		 //Admin product to edit or delete or view the products in db
		 @RequestMapping(value = "/AdminProduct", method = RequestMethod.GET)
			public ModelAndView adminProduct(Model model) 
			{
			 
			  List<Product> products = productService.getAllProducts(); 
				model.addAttribute("customer",new Customer());

				  return new ModelAndView("adminproduct", "products", products);
	
				}
		
		
		
		 //Dashboard
		 @RequestMapping(value = "/Dashboard", method = RequestMethod.GET)
			public String userDashboard(Model model) 
			{
				model.addAttribute("customer",new Customer());
				return "dashboard";
				}
		

			
			@RequestMapping(value="/Logout",method = RequestMethod.GET)
			public String logout(HttpSession session){
				session.invalidate();
				
				return "logoutSucess";
			}
			
			
			@RequestMapping(value = "/Product", method = RequestMethod.GET)
			public String redirectToProducts(Model model) {
				model.addAttribute("product", new Product());
				model.addAttribute("customer",new Customer());
				
				return "product";
			}
			
			@RequestMapping(value = "/Product-Detail", method = RequestMethod.POST)
			public String redirectToProductDets(HttpServletRequest request, HttpServletResponse response,
					HttpSession session,Customer u, BindingResult result, Model model, EMICard e,
					@ModelAttribute("product") Product p) {
			System.out.println(p);
			model.addAttribute("installment", new Installment());
			Product prod=p;
			session.setAttribute("productobj",prod);
			Customer c= (Customer) session.getAttribute("customerobj");
			System.out.println("Customer in product is:"+c);
			  
			session.setAttribute("productName", p.getProductName());
			session.setAttribute("productPrice", p.getProductPrice());
			session.setAttribute("productCategory", p.getProductCategory());
			session.setAttribute("unitStock", p.getUnitStock());
			session.setAttribute("productDescription", p.getProductDescription());
			  

			session.setAttribute("firstName", c.getFirstName());
			session.setAttribute("lastName", c.getLastName());
			session.setAttribute("cardType", c.getCard().getCardType());
			session.setAttribute("validDate",c.getCard().getValidDate());
			session.setAttribute("activated",c.getCard().getActivated());
			session.setAttribute("cardID",c.getCard().getCardID());
				
			session.setAttribute("balance",c.getBank().getBalance());

				return "product-detail";
			}
			
			
			@RequestMapping(value = "/DisplayEMI", method = RequestMethod.POST)
			public String EMIDuration(HttpServletRequest request, HttpServletResponse response,
					HttpSession session,Customer u, BindingResult result, Model model, 
					@ModelAttribute("installment") Installment inst) {
				Installment installment = inst;
				session.setAttribute("installmentobj", installment);
				
				
				System.out.println(inst);
				int duration=inst.getDuration();
				System.out.println("duration is"+duration);
			
				Customer c= (Customer) session.getAttribute("customerobj");
				Product p=(Product) session.getAttribute("productobj");
				double emi=((p.getProductPrice()))/duration;
				inst.setAmountToPay(emi);
				session.setAttribute("amountToPay", emi);
				return "product-detail";
				
				
			}
			
			
			
			
			
			
			@RequestMapping(value = "/BuyNow", method = RequestMethod.GET)
			public String redirectToPayment(Model model,HttpSession session) {
				Session session1 = sf.openSession();
				Transaction tx = session1.beginTransaction();
				Customer c= (Customer) session.getAttribute("customerobj");
				Installment i= (Installment) session.getAttribute("installmentobj");
				Product p= (Product) session.getAttribute("productobj");
				
				System.out.println("ji");
				System.out.println("persisting customer is"+c);
				System.out.println("persistent product is"+p);
				System.out.println("persistent installment is"+i);
				
				//To deduct emi from bank account
				double emi=i.getAmountToPay();
				double bal=c.getBank().getBalance();
				int id = c.getCustomerId();
				System.out.println("id is"+id);
				System.out.println("emi is"+emi);
				System.out.println("balance is"+bal);
				double newbal= iInstallmentService.calculateNewBal(emi, bal, id);
				System.out.println("newbal is"+newbal);
				
	
				//To deduct credits from EMI Card
				
				double cred= c.getCard().getCredits();
				System.out.println("total credits old"+cred);
				double price=p.getProductPrice();
				double remcreds= iInstallmentService.getRemCredits(cred,price,id);
		
				c.getCard().setRemaingCredits(remcreds);
				session.setAttribute("remaingCredits", remcreds);
				session.setAttribute("amountToPay", price);
				session.setAttribute("perMonthAmount", emi);
				tx.commit();
				session1.save(c);
				
				
				
				return "payment";
			}
			
			
			 //Successpayment
			 @RequestMapping(value = "/SuccessPayment", method = RequestMethod.GET)
				public String paymentsuccessful(Model model) 
				{
					model.addAttribute("customer",new Customer());
					return "successpayment";
					}
			

				//ADDING A PRODUCT
				@RequestMapping(value = "AddProduct")
				public String getProductForm(Model model) {		
					model.addAttribute("product",new Product());
					return "addProduct";
				}
				@RequestMapping(value = "addProductForms", method = RequestMethod.POST)
				public String addingProduct(@ModelAttribute("product") @Valid Product prod, BindingResult result,
					@RequestParam("productImage") MultipartFile file, Model model) {
				
					System.out.println(result.toString());
					System.out.println("File:" + file.getName());
					System.out.println("ContentType:" + file.getContentType());
				
					try {
							byte[ ] b =file.getBytes();	
							Session session = sf.openSession();
							Blob blob= Hibernate.getLobCreator(session).createBlob(b);
							} catch (IOException e) {
								e.printStackTrace();
								 }
					System.out.println(result.toString());
					System.out.println("product being added :" + prod);
					productService.addProduct(prod);
					
					
					
//				Path path = Paths
//					.get( "D:/EMI Repos/EMICardManagement1/WebContent/resources/img/products/"
//								+ prod.getProductName() + ".jpg");
				
//				MultipartFile image = (MultipartFile) prod.getProductImage();
//				try {
//					image.transferTo(new File(path.toString()));
//					//image.transferTo(new File(path.toString()));
//					
//				} catch (IllegalStateException e) {
//					e.printStackTrace();
//				} catch (IOException e) {
//					
//					e.printStackTrace();
//				}
		
					return "redirect:/AdminProduct";
					
				}
				
				
				
				
//		
				
				@RequestMapping(value = "/trying",method = RequestMethod.POST)
				public String trying(@ModelAttribute("editProductObj") Product p,BindingResult r) {
					System.out.println(r.toString());
					System.out.println(p);
					productService.editProduct(p);
					return "redirect:/AdminProduct";
					
				}
				
				//EDIT PRODUCT BY ADMIN
				@RequestMapping(value = "/admin/product/editProduct/{productId}")
				public ModelAndView getEditForm(@PathVariable(value = "productId") Integer productId) {
					Product product = productService.getProductById(productId);
					System.out.println("ghhh");
					return new ModelAndView("editProduct", "editProductObj", product);
				}
				

				
				//DELETING A PRODUCT BY ADMIN
				
				@RequestMapping("admin/product/delete/{productId}")
				public String deleteProduct(@PathVariable(value = "productId") Integer productId) {
					productService.deleteProduct(productId);	
					return "redirect:/AdminProduct";
				}
				

				
				//list all customers
				@RequestMapping("ListCustomers") 
				public ModelAndView getAllCustomers() {				
					  List<Customer> customers = customerService.getAllCustomers(); 
					  System.out.println(customers);
					  return new ModelAndView("adminCustomerList", "customers", customers);
					  }
				
				
				
				//DELETING A PRODUCT BY ADMIN			
				@RequestMapping("admin/customer/delete/{customerId}")
				public String deleteCustomer(@PathVariable(value = "customerId") Integer customerId) {
					customerService.deleteCustomer(customerId);
					
					return "redirect:/ListCustomers";
				}
				
				
				//Editing a customer--
				@RequestMapping(value = "/admin/customer/editCustomer/{customerId}")
				public ModelAndView getEditForm(@PathVariable(value = "customerId") int customerId,
					HttpSession session) {
					Customer customer= customerService.getCustomerById(customerId);
					return new ModelAndView("editAdminCustomer", "editCustomerObj", customer);
				}
				
				@RequestMapping(value = "/tryingAnj",method = RequestMethod.POST)
				public String trying(@ModelAttribute("editCustomerObj") Customer c,BindingResult r,HttpSession session) {
			
					System.out.println("changed obj");
					System.out.println(r.toString());
					System.out.println(c);
					
//					boolean actstatus= c.getActivated2();
//					session.setAttribute("activated2", actstatus);
//					System.out.println("current status after edit"+actstatus);
//					
					customerService.editCustomer(c);
					c.setAddress((Address) session.getAttribute("address"));
					return "redirect:/ListCustomers";
					
				}

				
				
			
			
			
		}
	 
 
	 
	
