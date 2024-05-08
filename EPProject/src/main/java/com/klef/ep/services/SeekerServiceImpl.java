package com.klef.ep.services;

import java.util.List;

import javax.ejb.Stateless;
import javax.ejb.TransactionManagement;
import javax.ejb.TransactionManagementType;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

import com.klef.ep.models.Seeker;

@Stateless
@TransactionManagement(TransactionManagementType.BEAN)
public class SeekerServiceImpl  implements SeekerService
{
	public String addSeeker(Seeker emp) 
	{
	  EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpa");
   	  EntityManager em = emf.createEntityManager();
   	  
   	  em.getTransaction().begin();
   	  em.persist(emp);     // insert operation
   	  em.getTransaction().commit();
   	  
   	  em.close();
   	  emf.close();
   	  
   	  return "Seeker Record Successfully";
	}
	@Override
	public Seeker SeekerLogin(String semail, String spassword) 
	{
		 EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpa");
      	 EntityManager em = emf.createEntityManager();
      	  
         em.getTransaction().begin();
         
         Query qry = em.createQuery("  select e from Seeker e where semail=? and spassword=?   "); // atmost one object (0 or 1)
	     qry.setParameter(1, semail);
	     qry.setParameter(2, spassword);
	     
	     Seeker emp = null;
	     
	     if(qry.getResultList().size() > 0) 
	     {
	    	    emp = (Seeker) qry.getSingleResult();
	     }
	     
	     em.close();
	     emf.close();
	   
	     return emp;
	}



}