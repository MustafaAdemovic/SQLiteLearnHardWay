SELECT pet.id, pet.name
	  FROM pet, person_pet, person
	  WHERE pet.id = person_pet.pet_id AND
	  person_pet.person_id = person.id AND
	  person.first_name = "Mustafa";