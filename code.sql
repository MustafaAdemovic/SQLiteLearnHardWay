/*DELETE FROM pet WHERE id IN (
SELECT pet.id
FROM pet, person_pet, person
WHERE
person.id = person_pet.person_id AND
pet.id = person_pet.pet_id AND
person.first_name = "Zed"
);

SELECT * FROM pet;
SELECT * FROM person_pet;

DELETE FROM person_pet WHERE pet_id NOT IN(
	SELECT id FROM pet
);
SELECT * FROM person_pet;*/




/*UPDATE person SET first_name = "Hilarious Guy"
	WHERE first_name = "Zed";

UPDATE pet SET name = "Fancy Pants"
	WHERE id = 5;

SELECT * From person;
SELECT * FROM pet;
*/

/*SELECT * FROM pet;

UPDATE pet SET name = "Zed's Pet" WHERE id IN (
    SELECT pet.id
    FROM pet, person_pet, person
    WHERE
    person.id = person_pet.person_id AND
    pet.id = person_pet.pet_id AND
    person.first_name = "Zed"
);

SELECT * FROM pet;*/





/* This should fail because 0 is already taken. 
INSERT INTO person (id, first_name, last_name, age)
    VALUES (0, 'Frank', 'Smith', 100);

/* We can force it by doing an INSERT OR REPLACE. 
INSERT OR REPLACE INTO person (id, first_name, last_name, age)
    VALUES (0, 'Frank', 'Smith', 100);

SELECT * FROM person;

/* And shorthand for that is just REPLACE. 
REPLACE INTO person (id, first_name, last_name, age)
    VALUES (0, 'Zed', 'Shaw', 37);

/* Now you can see I'm back. 
SELECT * FROM person;*/



/* Only drop table if it exists. 
DROP TABLE IF EXISTS person;

/* Create again to work with it. 
CREATE TABLE person (
    id INTEGER PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    age INTEGER
);

/* Rename the table to peoples. 
ALTER TABLE person RENAME TO peoples;

/* Add a hatred column to peoples. 
ALTER TABLE peoples ADD COLUMN hatred INTEGER;

/* Rename peoples back to person. 
ALTER TABLE peoples RENAME TO person;

.schema person

/* We don't need that. 
DROP TABLE person;
*/

CREATE TABLE person (
    id INTEGER PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    age INTEGER,
    dead INTEGER,
    phone_number TEXT,
    sylary FLOAT,
    dob DATETIME
);
CREATE TABLE person_pet (
    person_id INTEGER,
    pet_id INTEGER
    purchased_on DATETIME
);
CREATE TABLE pet (
    id INTEGER PRIMARY KEY,
    name TEXT,
    breed TEXT,
    age INTEGER,
    dead INTEGER,
    dob DATETIME,
    parent INTEGER
);