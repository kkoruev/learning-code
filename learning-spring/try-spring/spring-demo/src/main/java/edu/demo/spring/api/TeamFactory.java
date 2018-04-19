package edu.demo.spring.api;

import edu.demo.spring.factories.TeamFactoryImpl;

public abstract class TeamFactory {
	
	public static TeamFactory getInstance() {
		return new TeamFactoryImpl();
	}
	
	public abstract Team getTeam(String name);
}
