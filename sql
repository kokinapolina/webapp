-- Event --
Create table Eventi (
  ID int not null auto_increment,
  Event_Name varchar(255) not null,
  Event_Type varchar(255) not null,
  Host varchar(255) not null,
  Participants int not null,
  Free_Places int not null,
  Date_and_Time varchar(255) not null,
  Location varchar(255) not null,
  Email varchar(255) not null,
  Price int not null,
  primary key (ID)
);


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

    
SELECT Eventi.Event_Name, Eventi.Event_Type, Eventi.Host, Eventi.Participants, Eventi.Date_And_Time, Eventi.Location, Eventi.Email, Eventi.Price, Participant.Last_Name, Participant.First_Name, Participant.Email
  FROM Eventi, Participant
  WHERE Participant.Event_ID = Eventi.ID;
