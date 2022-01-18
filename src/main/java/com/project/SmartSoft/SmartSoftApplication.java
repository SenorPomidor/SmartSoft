package com.project.SmartSoft;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.openfeign.EnableFeignClients;

@SpringBootApplication
@EnableFeignClients
public class SmartSoftApplication {

	public static void main(String[] args) {
		SpringApplication.run(SmartSoftApplication.class, args);
	}

}
