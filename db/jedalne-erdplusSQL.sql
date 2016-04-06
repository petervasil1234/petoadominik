CREATE TABLE Jedalen
(
  id_jedalne INT NOT NULL,
  mesto VARCHAR(20) NOT NULL,
  nazov VARCHAR(100) NOT NULL,
  ulica VARCHAR(30) NOT NULL,
  percento_navysenia FLOAT NOT NULL,
  cislo_domu INT NOT NULL,
  PRIMARY KEY (id_jedalne)
);

CREATE TABLE Pozicia
(
  nazov VARCHAR(30) NOT NULL,
  hodinova_mzda FLOAT NOT NULL,
  poznamka VARCHAR(100),
  id_pozicie INT NOT NULL,
  PRIMARY KEY (id_pozicie)
);

CREATE TABLE Menu
(
  Id_menu INT NOT NULL,
  nazov VARCHAR(50) NOT NULL,
  PRIMARY KEY (Id_menu)
);

CREATE TABLE Jedlo
(
  nazov VARCHAR(40) NOT NULL,
  gramaz INT NOT NULL,
  cena FLOAT NOT NULL,
  id_jedla INT NOT NULL,
  PRIMARY KEY (id_jedla)
);

CREATE TABLE Ponuka
(
  datum DATE NOT NULL,
  id_jedalne INT NOT NULL,
  Id_menu INT NOT NULL,
  PRIMARY KEY (datum, id_jedalne, Id_menu),
  FOREIGN KEY (id_jedalne) REFERENCES Jedalen(id_jedalne),
  FOREIGN KEY (Id_menu) REFERENCES Menu(Id_menu)
);

CREATE TABLE Predava
(
  datum DATE NOT NULL,
  cas DATE NOT NULL,
  pocet_kusov INT NOT NULL,
  id_jedalne INT NOT NULL,
  id_jedla INT NOT NULL,
  PRIMARY KEY (datum, cas, id_jedalne, id_jedla),
  FOREIGN KEY (id_jedalne) REFERENCES Jedalen(id_jedalne),
  FOREIGN KEY (id_jedla) REFERENCES Jedlo(id_jedla)
);

CREATE TABLE Obsahuje
(
  Id_menu INT NOT NULL,
  id_jedla INT NOT NULL,
  PRIMARY KEY (Id_menu, id_jedla),
  FOREIGN KEY (Id_menu) REFERENCES Menu(Id_menu),
  FOREIGN KEY (id_jedla) REFERENCES Jedlo(id_jedla)
);

CREATE TABLE Zamestnanec_jedalne
(
  Id_zamestnanca INT NOT NULL,
  meno VARCHAR(15) NOT NULL,
  priezvisko VARCHAR(30) NOT NULL,
  datum_narodenia DATE NOT NULL,
  pohlavie CHAR(1) NOT NULL,
  id_jedalne INT NOT NULL,
  id_pozicie INT NOT NULL,
  PRIMARY KEY (Id_zamestnanca),
  FOREIGN KEY (id_jedalne) REFERENCES Jedalen(id_jedalne),
  FOREIGN KEY (id_pozicie) REFERENCES Pozicia(id_pozicie)
);

CREATE TABLE Produkcia_zisku
(
  mesiac INT NOT NULL,
  rok INT NOT NULL,
  id_jedalne INT NOT NULL,
  zisk FLOAT NOT NULL,
  PRIMARY KEY (mesiac, rok, id_jedalne),
  FOREIGN KEY (id_jedalne) REFERENCES Jedalen(id_jedalne)
);
