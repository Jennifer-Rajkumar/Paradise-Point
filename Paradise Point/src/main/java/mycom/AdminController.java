package mycom;


import java.sql.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


import com.components.ExcelGeneration;
import com.components.MailService;
import com.model.BookingDTO;
import com.model.CompKey;
import com.model.HallDTO;
import com.model.PartyDTO;
import com.model.ServiceDTO;
import com.model.UserDTO;
import com.model.UserOrders;
import com.service.BookingService;
import com.service.HallService;
import com.service.PartyService;
import com.service.PurchaseMasterService;
import com.service.PurchaseTransService;
import com.service.ServiceService;
import com.service.TransferService;
import com.service.UserOrderService;
import com.service.UserService;

@Controller
@Scope("session")
@RequestMapping("/admin")
public class AdminController {
	@Autowired
	PartyService partyservice;

	@Autowired
	HallService hallservice;

	@Autowired
	BookingService bookingservice;

	@Autowired
	ServiceService serviceservice;

	@Autowired
	TransferService transfer;

	@Autowired
	PurchaseMasterService purchasemasterservice;

	@Autowired
	PurchaseTransService purchasetransservice;
	
	@Autowired
	UserOrderService userorderservice;
	
	@Autowired
	private UserService userservice;

//	@Autowired
//	private SecurityService securityService;
//
//	@Autowired
//	private UserValidator userValidator;

	@GetMapping("/home")
    public String adminHome() {
    	if (WebSecurityConfig.isAuthenticated()) {
    		
			return "redirect:/admin/dashboard";
		}
    	return "redirect:/login";
    }
	@RequestMapping(value="/dashboard",method= {RequestMethod.POST,RequestMethod.GET})
	public String home(HttpServletRequest request, ModelMap model) {
		long hallcnt=hallservice.count();
		long partycnt=partyservice.count();
    	long usercnt=userservice.count();
		long orders=purchasemasterservice.count();
		long services=serviceservice.count();
		double amount=userservice.getAdminAmount();
		List<UserDTO> users=userservice.findAll();
		
	    model.addAttribute("halls", hallcnt);
		model.addAttribute("parties", partycnt);
		model.addAttribute("services", services);
		model.addAttribute("orders", orders);
		model.addAttribute("sales", amount);
		model.addAttribute("subscribers",usercnt);
		model.addAttribute("users", users);
		return "adminhome";
	}
	
	@PostMapping("/order")
	public String orders(HttpServletRequest request, ModelMap model) {
		List<UserOrders> user=userorderservice.findAll();
		model.addAttribute("userorders", user);
		
		return "userorders";
	}
	
	@PostMapping("/generateReport")
	public String generateReport(HttpServletRequest request,ModelMap model) {
    	List<UserOrders> user=userorderservice.findAll();
    	ExcelGeneration excel=new ExcelGeneration();
		excel.WriteFile(user);
		MailService ms=new MailService();
		ms.NotificationToAdmin();
		model.addAttribute("userorders", user);
		return "userorders";
	}
	
	
	
	@RequestMapping("/party")
	public String party(ModelMap model) {
		List<PartyDTO> parties = partyservice.display();
		model.addAttribute("parties",parties);
		return "adminparty";
	}
	
	@RequestMapping("/newparty")
	public String addnewparty(@RequestParam("partyname") String partyname, @RequestParam("partyimg") String partyimg, ModelMap model) {
		PartyDTO party = PartyDTO.createInstance();
		party.setPartyname(partyname);
		party.setPartyimg(partyimg);
		partyservice.addparty(party);
		List<PartyDTO> parties = partyservice.display();
		model.addAttribute("parties",parties);
		return "adminparty";
	}
	
	@RequestMapping("/searchparty")
	public String searchparty(@RequestParam("partyid") int partyid, ModelMap model) {
		PartyDTO party = partyservice.findById(partyid);
		model.addAttribute("party", party);
		List<PartyDTO> parties = partyservice.display();
		model.addAttribute("parties",parties);
		return "adminparty";
	}
		
	@RequestMapping("/deleteparty")
	public String deleteparty(@RequestParam("partyid") int partyid, ModelMap model) {
		if(partyservice.existById(partyid))
		{
			partyservice.deleteparty(partyid);
			serviceservice.deleteByParty(partyid);
		}
		else
		{
			model.addAttribute("msg", "No such partyid found!");
		}
		
		List<PartyDTO> parties = partyservice.display();
		model.addAttribute("parties",parties);
		return "adminparty";
	}
	
	@RequestMapping("/service")
	public String service(ModelMap model) {
		List<ServiceDTO> services = serviceservice.findAll();
		model.addAttribute("services",services);
		return "adminservice";
	}
	
	@RequestMapping("/newservice")
	public String addnewservice(@RequestParam("partyid") int partyid, @RequestParam("serviceid") int serviceid, @RequestParam("servicecost") double servicecost, @RequestParam("serviceimg") String serviceimg, @RequestParam("servicename") String servicename,  ModelMap model) {
		ServiceDTO service = ServiceDTO.createInstance();
		if(!partyservice.existById(partyid)) {
			model.addAttribute("msg", "No such party exist!");
		
		}
		else
		{
			CompKey ck = new CompKey(partyid,serviceid);
			if(serviceservice.existById(ck)) {
				model.addAttribute("msg", "Serviceid already exists in party!");
			}
			else
			{
				service.setCompkey(ck);
				service.setServicecost(servicecost);
				service.setServiceimg(serviceimg);
				service.setServicename(servicename);
				serviceservice.addservice(service);
			}			
		}
		List<ServiceDTO> services = serviceservice.findAll();
		model.addAttribute("services",services);
		return "adminservice";
	}
	
	@RequestMapping("/searchservice")
	public String searchservice(@RequestParam("partyid") int partyid, @RequestParam("serviceid") int serviceid, ModelMap model) {
		List<ServiceDTO> services = serviceservice.findAll();
		model.addAttribute("services",services);
		CompKey ck = new CompKey(partyid,serviceid);
		if(serviceservice.existById(ck)) {
			ServiceDTO service = serviceservice.findById(ck);
			model.addAttribute("service", service);
		}
		else {
			model.addAttribute("msg", "Invalid partyid or serviceid!");
		}		
		return "adminservice";
	}
	
	@RequestMapping("/editservice")
	public String editservice(@RequestParam("partyid") int partyid, @RequestParam("serviceid") int serviceid, @RequestParam("servicecost") double servicecost, @RequestParam("serviceimg") String serviceimg, @RequestParam("servicename") String servicename, ModelMap model) {
		ServiceDTO service = ServiceDTO.createInstance();
		CompKey ck = new CompKey(partyid,serviceid);
		if(serviceservice.existById(ck)) {
			service.setCompkey(ck);
			service.setServicecost(servicecost);
			service.setServiceimg(serviceimg);
			service.setServicename(servicename);
			serviceservice.addservice(service);
		}
		else {
			model.addAttribute("msg", "Partyid and Serviceid already exists!");
		}
		
		List<ServiceDTO> services = serviceservice.findAll();
		model.addAttribute("services",services);
		return "adminservice";
	}
	
	@RequestMapping("/deleteservice")
	public String deleteservice(@RequestParam("partyid") int partyid, @RequestParam("serviceid") int serviceid, ModelMap model) {
		CompKey ck = new CompKey(partyid,serviceid);
		if(serviceservice.existById(ck)) {
			serviceservice.deleteservice(ck);
		}
		else {
			model.addAttribute("msg", "Invalid partyid or serviceid!");
		}
		
		List<ServiceDTO> services = serviceservice.findAll();
		model.addAttribute("services",services);
		return "adminservice";
	}
	
	@RequestMapping("/hall")
	public String hall(ModelMap model) {
		List<HallDTO> halls = hallservice.findAll();
		model.addAttribute("halls", halls);
		return "adminhall";
	}
	
	@RequestMapping("/searchhall")
	public String searchhall(@RequestParam("hallid") int hallid, ModelMap model) {
		List<HallDTO> halls = hallservice.findAll();
		model.addAttribute("halls", halls);
		if(hallservice.existById(hallid)) {
			HallDTO hall = hallservice.findByHallId(hallid);
			model.addAttribute("hall",hall);
		}
		else
		{
			model.addAttribute("msg", "No such hall exists..Refer the table below.");		
		}
		return "adminhall";
	}
	
	@RequestMapping("/edithall")
	public String edithall(@RequestParam("hallid") int hallid, @RequestParam("AC") double AC, @RequestParam("accomodation") int accomodation, @RequestParam("hallcost") double hallcost, @RequestParam("hallimg") String hallimg, ModelMap model) {
		HallDTO hall = new HallDTO(hallid, hallimg, accomodation, AC, hallcost);
		if(hallservice.existById(hallid)) {
			hallservice.editHall(hall);
		}
		else
		{
			model.addAttribute("msg", "No such hall exists..Refer the table below.");		
		}
		
		List<HallDTO> halls = hallservice.findAll();
		model.addAttribute("halls", halls);
		return "adminhall";
	}
	
	@RequestMapping("/date")
	public String date(ModelMap model) {
		List<BookingDTO> books=bookingservice.display();
		model.addAttribute("bookings",books);
		model.addAttribute("msg","Select a date to insert..");
		return "admindate";
	}
	@RequestMapping("/adddate")
	public String addDate(@RequestParam("datesel") Date date,ModelMap model) throws Exception {
		System.out.println(date);
		if(bookingservice.findByDate(date)==null)
		{
			BookingDTO book=new BookingDTO(date,0,0,0,0,0,0);
			bookingservice.save(book);	
			model.addAttribute("msg","Date inserted successfully!");
		}
		else
		{
			model.addAttribute("msg","Date already exists");
		}
		List<BookingDTO> books=bookingservice.display();
		model.addAttribute("bookings",books);
		
		return "admindate";
	}

}
