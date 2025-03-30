drop table if exists ParkingTicket;
drop table if exists DrivingTicket;
drop table if exists ParkingTicketType;
drop table if exists DrivingTicketType;
drop table if exists Officer;
drop table if exists VehicleRegistration;
drop table if exists Person;
drop table if exists Vehicle;

CREATE TABLE DrivingTicketType
(
  DTTypeID CHAR(2) NOT NULL,
  DTViolation VARCHAR(20) NOT NULL,
  DTFee INT NOT NULL,
  PRIMARY KEY (DTTypeID)
);

CREATE TABLE Person
(
  DLN INT NOT NULL,
  Name VARCHAR(20) NOT NULL,
  Gender VARCHAR(20) NOT NULL,
  BirthYear INT NOT NULL,
  PRIMARY KEY (DLN)
);

CREATE TABLE Vehicle
(
  VehicleLPN CHAR(6) NOT NULL,
  VehicleMake VARCHAR(20) NOT NULL,
  VehicleModel VARCHAR(20) NOT NULL,
  Year INT NOT NULL,
  PRIMARY KEY (VehicleLPN)
);

CREATE TABLE Officer
(
  OfficerId INT NOT NULL,
  OfficerName VARCHAR(20) NOT NULL,
  OfficerRank VARCHAR(20) NOT NULL,
  PRIMARY KEY (OfficerId)
);

CREATE TABLE ParkingTicketType
(
  PTTypeID CHAR(2) NOT NULL,
  PTViolation VARCHAR(20) NOT NULL,
  PTFee INT NOT NULL,
  PRIMARY KEY (PTTypeID)
);

CREATE TABLE VehicleRegistration
(
  RegistrationDate DATE NOT NULL,
  VehicleLPN CHAR(6) NOT NULL,
  DLN INT NOT NULL,
  FOREIGN KEY (VehicleLPN) REFERENCES Vehicle(VehicleLPN),
  FOREIGN KEY (DLN) REFERENCES Person(DLN)
);

CREATE TABLE DrivingTicket
(
  DTID VARCHAR(10) NOT NULL,
  DTDate DATE NOT NULL,
  DTTypeID CHAR(2) NOT NULL,
  DLN INT NOT NULL,
  VehicleLPN CHAR(6) NOT NULL,
  OfficerId INT NOT NULL,
  PRIMARY KEY (DTID),
  FOREIGN KEY (DTTypeID) REFERENCES DrivingTicketType(DTTypeID),
  FOREIGN KEY (DLN) REFERENCES Person(DLN),
  FOREIGN KEY (VehicleLPN) REFERENCES Vehicle(VehicleLPN),
  FOREIGN KEY (OfficerId) REFERENCES Officer(OfficerId)
);

CREATE TABLE ParkingTicket
(
  PKID VARCHAR(10) NOT NULL,
  PTDate DATE NOT NULL,
  VehicleLPN CHAR(6) NOT NULL,
  OfficerId INT NOT NULL,
  PTTypeID CHAR(2) NOT NULL,
  PRIMARY KEY (PKID),
  FOREIGN KEY (VehicleLPN) REFERENCES Vehicle(VehicleLPN),
  FOREIGN KEY (OfficerId) REFERENCES Officer(OfficerId),
  FOREIGN KEY (PTTypeID) REFERENCES ParkingTicketType(PTTypeID)
);