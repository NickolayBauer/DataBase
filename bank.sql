CREATE TABLE filial(
id_filial    SERIAL NOT NULL PRIMARY KEY,
nazvanie		 varchar(80),
geo_locate 	 varchar(80)

);


CREATE TABLE workers(
id_sotrudnica SERIAL NOT NULL PRIMARY KEY,
passport						 INT,
fio 								 VARCHAR(80),
dostup 							 VARCHAR(1),
dojnost 						 VARCHAR(30),
zp									 MONEY,
id_filial						 INT,
FOREIGN KEY (id_filial) REFERENCES filial(id_filial)
);

CREATE TABLE klients(
id_klient SERIAL NOT NULL PRIMARY KEY,
fio								VARCHAR(80),
passport					INT,
id_filial					INT,
FOREIGN KEY (id_filial) REFERENCES filial(id_filial)
);



CREATE TABLE kards(
id_klient			 INT,
id_kard SERIAL NOT NULL PRIMARY KEY,
passkey  			 INT,
type_kard			 VARCHAR(10),
balance				 MONEY,
FOREIGN KEY (id_klient) REFERENCES klients(id_klient)
);

CREATE TABLE terminals(
id_terminal 	SERIAL NOT NULL PRIMARY KEY,
geo_locate		VARCHAR,
balance				MONEY,
id_filial     INT,
FOREIGN KEY (id_filial) REFERENCES filial(id_filial)
);

