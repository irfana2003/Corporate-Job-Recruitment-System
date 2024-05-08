package com.klef.ep.services;

import java.util.List;

import javax.ejb.Stateless;
import javax.ejb.TransactionManagement;
import javax.ejb.TransactionManagementType;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

import com.klef.ep.models.Recruiter;

@Stateless
@TransactionManagement(TransactionManagementType.BEAN)
public class RecruiterServiceImpl  implements RecruiterService
{
	public String addRecruiter(Recruiter rec) 
	{
	  EntityManagerFactory er = Persistence.createEntityManagerFactory("jpa");
   	  EntityManager erec = er.createEntityManager();
   	  
   	  erec.getTransaction().begin();
   	  erec.persist(rec);     // insert operation
   	  erec.getTransaction().commit();
   	  
   	  erec.close();
   	  er.close();
   	  
   	  return "Recruiter Recorded Successfully";
	}
	@Override
	public Recruiter RecruiterLogin(String remail, String rpassword) 
	{
		 EntityManagerFactory er = Persistence.createEntityManagerFactory("jpa");
      	 EntityManager erec = er.createEntityManager();
      	  
         erec.getTransaction().begin();
         
         Query ty = erec.createQuery("  select r from Recruiter r where remail=? and rpassword=?   "); // atmost one object (0 or 1)
	     ty.setParameter(1, remail);
	     ty.setParameter(2, rpassword);
	     
	     Recruiter rec = null;
	     
	     if(ty.getResultList().size() > 0) 
	     {
	    	    rec = (Recruiter) ty.getSingleResult();
	     }
	     
	     erec.close();
	     er.close();
	   
	     return rec;
	}



}