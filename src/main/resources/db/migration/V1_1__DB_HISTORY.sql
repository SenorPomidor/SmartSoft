CREATE SEQUENCE sequence_history START 1 INCREMENT 1;

CREATE TABLE history (
    id INT PRIMARY KEY NOT NULL DEFAULT NEXTVAL('sequence_history'),
    source_currency VARCHAR(255) NOT NULL,
    target_currency VARCHAR(255) NOT NULL,
    initial_amount FLOAT NOT NULL,
    amount_received FLOAT NOT NULL,
    date_operation VARCHAR(255)
);

ALTER SEQUENCE sequence_history OWNED BY history.id;