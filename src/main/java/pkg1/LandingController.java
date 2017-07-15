package pkg1;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;

@Controller
public class LandingController
{
	@RequestMapping("/")
	public String landPage()
	{
		return "Landing";
	}
	@RequestMapping("/Landing")
	public String homePage()
	{
		return "Landing";
	}
}
/*public class LandingController extends AbstractController{

	@Override
	protected ModelAndView handleRequestInternal(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView model=new ModelAndView("Landing");
		//model.addObject("key1","Niit!");
		//model.addObject("key2","Welcome to Java World");
		
		return model;
	}
	
}*/