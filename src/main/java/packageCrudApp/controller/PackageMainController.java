package packageCrudApp.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import packageCrudApp.dao.PackageDao;
import packageCrudApp.model.Package;




@Controller
public class PackageMainController {

	@Autowired
	private PackageDao packageDao;
	
	@RequestMapping("/")
	public String home(Model model) {
		List<Package> packages = packageDao.getPackages();
		model.addAttribute("packages",packages);
		model.addAttribute("title","Tourists Packages Management System");

		return "index";
	}
	//add package
		@RequestMapping("/add-package")
		public String addPackage(Model m) {
			m.addAttribute("title"," Add new Tourists Package");
			return "add_package_form";
		}
		
		//handle add_package_form 
		@RequestMapping(value="/handle-package",method =RequestMethod.POST)
		public RedirectView handlePackage(@ModelAttribute Package packages,HttpServletRequest request) {
			System.out.println(packages);
			packageDao.createPackages(packages);
			RedirectView redirectView =new RedirectView();
			redirectView.setUrl(request.getContextPath()+"/");
			return redirectView;
		}
		
		// delete handler
		@RequestMapping("/delete/{packageId}")
		public RedirectView deleteProduct(@PathVariable("packageId") int packageId ,HttpServletRequest request) {
			
			this.packageDao.deleteOnePackage(packageId);
			RedirectView redirectView =new RedirectView();
			redirectView.setUrl(request.getContextPath()+"/");
			return redirectView;
			
		}
		
		//updatehandler
		@RequestMapping("/update/{packageId}")
		public String updateform(@PathVariable("packageId") int pid ,Model model) {
			Package package1=this.packageDao.getOnePackage(pid);
			model.addAttribute("title","update Existing Tourists Package");
			model.addAttribute("packages", package1);
			return "update_form";
		}
}
