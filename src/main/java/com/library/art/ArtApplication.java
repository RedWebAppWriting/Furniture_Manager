package com.library.art;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@SpringBootApplication
@EnableJpaRepositories("com.library.art.repo")
@EntityScan("com.library.art.model")


public class ArtApplication {

	public static void main(String[] args) {
		SpringApplication.run(ArtApplication.class, args);
	}

}



