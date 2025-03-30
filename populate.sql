insert into officer values (1,'Joe','Sergeant');
insert into officer values (2,'Mike','Patrolman');
insert into officer values (3,'Bob','Patrolman');
go
insert into ParkingTicketType values('P1','Meter Expired',100);
insert into ParkingTicketType values('P2','Hydrant',150);
insert into ParkingTicketType values('P3','No Parking',50);
go
insert into DrivingTicketType values('D1','Red Light',200);
insert into DrivingTicketTYpe values('D2','Seat Belt',100);
insert into DrivingTicketTYpe values('D3','Speeding',400);
go
insert into person(DLN,Name,Gender,BirthYear) values(111,'Bill','Male',1998);
insert into person(DLN,Name,Gender,BirthYear) values(112,'Suzy','Female',1987);
go
insert into vehicle(VehicleLPN,VehicleMake,VehicleModel,Year)
	values('IL1111','Honda','CRV',2017);
insert into vehicle(VehicleLPN,VehicleMake,VehicleModel,Year)
	values('IL2222','Honda','Civic',2020);
insert into vehicle(VehicleLPN,VehicleMake,VehicleModel,Year)
	values('IL3333','Honda','Civic',2018);
go
insert into DrivingTicket(DTID,DTDate,DTTypeID,DLN,VehicleLPN,OfficerId)
	values('DT1111','2020-01-01','D1',111,'IL1111',1);
insert into DrivingTicket(DTID,DTDate,DTTypeID,DLN,VehicleLPN,OfficerId)
	values('DT2222','2020-01-02','D1',112,'IL2222',2);
insert into DrivingTicket(DTID,DTDate,DTTypeID,DLN,VehicleLPN,OfficerId)
	values('DT3333','2020-01-21','D2',111,'IL1111',3);
go
insert into ParkingTicket(PKID,PTDate,OfficerID,VehicleLPN,PTTypeID)
    values('PT1111','2020-01-01',1,'IL1111','P2');
	insert into ParkingTicket(PKID,PTDate,OfficerID,VehicleLPN,PTTypeID)
    values('PT2222','2020-01-01',2,'IL2222','P2');
	insert into ParkingTicket(PKID,PTDate,OfficerID,VehicleLPN,PTTypeID)
    values('PT3333','2020-01-02',3,'IL3333','P2');
go
insert into VehicleRegistration(registrationdate,VehicleLPN,DLN)
   values('2019-12-30','IL1111',111);
insert into VehicleRegistration(registrationdate,VehicleLPN,DLN)
   values('2018-10-03','IL2222',112);
insert into VehicleRegistration(registrationdate,VehicleLPN,DLN)
   values('2019-12-30','IL3333',111);
go


