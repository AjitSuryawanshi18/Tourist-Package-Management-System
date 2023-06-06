package packageCrudApp.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import packageCrudApp.model.Package;


@Component
public class PackageDao {

	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	
	//for create Packages
	@Transactional
	public void createPackages(Package packages) {
		this.hibernateTemplate.saveOrUpdate(packages);
	}
	
	//get one Package
	public Package getOnePackage(int pid) {
		return this.hibernateTemplate.get(Package.class,pid);
	}
	
	//get All products
	public List<Package> getPackages(){
		List packages =this.hibernateTemplate.loadAll(Package.class);
		return packages;
	}
	// delete one package
	@Transactional
	public void deleteOnePackage(int pid) {
		Package p=this.hibernateTemplate.load(Package.class,pid);
		hibernateTemplate.delete(p);
	}
}
