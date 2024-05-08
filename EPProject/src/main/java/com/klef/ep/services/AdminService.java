package com.klef.ep.services;

import java.util.List;

import javax.ejb.Remote;

import com.klef.ep.models.Admin;
import com.klef.ep.models.Seeker;
import com.klef.ep.models.Recruiter;


@Remote
public interface AdminService 
{
   public Admin CheckAdminLogin(String username,String password);
   public String deleteSeeker(int eid);
	public List<Seeker> viewAllSeekers();
	public List<Recruiter> viewAllRecruiters();
   
   
	
}