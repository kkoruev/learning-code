package edu.demo.spring.entities;

import edu.demo.spring.api.Team;

public class Arsenal implements Team {
	
	@Override
	public String getName() {
		return "Arsenal";
	}

}
