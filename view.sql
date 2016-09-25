create view animals_in_exhibits as select animalid,Cage.name from animal,cage where animal.cageid = cage.cageid;
select* from animals_in_exhibits;

create view species_family as select species,family.name from species, genus, family where species.genusid = genus.genusid and genus.familyid = family.familyid;
update species_family set family.name = 'ursidae';