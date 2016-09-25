insert into Employees(Employeeid, name, positionid) values(14,'Beyonce Knowles','ZK');


insert into Country(Countryid, name, Continentid) values (27, 'Korea', (select Continentid from Continent where name = "Asia"));


insert into ExhibitZones(Exhibitid, name, Zoneid) values('Anteater', 'Giant Anteaters', 2);
insert into Cage(Cageid, name, Exhibitid) values (41, 'Anteater Heaven', 'Anteater');

