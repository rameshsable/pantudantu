package com.xanandu.pantudantu.servicetax;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.xanandu.pantudantu.model.ServiceTax;
import com.xanandu.pantudantu.model.UserModel;



@Repository("ServiceTaxDao")
public class ServiceTaxDaoImpl implements ServiceTaxDao{



	@Autowired
	private SessionFactory sessionFactory;
	public int getServicetaxByTax(double tax){
		Session session=sessionFactory.openSession();
		Criteria criteria=session.createCriteria(ServiceTax.class);
		criteria.add(Restrictions.eq("tax", tax));
		ServiceTax serviceTax =(ServiceTax) criteria.uniqueResult();
		return serviceTax.getId();
		
	}
		

}
