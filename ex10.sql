SELECT person.id, person.first_name, person.last_name, person.age
	FROM person, person_pet, pet
	WHERE
	person.id = person_pet.person_id AND
	person_pet.pet_id = pet.id AND
	pet.name = "Vedad";
