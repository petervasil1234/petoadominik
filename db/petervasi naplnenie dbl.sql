--INSERT INTO JEDALEN (mesto, nazov, ulica, percento_navysenia, cislo_domu) values ('Presov', 'Jedalen pri fakultnej nemocnici', 'Stefanikova', 15.5, 143 );
--INSERT INTO JEDALEN (mesto, nazov, ulica, percento_navysenia, cislo_domu) values ('Giraltovce', 'Skolska jedalen v Giraltovciach', 'Fucikova', 13.7, 1765 );
--INSERT INTO JEDALEN (mesto, nazov, ulica, percento_navysenia, cislo_domu) values ('Presov', 'Jedalen pri zakladnej skole', 'Sabinovska', 10.7, 1411 );
--INSERT INTO JEDALEN (mesto, nazov, ulica, percento_navysenia, cislo_domu) values ('Bidovce', 'Jedalen Bidovce', 'Bidovce', 18.7, 211 );
--INSERT INTO JEDALEN (mesto, nazov, ulica, percento_navysenia, cislo_domu) values ('Kosice', 'Jedalen na ulici Jedlikovej', 'Jedlikova', 11.8, 5 );

--INSERT INTO POZICIA (NAZOV_POZICIE, HODINOVA_MZDA) VALUES ('Veduca jedalne', 4.2);
--INSERT INTO POZICIA (NAZOV_POZICIE, HODINOVA_MZDA) VALUES ('Kuchar', 3.8);
--INSERT INTO POZICIA (NAZOV_POZICIE, HODINOVA_MZDA) VALUES ('Vydavac stravy', 3.5);
--INSERT INTO POZICIA (NAZOV_POZICIE, HODINOVA_MZDA, POZNAMKA) VALUES ('Pomocna sila', 2.5, 'Vypomaha v kuchyni(cistenie zemiakov, umyvanie riadov)');
--INSERT INTO POZICIA (NAZOV_POZICIE, HODINOVA_MZDA, POZNAMKA) VALUES ('Pokladnicka', 3.5, 'V pripade ze sa za jedlo plati na mieste');

--INSERT INTO JEDLO (nazov_jedla,gramaz,cena) values ('Slepacia polievka s rezancami',150,0.55);
--INSERT INTO JEDLO (nazov_jedla,gramaz,cena) values ('Paradajkova polievka',140,0.6);
--INSERT INTO JEDLO (nazov_jedla,gramaz,cena) values ('Rybacia polievka - halaszle',150,0.6);
--INSERT INTO JEDLO (nazov_jedla,gramaz,cena) values ('Francuzska polievka',150,0.55);
--INSERT INTO JEDLO (nazov_jedla,gramaz,cena) values ('Sosovicova polievka',180,0.55);
--INSERT INTO JEDLO (nazov_jedla,gramaz,cena) values ('Fazulova polievka so zeleninou',180,0.6);
--INSERT INTO JEDLO (nazov_jedla,gramaz,cena) values ('Zeleninova polievka',150,0.45);
--INSERT INTO JEDLO (nazov_jedla,gramaz,cena) values ('Bravcovy gulas',190,0.8);
--INSERT INTO JEDLO (nazov_jedla,gramaz,cena) values ('Americke zemiaky',180,0.95);
--INSERT INTO JEDLO (nazov_jedla,gramaz,cena) values ('Varene zemiaky mastene',200,0.75);
--INSERT INTO JEDLO (nazov_jedla,gramaz,cena) values ('Ryza',150,0.6);
--INSERT INTO JEDLO (nazov_jedla,gramaz,cena) values ('Zemiakova kasa',200,0.8);
--INSERT INTO JEDLO (nazov_jedla,gramaz,cena) values ('Hranolky',160,0.85);
--INSERT INTO JEDLO (nazov_jedla,gramaz,cena) values ('Cestoviny',190,0.75);

--ALTER TABLE MENU 
--ADD (NAZOV_MENU VARCHAR(30) NOT NULL);
--INSERT INTO MENU (NAZOV_MENU) VALUES ('Vegetarianske menu');
--INSERT INTO MENU (NAZOV_MENU) VALUES ('Extra masove menu');
--INSERT INTO MENU (NAZOV_MENU) VALUES ('Sladke menu');
--INSERT INTO MENU (NAZOV_MENU) VALUES ('Piatkove menu');
--INSERT INTO MENU (NAZOV_MENU) VALUES ('Pikantne menu');
--INSERT INTO MENU (NAZOV_MENU) VALUES ('Medzinarodne menu');

--Inserts jedalen:


INSERT INTO JEDALEN (mesto, nazov, ulica, cislo_domu, percento_navysenia) values ('Bratislava', 'Jedalen pod Hradom','Pod hradom',5, 20.00 );
INSERT INTO JEDALEN (mesto, nazov, ulica, cislo_domu, percento_navysenia) values ('Martin', 'Skolska jedalen pri SS','Hlavna',12, 10.00);
INSERT INTO JEDALEN (mesto, nazov, ulica, cislo_domu, percento_navysenia) values ('Martin', 'Skolska jedalen pri ZS', 'Stefanikova',13, 13.05);
INSERT INTO JEDALEN (mesto, nazov, ulica, cislo_domu, percento_navysenia) values ('Skalica', 'Skalicka skolska jedalen','Dolna',13 , 10.11);
INSERT INTO JEDALEN (mesto, nazov, ulica, cislo_domu, percento_navysenia) values ('Trnava', 'Dobra jedalen','Horna',2,17.12);


--inserts jedla:

INSERT INTO JEDLO (nazov_jedla,gramaz,cena) values ('Kuraci steak',100,2);
INSERT INTO JEDLO (nazov_jedla,gramaz,cena) values ('Bravcove stehno na smotane',120,2.20); 
INSERT INTO JEDLO (nazov_jedla,gramaz,cena) values ('Halusky s tvarohom',200,1.5); 
INSERT INTO JEDLO (nazov_jedla,gramaz,cena) values ('Cestoviny s hobovou omackou',300,2.10); 
INSERT INTO JEDLO (nazov_jedla,gramaz,cena) values ('Segedinsky gulas s knedlou',250,3.20);
INSERT INTO JEDLO (nazov_jedla,gramaz,cena) values ('Rybaci sen',300,4);
INSERT INTO JEDLO (nazov_jedla,gramaz,cena) values ('Kuraci rezen',100,1,8);
INSERT INTO JEDLO (nazov_jedla,gramaz,cena) values ('Buchty na pare',100,1);
INSERT INTO JEDLO (nazov_jedla,gramaz,cena) values ('Francuzske zemiaky',400,3.5); 
INSERT INTO JEDLO (nazov_jedla,gramaz,cena) values ('Hovadzie stroganov',300.3);
INSERT INTO JEDLO (nazov_jedla,gramaz,cena) values ('Spaghety',300,2.80); 
INSERT INTO JEDLO (nazov_jedla,gramaz,cena) values ('Rizoto s kuracim masom',300,3); 

INSERT INTO JEDLO (nazov_jedla,gramaz,cena) values ('Zmrzlinovy pohar',100,1);
INSERT INTO JEDLO (nazov_jedla,gramaz,cena) values ('Jablkovy zavin',100,1,2);
INSERT INTO JEDLO (nazov_jedla,gramaz,cena) values ('Puding rozne druhy',100,0.80);
INSERT INTO JEDLO (nazov_jedla,gramaz,cena) values ('Kremes',100,1.2);
INSERT INTO JEDLO (nazov_jedla,gramaz,cena) values ('Smotanovy pohar',120,0.9);
INSERT INTO JEDLO (nazov_jedla,gramaz,cena) values ('Banany v cokolade',90,0.9);