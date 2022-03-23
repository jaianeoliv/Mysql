package com.generation.helloworld.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


@RestController
@RequestMapping("/hello-world")
public class HelloWorldController {
	
	@GetMapping
	public String helloworld() {
		return " Hello World! Jay Jay here!";
	}
	
	@GetMapping("/bsm")
	public String generation() {
		return "BSMs GENERATION BRASIL\n "
				+ "\nMentalidades: \nOrientação ao futuro, Responsabilidade Pessoal, "
				+ "Mentalidade de Crescimento, Pesistência.\n"
				+ "\nHabilidades: \nTrabalho em Equipe, Atenção aos Detalhes,"
				+ "\nProatividade, Comunicação ";
	}
	
	@GetMapping("/objetivos")
	public String pessoal() {
		return "Meus objetivos de aprendizagem dessa semana: \n"
				+ "\n- Essa semana vou praticar meus conhecimentos no MySQL,\n"
				+ "implementar as coisas que eu aprendi durante as aulas nas atividades propostas. \n"
				+ "- Aprofundar meu conhecimento em JAVA.";
	}
}
