package com.klef.ep.services;

import java.util.List;

import javax.ejb.Stateless;
import javax.ejb.TransactionManagement;
import javax.ejb.TransactionManagementType;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

import com.klef.ep.models.Admin;
import com.klef.ep.models.Seeker;
import com.klef.ep.models.Recruiter;


@Stateless
@TransactionManagement(TransactionManagementType.BEAN)
public class AdminServiceImpl implements AdminService
{

	@Override
	public Admin CheckAdminLogin(String username, String password) 
	{
		 EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpa");
      	 EntityManager em = emf.createEntityManager();
      	  
         em.getTransaction().begin();
         
         Query qry = em.createQuery("  select a from Admin a where username=? and password=?   "); // atmost one object (0 or 1)
	     qry.setParameter(1, username);
	     qry.setParameter(2, password);
	     
	     Admin admin = null;
	     
	     if(qry.getResultList().size() > 0) 
	     {
	    	    admin = (Admin) qry.getSingleResult();
	     }
	     
	     em.close();
	     emf.close();
	   
	     return admin;

	}
	
	@Override
	public String deleteSeeker(int eid) 
	{
		  EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpa");
	   	  EntityManager em = emf.createEntityManager();
	   	  
	   	  em.getTransaction().begin();
		  Seeker e = em.find(Seeker.class, eid); // fetching object based on ID
	   	  em.remove(e);
	   	  em.getTransaction().commit();
	   	  
	   	  em.close();
		  emf.close();
		  
		  return "Record Deleted Successfully";
	}
	
	public List<Seeker> viewAllSeekers() 
	{
		 EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpa");
      	 EntityManager em = emf.createEntityManager();
      	  
         em.getTransaction().begin();
         
         Query qry = em.createQuery("   select e from Seeker e "); // e is an alias of Employee class
         List<Seeker> emplist = qry.getResultList();
      
         em.close();
   	    emf.close();
   	    
   	    return emplist;
	}
	
	public List<Recruiter> viewAllRecruiters() 
	{
		 EntityManagerFactory er = Persistence.createEntityManagerFactory("jpa");
      	 EntityManager erec = er.createEntityManager();
      	  
         erec.getTransaction().begin();
         
         Query ty = erec.createQuery("   select r from Recruiter r "); // e is an alias of Employee class
         List<Recruiter> reclist = ty.getResultList();
      
         erec.close();
   	    er.close();
   	    
   	    return reclist;
	}
}