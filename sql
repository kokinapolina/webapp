-- Event --
Create table Eventi (
  ID int not null auto_increment,
  Event_Name varchar(255) not null,
  Event_Type varchar(255) not null,
  Host varchar(255) not null,
  Participants int not null,
  Date_and_Time varchar(255) not null,
  Location varchar(255) not null,
  Email varchar(255) not null,
  Price int not null,
  primary key (ID)
);
 
  
insert into Eventi (Event_Name, Event_Type, Host, Participants, Date_and_Time, Location, Email, Price)
  	values ("Time to Rock", "Concert", "Rockpalace Tübingen", "120", "02.06.2021 19:30", "Tübingen", "rockpalace@gmail.com", "15");
insert into Eventi (Event_Name, Event_Type, Host, Participants, Date_and_Time, Location, Email, Price)
  	values ("Quiet Lane", "Concert", "Johannes Reising", "200", "20.05.2021 20:00", "Stuttgart", "Reising.94@web.de", "12,60");
insert into Eventi (Event_Name, Event_Type, Host, Participants, Date_and_Time, Location, Email, Price)
  	values ("House Party", "Party", "James Reed", "20", "15.05.2021 18:00", "Reutlingen", "James.reed@gmail.com", "10");
insert into Eventi (Event_Name, Event_Type, Host, Participants, Date_and_Time, Location, Email, Price)
  	values ("After Work Party", "Party", "Lara Tann", "30", "10.06.2021 21:00", "Reutlingen", "Lara-Tann@yahoo.com", "10");
insert into Eventi (Event_Name, Event_Type, Host, Participants, Date_and_Time, Location, Email, Price)
  	values ("Club-party", "Party", "Club Stuttgart", "60", "01.06.2021 21:00", "Stuttgart", "Stuttgart.Club@gmx.com", "12");
-- Paricipants --



CREATE TABLE Participant (
	ID int NOT NULL AUTO_INCREMENT,
	First_Name varchar(255) NOT NULL,
	Last_Name varchar(255) NOT NULL,
  	Email varchar(255) NOT NULL,
	Event_ID int NOT NULL,
 	primary key (ID),
	foreign key (Event_ID) References Eventi(ID)
	ON DELETE CASCADE
);


insert into Participant (First_Name, Last_Name, Email, Event_ID)
  	values ("Lars", "Bachmann", "Lars.Bachmann@gmail.com", "1");
    
insert into Participant (First_Name, Last_Name, Email, Event_ID)
  	values ("Peter", "Alvarado", "PeterAlvarado@gmail.com", "2");

insert into Participant (First_Name, Last_Name, Email, Event_ID)
  	values ("Adam", "Johnson", "AdamJohnson@gmx.com", "1");
  	

insert into Participant (First_Name, Last_Name, Email, Event_ID)
  	values ("Sven", "Basler", "Sven.Basler@gmail.com", "3");
    
insert into Participant (First_Name, Last_Name, Email, Event_ID)
  	values ("Tim", "Althaus", "Tim.Althaus@gmx.com", "4");

insert into Participant (First_Name, Last_Name, Email, Event_ID)
  	values ("Maja", "Kaliczek", "Kaliczek.m@yahoo.com", "5");


insert into Participant (First_Name, Last_Name, Email, Event_ID)
  	values ("Nina", "Ferber", "Nina.Ferber@gmail.com", "5");
    
insert into Participant (First_Name, Last_Name, Email, Event_ID)
  	values ("Lena", "Gerst", "Lena.Gerst@gmx.de", "4");

insert into Participant (First_Name, Last_Name, Email, Event_ID)
  	values ("Theresa", "Nauen", "T.Nauen@gmail.com", "2");
    
SELECT Eventi.Event_Name, Eventi.Event_Type, Eventi.Host, Eventi.Participants, Eventi.Date_And_Time, Eventi.Location, Eventi.Email, Eventi.Price, Participant.Last_Name, Participant.First_Name, Participant.Email
  FROM Eventi, Participant
  WHERE Participant.Event_ID = Eventi.ID;
