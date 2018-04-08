package edu.demo.spring.entities;

import org.springframework.stereotype.Component;

import edu.demo.spring.api.Team;

@Component
public class Arsenal implements Team {
	
	@Override
	public String getName() {
		return "Arsenal";
	}

}
