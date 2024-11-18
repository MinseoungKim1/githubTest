package kr.co.dong;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;



import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class MainController {
	
	private static final Logger logger = LoggerFactory.getLogger(MainController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String main() {
		return "main";
	}
	
	
	@RequestMapping(value="/shopGrid", method = RequestMethod.GET)
	public String shop_grid() {
		
		return "shopGrid";
	}
	
	@RequestMapping(value="/shopDetails", method = RequestMethod.GET)
	public String shopDetails() {
		
		return "shopDetails";
	}
	
	@RequestMapping(value="/shoppingCart", method = RequestMethod.GET)
	public String shoppingCart() {
		
		return "shoppingCart";
	}
	
	@RequestMapping(value="/checkout", method = RequestMethod.GET)
	public String checkout() {
		
		return "checkout";
	}
	
	@RequestMapping(value="/blogDetails", method = RequestMethod.GET)
	public String blogDetails() {
		
		return "blogDetails";
	}
	
	@RequestMapping(value="/blog", method = RequestMethod.GET)
	public String blog() {
		
		return "blog";
	}
	
	@RequestMapping(value="/contact", method = RequestMethod.GET)
	public String contact() {
		
		return "contact";
	}
	
	@RequestMapping(value="/projectLogin", method = RequestMethod.GET)
	public String projectLogin() {
		
		return "projectLogin";
	}
	
	@RequestMapping(value="/myPage", method = RequestMethod.GET)
	public String myPage() {
		
		return "myPage";
	}
	
	@RequestMapping(value="/review", method = RequestMethod.GET)
	public String review() {
		
		return "review";
	}
	
}







