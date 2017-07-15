package service;

import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

import model.Product;

public class LoadProdData 
{
	public static List<Product> ProdList;
	
		static{
			Product p1=new Product();
			p1.setId((int)1);
			p1.setBrand("SamSung");
			p1.setName("Galaxy S8");
			p1.setDescription("Very Huge");
			p1.setPrice(64000.00);
			
			Product p2=new Product();
			p2.setId((int)2);
			p2.setBrand("Nokia");
			p2.setName("Nokia 1260");
			p2.setDescription("Very Dramatic");
			p2.setPrice(64000.00);
			
			Product p3=new Product();
			p3.setId((int)3);
			p3.setBrand("Lenovo");
			p3.setName("Lenovo Vibe");
			p3.setDescription("Note Grey");
			p3.setPrice(20900.00);
			
			Product p4=new Product();
			p4.setId((int)4);
			p4.setBrand("Oppo");
			p4.setName("F1s Duos");
			p4.setDescription("Galaxy F8 Midnight");
			p4.setPrice(15849.00);
			
			Product p5=new Product();
			p5.setId((int)5);
			p5.setBrand("Hp");
			p5.setName("Hp Core");
			p5.setDescription("6th Gen Core i3");
			p5.setPrice(15849.00);
			
			Product p6=new Product();
			p6.setId((int)6);
			p6.setBrand("Dell");
			p6.setName("Dell Black");
			p6.setDescription("Amazing Battery Life");
			p6.setPrice(15849.00);
			
			ProdList=new LinkedList<Product>();
			ProdList.add(p1);
			ProdList.add(p2);
			ProdList.add(p3);
			ProdList.add(p4);
			ProdList.add(p5);
			ProdList.add(p6);
		}
		public List<Product> getProdList()
		{
			return ProdList;
		}
	
}
