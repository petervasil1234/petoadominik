CREATE TABLE Jedalen
(
  id_jedalne INT NOT NULL,
  mesto VARCHAR(20) NOT NULL,
  nazov VARCHAR(100) NOT NULL,
  ulica VARCHAR(30) NOT NULL,
  percento_navysenia FLOAT NOT NULL check (percento_navysenia > 0),
  cislo_domu INT NOT NULL check (cislo_domu > 0),
  PRIMARY KEY (id_jedalne)
);

CREATE TABLE Pozicia
(
  nazov VARCHAR(30) NOT NULL,
  hodinova_mzda FLOAT NOT NULL check (hodinova_mzda > 0),
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
  gramaz INT NOT NULL check (gramaz > 0),
  cena FLOAT NOT NULL check (cena > 0),
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
  cas VARCHAR NOT NULL,
  pocet_kusov INT NOT NULL check (pocet_kusov > 0),
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
  pohlavie CHAR(1) NOT NULL check (pohlavie = 'Z' or pohlavie = 'M'),
  id_jedalne INT NOT NULL,
  id_pozicie INT NOT NULL,
  PRIMARY KEY (Id_zamestnanca),
  FOREIGN KEY (id_jedalne) REFERENCES Jedalen(id_jedalne),
  FOREIGN KEY (id_pozicie) REFERENCES Pozicia(id_pozicie)
);

CREATE TABLE Produkcia_zisku
(
  mesiac INT NOT NULL check (mesiac > 0 and mesiac < 13),
  rok INT NOT NULL check (rok > 0),
  id_jedalne INT NOT NULL,
  zisk FLOAT NOT NULL,
  PRIMARY KEY (mesiac, rok, id_jedalne),
  FOREIGN KEY (id_jedalne) REFERENCES Jedalen(id_jedalne)
);
