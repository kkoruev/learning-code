package edu.demo.spring.main;

import edu.demo.spring.api.Game;
import edu.demo.spring.api.Team;
import edu.demo.spring.entities.Arsenal;
import edu.demo.spring.entities.Chelsea;
import edu.demo.spring.entities.Football;

public class Main {

	public static void main(String[] args) {
		Team homeTeam = new Arsenal();
		Team awayTeam = new Chelsea();
		
		Game game = new Football(homeTeam, awayTeam);
		System.out.println(game.simulateWinningTeam());
	}

}
