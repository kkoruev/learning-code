package edu.demo.spring.entities;

import edu.demo.spring.api.Game;
import edu.demo.spring.api.Team;

public class Football implements Game {
	
	private Team mHomeTeam;
	private Team mAwayTeam;
	
	public Football(Team homeTeam, Team awayTeam) {
		mHomeTeam = homeTeam;
		mAwayTeam = awayTeam;
	}

	public Team getHomeTeam() {
		return mHomeTeam;
	}

	public void setHomeTeam(Team homeTeam) {
		mHomeTeam = homeTeam;
	}

	public Team getAwayTeam() {
		return mAwayTeam;
	}

	public void setAwayTeam(Team awayTeam) {
		mAwayTeam = awayTeam;
	}

	@Override
	public String simulateWinningTeam() {
		double result = Math.random();
		if (result > 0.5) {
			return mHomeTeam.getName();
		} else {
			return mAwayTeam.getName();
		}
	}
}
