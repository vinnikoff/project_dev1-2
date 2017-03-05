CREATE TABLE developer(
  ID   INT               NOT NULL,
  NAME VARCHAR (100)     NOT NULL,
  
  AGE  INT               NOT NULL,
  ID_COM  INT            NOT NULL,
  PRIMARY KEY (ID)
);

CREATE TABLE specialty(
  ID   INT               NOT NULL,
  ID_DEV   INT           NOT NULL,
  SPECIALTY VARCHAR (100)     NOT NULL,
  PRIMARY KEY (ID)
);

CREATE TABLE projects(
  ID   INT               NOT NULL,
  ID_PRO   INT           NOT NULL,
  ID_DEV   INT           NOT NULL,
  PROJECT VARCHAR (100)     NOT NULL,
  PRIMARY KEY (ID)
);


CREATE TABLE company(

  ID_COM   INT           NOT NULL,
  COMPANY VARCHAR (100)     NOT NULL,
  PRIMARY KEY (ID_COM)
);

CREATE TABLE customers(
  ID   INT               NOT NULL,
  ID_CUST   INT           NOT NULL,
  ID_PRO   INT           NOT NULL,
  CUSTOMER VARCHAR (100)     NOT NULL,
  PRIMARY KEY (ID)
);

ALTER TABLE developer ADD CONSTRAINT ID_COM_FK FOREIGN KEY (ID_COM) REFERENCES company (ID_COM);
ALTER TABLE projects ADD CONSTRAINT ID_FK FOREIGN KEY (ID_DEV) REFERENCES developer (ID);
