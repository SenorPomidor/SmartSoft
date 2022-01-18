package com.project.SmartSoft.mapper;

import com.project.SmartSoft.dto.PersonDTO;
import com.project.SmartSoft.entity.PersonEntity;
import org.springframework.stereotype.Component;

@Component
public class PersonMapper {
    public PersonDTO toDTO(PersonEntity entity) {
        PersonDTO dto = new PersonDTO();

        dto.setId(entity.getId());
        dto.setLogin(entity.getLogin());
        dto.setPassword(entity.getPassword());
        dto.setRole(entity.getRole());

        return dto;
    }

    public PersonEntity toEntity(PersonDTO dto) {
        PersonEntity entity = new PersonEntity();

        entity.setId(dto.getId());
        entity.setLogin(dto.getLogin());
        entity.setPassword(dto.getPassword());
        entity.setRole(dto.getRole());

        return entity;
    }
}
