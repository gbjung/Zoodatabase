alter table Animal
  add foreign key (Speciesid) references Species(Speciesid) on delete cascade on update cascade,
  add foreign key (Acquisitionid) references Acquisition(Acquisitionid);
  
alter table Species
  add foreign key (Genusid) references Genus(Genusid),
  add foreign key (Statusid) references cStatus(Statusid),
  add foreign key (Countryid) references Country(Countryid);

alter table Genus
  add foreign key (Familyid) references Family(Familyid) on delete cascade on update cascade;
  
alter table Country
  add foreign key (Continentid) references Continent(Continentid);
  
alter table ExhibitZones
  add foreign key (Zoneid) references Zone(Zoneid);
  
alter table Cage
  add foreign key (Exhibitid) references ExhibitZones(Exhibitid);
  
alter table Employees
  add foreign key (Positionid) references emPosition(Positionid);
  
alter table Contact
  add foreign key (Employeeid) references Employees(Employeeid);
  
alter table Buildings
  add foreign key (Zoneid) references Zone(Zoneid),
  add foreign key (Functionid) references bFunction(Functionid),
  add foreign key (Employeeid) references Employees(Employeeid);
