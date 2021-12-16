package mycom;

import java.sql.Date;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import com.components.MailService;
import com.components.PDFGeneration;
import com.components.UserValidator;
import com.model.BookingDTO;
import com.model.CompKey;
import com.model.CompKeyTrans;
import com.model.HallDTO;
import com.model.PartyDTO;
import com.model.PurchaseMasterDTO;
import com.model.PurchaseTransDTO;
import com.model.ServiceDTO;
import com.model.UserDTO;
import com.service.BookingService;
import com.service.HallService;
import com.service.PartyService;
import com.service.PurchaseMasterService;
import com.service.PurchaseTransService;
import com.service.SecurityService;
import com.service.ServiceService;
import com.service.TransferService;
import com.service.UserService;
import com.service.UserServiceImpl;
@Controller
@Scope("session")
public class UserController {
    Logger logger=Logger.getLogger(UserController.class.getName());
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
    private UserService userservice;
    @Autowired
    private SecurityService securityService;
    @Autowired
    private UserValidator userValidator;
    @GetMapping("/registration")
    public String registration(Model model) {
        if (WebSecurityConfig.isAuthenticated()) {
            return "redirect:/party";
        }
        model.addAttribute("userForm", new UserDTO());
        return "registration";
    }
        
    @PostMapping("/registration")
    public String registration(@ModelAttribute("userForm") UserDTO userForm, BindingResult bindingResult) {
        userValidator.validate(userForm, bindingResult);
        if (bindingResult.hasErrors()) {
            return "registration";
        }
        userservice.save(userForm);
        securityService.autoLogin(userForm.getUsername(), userForm.getPasswordConfirm());
        return "redirect:/party";
    }
    
    @GetMapping("/login")
    public String login(HttpServletRequest request,Model model, String error, String logout) {
        if (WebSecurityConfig.isAuthenticated()) {
            return "redirect:/party";
        }
        if (error != null)
            model.addAttribute("error", "Your username and password is invalid.");
        if (logout != null) {
            model.addAttribute("message", "You have been logged out successfully.");
             logger.info("Logged out successfully at : " + new java.util.Date());
        }
        UserDTO user=new UserDTO();
		user.setUsername("Administrator");
		user.setMailid("paradisepoint.event@gmail.com");
		user.setPassword("secret");
		user.setFlag(0);
		userservice.save(user);
		List<PartyDTO> parties = partyservice.display();
		if(parties.size()==0) {
			PartyDTO party1=new PartyDTO();
			party1.setPartyname("Birthday Party");
			party1.setPartyimg("https://cdn.venuelook.com/images/new-home-images/cake.png");
			partyservice.addparty(party1);
			int j=party1.getPartyid();
			int i;
			
			List<String> servicename = new ArrayList<>(Arrays.asList("Birthday cake","Decoration","Bounce house","Food","Photography","Return Gifts","Music System","Event Management"));
			List<String> serviceimg = new ArrayList<>(Arrays.asList("http://3.bp.blogspot.com/-R44MT2ozVUU/UaTRvjJEVGI/AAAAAAAAAPE/QOmbxEs37Kw/s1600/0.jpg","https://m.media-amazon.com/images/I/61HsfAI2pJL._SL1100_.jpg","https://c1.wallpaperflare.com/preview/694/911/742/bouncy-castle-air-cushion-inflatable-soft.jpg","https://media.istockphoto.com/photos/catering-food-wedding-event-table-picture-id650655146?b=1&k=20&m=650655146&s=170667a&w=0&h=tYzhIriE-IzxUv8coABq_hafpVknNckUZqAdRdz7v5E=","https://image.freepik.com/free-photo/indian-photographer-man-holding-his-camera-white-background_231208-3771.jpg","https://media.istockphoto.com/photos/multicolored-and-beribboned-gift-boxes-in-pile-picture-id183510983?k=20&m=183510983&s=612x612&w=0&h=WAY9a_5aXJyqgNdUh2BH01eyB02nufrhKvfwYRev4gE=","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrJgxQb1t0hsR9HzOyqch76zNiAjzH2gzk-3lsFGvxIScpsO7LZ4XLq1riIDGj-7z8k0Q&usqp=CAU","https://blog.edqart.com/wp-content/uploads/2018/09/Events.jpg"));
			List<Integer> servicecost = new ArrayList<>(Arrays.asList(2000,1500,3000,8000,7000,5000,8000,12000));
			for(i=1;i<=8;i++)
			{
				CompKey ck=new CompKey(j,i);
				ServiceDTO service=new ServiceDTO();
				service.setCompkey(ck);
				service.setServicename(servicename.get(i-1));
				service.setServiceimg(serviceimg.get(i-1));
				service.setServicecost(servicecost.get(i-1));
				serviceservice.addservice(service);
			}
					
        }
        List<HallDTO> halls=hallservice.findAll();
        if(halls.size()==0)
        {
        	 HallDTO hall1 = new HallDTO(1,"https://www.redelephantreps.com/wp-content/uploads/2019/11/sokha-wedding-1.jpg",1500,5000,20000);
             HallDTO hall2 = new HallDTO(2,"https://5.imimg.com/data5/YD/BE/SS/SELLER-10323695/grand-wedding-hall-500x500.jpg",1000,4000,15000);
             HallDTO hall3 = new HallDTO(3,"https://image.wedmegood.com/resized/800X/uploads/member/691744/1567158626_Screenshot_5.jpg",1200,4500,13000);
             HallDTO hall4 = new HallDTO(4,"https://media.weddingz.in/images/a72808402a1d05ebdfac8cd55a188aa6/small-banquet-halls-in-bangalore-to-host-happening-parties-you-cant-keep-calm-here.jpg",800,3000,12000);
             HallDTO hall5 = new HallDTO(5,"https://media.weddingz.in/images/8674f112d0f5ec5d60a684a2c5b3fe9d/top-10-banquet-halls-in-bangalore-3.jpg",500,2000,9000);
             HallDTO hall6 = new HallDTO(6,"https://images.unsplash.com/photo-1519167758481-83f550bb49b3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fHdlZGRpbmclMjB2ZW51ZXxlbnwwfHwwfHw%3D&w=1000&q=80",200,1000,5000);
             hallservice.editHall(hall1);
             hallservice.editHall(hall2);
             hallservice.editHall(hall3);
             hallservice.editHall(hall4);
             hallservice.editHall(hall5);
             hallservice.editHall(hall6); 
             BookingDTO book=new BookingDTO(Date.valueOf("2022-01-01"),0,0,0,0,0,0);
             bookingservice.save(book);
        }
       
        return "login";		
    }
    
    @GetMapping("/logindetails")
    public String defaultEntries() {
    	UserDTO user=new UserDTO();
		user.setUsername("Administrator");
		user.setMailid("paradisepoint.event@gmail.com");
		user.setPassword("secret");
		user.setFlag(0);
		userservice.save(user);
		List<PartyDTO> parties = partyservice.display();
		if(parties.size()==0) {
			PartyDTO party1=new PartyDTO();
			party1.setPartyname("Birthday Party");
			party1.setPartyimg("https://cdn.venuelook.com/images/new-home-images/cake.png");
			partyservice.addparty(party1);
			
			int i;
			
			List<String> servicename = new ArrayList<>(Arrays.asList("Birthday cake","Decoration","Bounce house","Food","Photography","Birthday cake","Return Gifts","Event Management"));
			List<String> serviceimg = new ArrayList<>(Arrays.asList("http://3.bp.blogspot.com/-R44MT2ozVUU/UaTRvjJEVGI/AAAAAAAAAPE/QOmbxEs37Kw/s1600/0.jpg","https://m.media-amazon.com/images/I/61HsfAI2pJL._SL1100_.jpg","Bounce house","https://c1.wallpaperflare.com/preview/694/911/742/bouncy-castle-air-cushion-inflatable-soft.jpg","https://media.istockphoto.com/photos/catering-food-wedding-event-table-picture-id650655146?b=1&k=20&m=650655146&s=170667a&w=0&h=tYzhIriE-IzxUv8coABq_hafpVknNckUZqAdRdz7v5E=","https://image.freepik.com/free-photo/indian-photographer-man-holding-his-camera-white-background_231208-3771.jpg","https://media.istockphoto.com/photos/multicolored-and-beribboned-gift-boxes-in-pile-picture-id183510983?k=20&m=183510983&s=612x612&w=0&h=WAY9a_5aXJyqgNdUh2BH01eyB02nufrhKvfwYRev4gE=","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrJgxQb1t0hsR9HzOyqch76zNiAjzH2gzk-3lsFGvxIScpsO7LZ4XLq1riIDGj-7z8k0Q&usqp=CAU","https://blog.edqart.com/wp-content/uploads/2018/09/Events.jpg"));
			List<Integer> servicecost = new ArrayList<>(Arrays.asList(2000,1500,3000,8000,7000,5000,8000,12000));
			for(i=1;i<=8;i++)
			{
				CompKey ck=new CompKey(1,i);
				ServiceDTO service=new ServiceDTO();
				service.setCompkey(ck);
				service.setServicename(servicename.get(i-1));
				service.setServiceimg(serviceimg.get(i-1));
				service.setServicecost(servicecost.get(i-1));
				serviceservice.addservice(service);
			}
					
        }
        List<HallDTO> halls=hallservice.findAll();
        if(halls.size()==0)
        {
        	 HallDTO hall1 = new HallDTO(1,"https://www.redelephantreps.com/wp-content/uploads/2019/11/sokha-wedding-1.jpg",1500,5000,20000);
             HallDTO hall2 = new HallDTO(2,"https://5.imimg.com/data5/YD/BE/SS/SELLER-10323695/grand-wedding-hall-500x500.jpg",1000,4000,15000);
             HallDTO hall3 = new HallDTO(3,"https://image.wedmegood.com/resized/800X/uploads/member/691744/1567158626_Screenshot_5.jpg",1200,4500,13000);
             HallDTO hall4 = new HallDTO(4,"https://media.weddingz.in/images/a72808402a1d05ebdfac8cd55a188aa6/small-banquet-halls-in-bangalore-to-host-happening-parties-you-cant-keep-calm-here.jpg",800,3000,12000);
             HallDTO hall5 = new HallDTO(5,"https://media.weddingz.in/images/8674f112d0f5ec5d60a684a2c5b3fe9d/top-10-banquet-halls-in-bangalore-3.jpg",500,2000,9000);
             HallDTO hall6 = new HallDTO(6,"https://images.unsplash.com/photo-1519167758481-83f550bb49b3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fHdlZGRpbmclMjB2ZW51ZXxlbnwwfHwwfHw%3D&w=1000&q=80",200,1000,5000);
             hallservice.editHall(hall1);
             hallservice.editHall(hall2);
             hallservice.editHall(hall3);
             hallservice.editHall(hall4);
             hallservice.editHall(hall5);
             hallservice.editHall(hall6);
             
        }
       
        
        return "login";		
    }
    
    @GetMapping({"/","/welcome"})
    public String welcome(Model model) {
        if (!WebSecurityConfig.isAuthenticated()) {
        	
            return "redirect:/login";
        }
        return "redirect:/party";
    }
    
    // party
    @RequestMapping("/party")
    public String home(HttpServletRequest request, ModelMap model) {
    	
    	List<PartyDTO> parties = partyservice.display();        
        model.addAttribute("parties", parties);
        return "party";
    }
    
    // searching
    @RequestMapping(value = { "/{partyid}-search" }, method = RequestMethod.POST)
    public String search(@PathVariable int partyid, HttpServletRequest request, ModelMap model) {
        HttpSession session = request.getSession();
        session.setAttribute("partyid", partyid);
        return "search";
    }
    // Hallsearch
    @RequestMapping(value = { "/hall" }, method = RequestMethod.POST)
    public String hall(HttpServletRequest request, ModelMap model) {
        List<HallDTO> halls = hallservice.display();
        model.addAttribute("halls", halls);
        return "hall";
    }
    // DateSearch
    @RequestMapping(value = { "/date" }, method = RequestMethod.POST)
    public String dateSearch(HttpServletRequest request, ModelMap model) {
        model.addAttribute("msg", "No date selected...");
        return "date";
    }
    // DateHallSearch
    @RequestMapping(value = { "/dateselect" }, method = RequestMethod.POST)
    public String dateHallDisplay(@RequestParam("datesel") Date date, HttpServletRequest request, ModelMap model)
            throws Exception {
        HttpSession session = request.getSession();
        session.setAttribute("date", date);
        BookingDTO availhall = bookingservice.findByDate(date);
        if (availhall== null) {
            model.addAttribute("msg", "Sorry! Date not available..");
            return "date";
        }
        List<HallDTO> halls = new ArrayList<>();
        if (availhall.getHall1() == 0)
            halls.add(hallservice.findByHallId(1));
        if (availhall.getHall2() == 0)
            halls.add(hallservice.findByHallId(2));
        if (availhall.getHall3() == 0)
            halls.add(hallservice.findByHallId(3));
        if (availhall.getHall4() == 0)
            halls.add(hallservice.findByHallId(4));
        if (availhall.getHall5() == 0)
            halls.add(hallservice.findByHallId(5));
        if (availhall.getHall6() == 0)
            halls.add(hallservice.findByHallId(6));
        if (halls.size() == 0) {
            model.addAttribute("msg", "Sorry! All halls are booked..");
            return "date";
        }
        model.addAttribute("msg", "You prefer to find halls on " + date);
        model.addAttribute("halls", halls);
        return "date";
    }
    // choose service
    @RequestMapping(value = { "/{hallid}-service1" }, method = RequestMethod.POST)
    public String service1(@PathVariable int hallid, HttpServletRequest request, ModelMap model) {
        HttpSession session = request.getSession();
        int partyid = (int) session.getAttribute("partyid");
        List<ServiceDTO> services = serviceservice.findAllService(partyid);
        System.out.println(services);
        session.setAttribute("hallid", hallid);
        model.addAttribute("services", services);
        return "service";
    }
    @RequestMapping(value = { "/{date}-service2" }, method = RequestMethod.POST)
    public String service2(@PathVariable Date date, HttpServletRequest request, ModelMap model) {
        HttpSession session = request.getSession();
        session.setAttribute("date", date);
        int partyid = (int) session.getAttribute("partyid");
        List<ServiceDTO> services = serviceservice.findAllService(partyid);
        System.out.println(services);
        model.addAttribute("services", services);
        return "service";
    }
    // AvailableDates
    @RequestMapping(value = { "/{hallid}-date" }, method = RequestMethod.POST)
    public String availaledate(@PathVariable int hallid, HttpServletRequest request, ModelMap model) throws Exception {
        HttpSession session = request.getSession();
        String hall = "hall" + String.valueOf(hallid);
        List<Date> dates = bookingservice.vacant(hall);
        model.addAttribute("dates", dates);
        model.addAttribute("hallid", hallid);
        session.setAttribute("hallid", hallid);
        return "book";
    }
    // bill generation
    @RequestMapping(value = { "/bill" }, method = { RequestMethod.GET, RequestMethod.POST })
    public String bill(@RequestParam("uname") String uname,@RequestParam("service") List<Integer> serviceid, HttpServletRequest request, ModelMap model)
            throws Exception {
        System.out.println(serviceid);
        double totalcost = 0;
        HttpSession session = request.getSession();
        int hallid = (int) session.getAttribute("hallid");
        int partyid = (int) session.getAttribute("partyid");
        HallDTO hall = hallservice.findByHallId(hallid);
        UserDTO user = userservice.findByUsername(uname);
        List<CompKey> serviceck = new ArrayList<>();
        for (int i = 0; i < serviceid.size(); i++) {
            CompKey ck = new CompKey(partyid, serviceid.get(i));
            serviceck.add(ck);
        }
        List<ServiceDTO> services = serviceservice.getCost(serviceck);
        for (int i = 0; i < services.size(); i++) {
            totalcost += services.get(i).getServicecost();
        }
        totalcost += hall.getHallcost() + hall.getAC();
        session.setAttribute("services", services);
        session.setAttribute("totalcost", totalcost);
        model.addAttribute("uname", user.getUsername());
        model.addAttribute("hall", hall);
        model.addAttribute("services", services);
        model.addAttribute("totalcost", totalcost);
        logger.info("User " + uname +" has booked hall " + hall.getHallid() +" for total cost of " + totalcost );
        return "bill";
    }
    
    //delete
    @RequestMapping(value= {"/delete"}, method=RequestMethod.POST)
    public String delete(@RequestParam("uname") String uname, @RequestParam("delpartyid") int delpartyid, @RequestParam("delserviceid") int delserviceid,HttpServletRequest request, ModelMap model) {
    	System.out.println(delpartyid+":"+delserviceid);
    	HttpSession session = request.getSession();
    	
    	double totalcost = (double) session.getAttribute("totalcost");
    	int hallid = (int) session.getAttribute("hallid");
    	HallDTO hall = hallservice.findByHallId(hallid);
    	
    	List<ServiceDTO> services = (List<ServiceDTO>) session.getAttribute("services");
    	
    	for(int i=0;i<services.size();i++) {
    		if(services.get(i).getCompkey().getPartyid()==delpartyid && services.get(i).getCompkey().getServiceid()==delserviceid) {
    			totalcost-=services.get(i).getServicecost();
    			services.remove(i);
    			break;
    		}
    	}
    	
    	session.setAttribute("services", services);
    	session.setAttribute("totalcost", totalcost);
    	
    	model.addAttribute("uname", uname);
        model.addAttribute("hall", hall);
        model.addAttribute("services", services);
        model.addAttribute("totalcost", totalcost);
    	return "bill";
    }
    
    // payment
    @RequestMapping(value = { "/pay" }, method = RequestMethod.POST)
    public String payment(HttpServletRequest request, ModelMap model) {
        logger.info("payment done successfully");
        return "payment";
    }
    // payment transaction
    @RequestMapping(value = { "/transfer" }, method = RequestMethod.POST)
    public String paymentTransfer(@RequestParam("uname") String uname,HttpServletRequest request, ModelMap model) {
        System.out.println("In payment method...");
        // String serviceid[] = serviceids.split("-");
        HttpSession session = request.getSession();
        
        double totalcost = (double) session.getAttribute("totalcost");
        int hallid = (int) session.getAttribute("hallid");
        Date date = (Date) session.getAttribute("date");
        int partyid = (int) session.getAttribute("partyid");
        List<ServiceDTO> services = (List<ServiceDTO>) session.getAttribute("services");
        // List<CompKey> serviceck = new ArrayList<>();
        
        try {
            UserDTO user = userservice.findByUsername(uname);
            UserDTO admin = userservice.findByUsername("Administrator");
            transfer.doMoneyTransfer(admin.getUid(), user.getUid(), totalcost);
            // add to purchase master
            PurchaseMasterDTO purchasemasterDTO = PurchaseMasterDTO.createInstance();
            purchasemasterDTO.setUid(user.getUid());
            purchasemasterDTO.setHallid(hallid);
            purchasemasterDTO.setDate(date);
            purchasemasterDTO.setCost(totalcost);
            purchasemasterservice.createMaster(purchasemasterDTO);
            // add to purchase trans
            int purchaseid = purchasemasterDTO.getPurchaseid();
            System.out.println(purchaseid + " " + partyid);
            for (int i = 0; i < services.size(); i++) {
                CompKeyTrans ck = new CompKeyTrans(purchaseid, services.get(i).getCompkey().getServiceid());
                PurchaseTransDTO purchasetransDTO = PurchaseTransDTO.createInstance();
                purchasetransDTO.setCompkey(ck);
                purchasetransDTO.setPartyid(partyid);
                purchasetransservice.createTrans(purchasetransDTO);
//              CompKey sck = new CompKey(partyid, Integer.parseInt(serviceid[i]));
//              serviceck.add(sck);
            }
            // update in booking table
            String hall = "hall" + Integer.toString(hallid);
            bookingservice.updateStatus(date, hall);
            // generate PDF
            // uid
            // today's date
            // hall cost-accomodation-AC
            // add services-table
            // s.no-sevicename-cost
            // totalcost
            for (int i = 0; i < services.size(); i++) {
                System.out.println(services.get(i).getServicename());
            }
            PDFGeneration pdf = new PDFGeneration();
            pdf.generatePDF(user, purchaseid, hallservice.findByHallId(hallid), services, totalcost);
            // send mail
            MailService mail = new MailService();
            mail.Notification(user.getMailid(), purchaseid);
            logger.info("Bill generated successfully");
            return "success";
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "failure";
    }
}