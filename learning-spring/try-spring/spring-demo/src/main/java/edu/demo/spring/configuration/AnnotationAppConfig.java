package edu.demo.spring.configuration;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

import edu.demo.spring.api.Game;
import edu.demo.spring.api.Team;
import edu.demo.spring.entities.Football;

@Configuration
@ComponentScan(basePackages = "edu.demo.spring")
public class AnnotationAppConfig {

	@Autowired
	private Team home;
	
	@Autowired
	private Team away;
	@Bean
	public Game game() {
		return new Football(home, away);
	}
}

