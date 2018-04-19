package edu.demo.spring.factories;

import java.util.HashMap;
import java.util.Map;

import edu.demo.spring.api.Team;
import edu.demo.spring.api.TeamFactory;
import edu.demo.spring.entities.Arsenal;
import edu.demo.spring.entities.Chelsea;

public class TeamFactoryImpl extends TeamFactory{
	
	private static Map<String, Team> teams = new HashMap<>();
	
	static {
		teams.put("chelsea", new Chelsea());
		teams.put("arsenal", new Arsenal());
	}
	
	public Team getTeam(String name) {
		return teams.get(name);
	}
	
	public Team getChelsea() {
		return new Chelsea();
	}
	
	public Team getArsenal() {
		return new Arsenal();
	}
}
