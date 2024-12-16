package com.example.demo.requestcheck;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.Mapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
@RequestMapping("/checkrender")
public class Application {

	public static void main(String[] args) {
		System.out.println("hekkod");
		SpringApplication.run(Application.class, args);
	}

	@GetMapping("/inner")
	public String HellHi(){
		System.out.println("Hellhi");
		return "Hellhi";
	}

}
