select Animalid as 'Animals listed as Endangered' from Species, Animal where Species.Speciesid = Animal.Speciesid and Statusid = "EN";

select avg(age) as 'Average Age of Animal' from animal;

select Zone.name as 'Zone Name', count(ExhibitZones.Zoneid) as 'Number of Exhibits' from (Zone inner join ExhibitZones on Zone.Zoneid = ExhibitZones.Zoneid)
group by Zone.name;

select name as 'Cage names in the same Exhibit as Cage2' from Cage where Exhibitid = (select Exhibitid from Cage where Cageid = "2");

select exhibitid from cage union select exhibitid from exhibitzones;