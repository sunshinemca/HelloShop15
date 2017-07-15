package Dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import model.Product;

import java.util.List;

import org.hibernate.SessionFactory;
import org.hibernate.criterion.Projections;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class ProductDAO {
	@Autowired
	private SessionFactory sessionFactory;

	@SuppressWarnings("unchecked")
	@Transactional
	public List<Product> list(Integer offset, Integer maxResults)
	{
		return sessionFactory.openSession().createCriteria(Product.class)
	.setFirstResult(offset!=null?offset:0)
	.setMaxResults(maxResults!=null?maxResults:10)
	.list();
	}
	
	
	public Long count()
	{
	return (Long)sessionFactory.openSession()
	.createCriteria(Product.class)
	.setProjection(Projections.rowCount())
	.uniqueResult();
	}
	
	
	public void save()
	{
	/*for(int itr=1;itr <= 100;itr++)
	{
		Product product=null;
	//Product product = new Product("Product_"+itr,Math.max(25, (itr%2)*35));
		sessionFactory.openSession().save(product);
	  }*/
	
	}
}
