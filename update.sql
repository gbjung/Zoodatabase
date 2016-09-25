update employees set name='New Name',positionid = 'Shop' where employeeid = 4;

update ExhibitZones set name = "Asian Trail Expansion" where Zoneid = 2;

begin;
	update emPosition set name = 'Animal Tamer' where positionid = 'ZK';
    update bFunction set name = 'info booth' where functionid = 3;
commit;


begin;
	update Contact set State = 'VA' where zip = '20016';
    update Acquisition set ZooBorn = false where ADate = '2004-02-21'; 
    
commit;
