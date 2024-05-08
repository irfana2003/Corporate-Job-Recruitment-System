package com.klef.ep.services;

import java.util.List;

import javax.ejb.Remote;

import com.klef.ep.models.Recruiter;

@Remote
public interface RecruiterService
{
	public String addRecruiter(Recruiter rec);
	public Recruiter RecruiterLogin(String remail,String rpassword);
	
}
