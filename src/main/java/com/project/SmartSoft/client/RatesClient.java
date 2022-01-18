package com.project.SmartSoft.client;

import com.project.SmartSoft.dto.CurrencyRatesDTO;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;

@FeignClient(name = "rates", url = "${cbr.url}")
public interface RatesClient {
    @GetMapping(path = "/scripts/XML_daily.asp")
    CurrencyRatesDTO getRates();
}
