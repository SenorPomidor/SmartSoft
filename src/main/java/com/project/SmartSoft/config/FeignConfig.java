package com.project.SmartSoft.config;

import feign.Feign;
import feign.jaxb.JAXBContextFactory;
import feign.jaxb.JAXBDecoder;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class FeignConfig {
    @Bean
    public JAXBContextFactory axbDecoder() {
        return new JAXBContextFactory.Builder().build();
    }

    @Bean
    public Feign feign() {
        return Feign.builder()
                .decoder(new JAXBDecoder(axbDecoder()))
                .build();
    }
}
