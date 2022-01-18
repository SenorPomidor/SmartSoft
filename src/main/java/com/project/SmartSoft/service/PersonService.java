package com.project.SmartSoft.service;

import com.project.SmartSoft.dto.PersonDTO;
import com.project.SmartSoft.entity.PersonEntity;
import com.project.SmartSoft.entity.Role;
import com.project.SmartSoft.mapper.PersonMapper;
import com.project.SmartSoft.repository.PersonRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;

import java.util.Collections;
import java.util.Optional;

@Service
public class PersonService implements UserDetailsService {
    private final PersonRepository personRepository;

    private final PersonMapper personMapper;

    @Autowired
    public PersonService(PersonRepository personRepository, PersonMapper personMapper) {
        this.personRepository = personRepository;
        this.personMapper = personMapper;
    }

    @Transactional
    public String authorization(PersonDTO personDTO, Model model) {
        Optional<PersonEntity> personal = personRepository.findByLogin(personDTO.getLogin());

        if (personDTO.getPassword().equals("") || personDTO.getLogin().equals("")) {
            model.addAttribute("dataError", "Login and password can't be empty!");

            return "login";
        }

        if (personal.isPresent() && personDTO.getPassword().equals(personal.get().getPassword())) {
            if (personal.get().getRole().contains(Role.ADMIN)) {
                Authentication authentication = new UsernamePasswordAuthenticationToken(
                        personal.get(),
                        null,
                        Collections.singleton(Role.ADMIN)
                );
                SecurityContextHolder.getContext().setAuthentication(authentication);
            }

            return "redirect:/";
        } else {
            model.addAttribute("dataError", "Invalid login or password!");

            return "login";
        }
    }

    @Override
    public UserDetails loadUserByUsername(String login) throws UsernameNotFoundException {
        Optional<PersonEntity> person = personRepository.findByLogin(login);

        if (person.isEmpty()) {
            throw new UsernameNotFoundException("User not found");
        }

        return person.get();
    }

    @Transactional
    public String mainPage(PersonEntity person) {
        if (person == null) {
            return "redirect:/login";
        }

        return "main-page";
    }
}
