package com.test;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class NewLeague extends HttpServlet {
	private Boolean inputErrorFlag = false;
	private String leagueName, leagueAddress, leagueDesc = "";
	private int leagueDivNumber, leagueType = 0;
	
	public NewLeague(String name, String address)
	{
		this.leagueName = name;
		this.leagueAddress = address;
	}
	
	public NewLeague(String name, String address, String description, int divNumber, int leagueType)
	{
		this.leagueName = name;
		this.leagueAddress = address;
		this.leagueDesc = description;
		this.leagueDivNumber = divNumber;
		this.leagueType = leagueType;
	}
	
	public void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		leagueName = request.getParameter("leagueName");
		leagueAddress = request.getParameter("leagueAddress");
		
		
		System.out.println(leagueName);
		
	}
}
