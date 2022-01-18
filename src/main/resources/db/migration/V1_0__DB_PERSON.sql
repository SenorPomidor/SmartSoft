CREATE SEQUENCE hibernate_sequence START 1 INCREMENT 1;

CREATE TABLE person (
    id INT PRIMARY KEY NOT NULL DEFAULT NEXTVAL('hibernate_sequence'),
    login VARCHAR(30) NOT NULL,
    password VARCHAR(30) NOT NULL
);

ALTER SEQUENCE hibernate_sequence OWNED BY person.id;

INSERT INTO person (id, login, password)
VALUES (nextval('hibernate_sequence'), 'admin', 'admin');

create table person_role (
    person_id INT NOT NULL,
    role VARCHAR(255)
);

alter table person_role
    add constraint user_role_user_fk
        foreign key (person_id) references person;

INSERT INTO person_role (person_id, role)
VALUES (1, 'ADMIN');