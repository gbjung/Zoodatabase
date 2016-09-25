delete from country where name = "Chad";

delete from cage where cageid between 35 and 40;


begin;
	delete from country where countryid between 10 and 15;
    delete from animal where age > 5;
commit;


begin;
	delete from Animal where animalid = "Panda1";
	delete from Employees where employeeid = 4;
commit;
