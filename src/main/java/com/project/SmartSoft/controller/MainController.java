package com.project.SmartSoft.controller;

import com.project.SmartSoft.dto.CurrencyHistoryDTO;
import com.project.SmartSoft.dto.PersonDTO;
import com.project.SmartSoft.entity.PersonEntity;
import com.project.SmartSoft.service.CurrencyService;
import com.project.SmartSoft.service.PersonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import javax.validation.Valid;

@Controller
public class MainController {
    private final PersonService personService;

    private final CurrencyService currencyService;

    @Autowired
    public MainController(PersonService personService, CurrencyService currencyService) {
        this.personService = personService;
        this.currencyService = currencyService;
    }

    @GetMapping("/")
    public String mainPage(@AuthenticationPrincipal PersonEntity person) {
        return personService.mainPage(person);
    }

    @GetMapping("/login")
    public String login() {
        return "login";
    }

    @PostMapping("/login")
    public String authorization(@ModelAttribute("person") PersonDTO personDTO, Model model) {
        return personService.authorization(personDTO, model);
    }

    @GetMapping("/history")
    public String history(Model model) {
        return currencyService.currencyHistory(model);
    }

    @PostMapping("/history")
    public String currencyHistory(
            @ModelAttribute("currency") @Valid CurrencyHistoryDTO historyDTO,
            BindingResult bindingResult,
            Model model
    ) {

        return currencyService.currencyHistory(historyDTO, bindingResult, model);
    }

    @PostMapping("/currencyConvert")
    public String currencyConvert(
            @ModelAttribute("currency") @Valid CurrencyHistoryDTO historyDTO,
            BindingResult bindingResult,
            Model model
    ) {

        return currencyService.currencyConvert(historyDTO, bindingResult, model);
    }
}
