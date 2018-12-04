package com.party.feng.partymanage;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.ServletComponentScan;
import org.springframework.cache.annotation.EnableCaching;
import org.springframework.context.annotation.Bean;
import org.springframework.scheduling.annotation.EnableScheduling;

@SpringBootApplication
@EnableScheduling
@EnableCaching
@ServletComponentScan(basePackages = {"com.party.feng.partymanage.filter"})
public class PartymanageApplication {

	public static void main(String[] args) {
		SpringApplication.run(PartymanageApplication.class, args);
	}

}
