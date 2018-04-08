package edu.demo.spring.main;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import edu.demo.spring.api.Game;
import edu.demo.spring.configuration.JavaAppConfig;

public class JavaConfigDemo {

	public static void main(String[] args) {
		ApplicationContext context = new AnnotationConfigApplicationContext(JavaAppConfig.class);

		Game football = context.getBean("game", Game.class);
		Game football2 = context.getBean("game", Game.class);
		
		System.out.println(football.hashCode() + " = " + football2.hashCode());
		
		System.out.println(football.simulateWinningTeam());

		System.out.println(context.getBeanDefinitionCount());
		for (String name : context.getBeanDefinitionNames()) {
			System.out.println(name);
		}
	}

}
