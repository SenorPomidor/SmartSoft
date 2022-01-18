package com.project.SmartSoft.repository;

import com.project.SmartSoft.entity.PersonEntity;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface PersonRepository extends CrudRepository<PersonEntity, Long> {
    Optional<PersonEntity> findByLogin(String login);
}
