package edu.demo.spring.configuration;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import edu.demo.spring.api.Game;
import edu.demo.spring.api.Team;
import edu.demo.spring.entities.Arsenal;
import edu.demo.spring.entities.Chelsea;
import edu.demo.spring.entities.Football;

@Configuration
public class JavaAppConfig {

	@Bean
	public Game game() {
		return new Football(chelsa(), arsenal());
	}
	
	@Bean
	public Team chelsa() {
		return new Chelsea();
	}
	
	@Bean
	public Team arsenal() {
		return new Arsenal();
	}
}
