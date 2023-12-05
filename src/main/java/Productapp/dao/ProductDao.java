package Productapp.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import Productapp.model.Product;

@Component
public class ProductDao {

	@Autowired
	private HibernateTemplate template;
	
	
	@Transactional
	public void createProduct(Product product)
	
	{
		Integer i=(Integer)this.template.save(product);
		return;
		
	}
	  public Product getById(int Productid)
      {
      Product Product =  (Product)this.template.get(Product.class, Productid);
       return Product;
      
      }   
	   public List<Product> getProducts(){
       	

	       List<Product> list =new  ArrayList<Product>();
	       list = this.template.loadAll(Product.class);
	       return list;
	        
	        }
		
        
      
	   
	   
        @Transactional  
        public void deleteProduct(int Productid)
        {
		    Product Product1 =  (Product)this.template.load(Product.class, Productid);
        	template.delete(Product1); 
        	}  
	   
	   
	   
	   
}
