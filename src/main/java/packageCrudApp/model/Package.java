package packageCrudApp.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Package {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int package_Id;
	private String package_Name;
	private String package_Details;
	private Long package_Price;
	private int tour_Days;
	public int getPackage_Id() {
		return package_Id;
	}
	public void setPackage_Id(int package_Id) {
		this.package_Id = package_Id;
	}
	public String getPackage_Name() {
		return package_Name;
	}
	public void setPackage_Name(String package_Name) {
		this.package_Name = package_Name;
	}
	public String getPackage_Details() {
		return package_Details;
	}
	public void setPackage_Details(String package_Details) {
		this.package_Details = package_Details;
	}
	public Long getPackage_Price() {
		return package_Price;
	}
	public void setPackage_Price(Long package_Price) {
		this.package_Price = package_Price;
	}
	public int getTour_Days() {
		return tour_Days;
	}
	public void setTour_Days(int tour_Days) {
		this.tour_Days = tour_Days;
	}
	public Package(int package_Id, String package_Name, String package_Details, Long package_Price, int tour_Days) {
		super();
		this.package_Id = package_Id;
		this.package_Name = package_Name;
		this.package_Details = package_Details;
		this.package_Price = package_Price;
		this.tour_Days = tour_Days;
	}
	public Package() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Package [package_Id=" + package_Id + ", package_Name=" + package_Name + ", package_Details="
				+ package_Details + ", package_Price=" + package_Price + ", tour_Days=" + tour_Days + "]";
	}
	
	
}
