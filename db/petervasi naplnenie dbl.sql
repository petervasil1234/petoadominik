--Pozicie

INSERT INTO POZICIA (nazov, HODINOVA_MZDA) VALUES ('Veduca jedalne', 4.2);
INSERT INTO POZICIA (nazov, HODINOVA_MZDA) VALUES ('Kuchar', 3.8);
INSERT INTO POZICIA (nazov, HODINOVA_MZDA) VALUES ('Vydavac stravy', 3.5);
INSERT INTO POZICIA (nazov, HODINOVA_MZDA, POZNAMKA) VALUES ('Pomocna sila', 2.5, 'Vypomaha v kuchyni(cistenie zemiakov, umyvanie riadov)');
INSERT INTO POZICIA (nazov, HODINOVA_MZDA, POZNAMKA) VALUES ('Pokladnicka', 3.5, 'V pripade ze sa za jedlo plati na mieste');

-- Menu:

INSERT INTO MENU (nazov) VALUES ('Vegetarianske menu');
INSERT INTO MENU (nazov) VALUES ('Extra masove menu');
INSERT INTO MENU (nazov) VALUES ('Sladke menu');
INSERT INTO MENU (nazov) VALUES ('Piatkove menu');
INSERT INTO MENU (nazov) VALUES ('Pikantne menu');
INSERT INTO MENU (nazov) VALUES ('Medzinarodne menu');

--Inserts jedalen:


INSERT INTO JEDALEN (mesto, nazov, ulica, cislo_domu, percento_navysenia) values ('Bratislava', 'Jedalen pod Hradom','Pod hradom',5, 20.00 );
INSERT INTO JEDALEN (mesto, nazov, ulica, cislo_domu, percento_navysenia) values ('Martin', 'Skolska jedalen pri SS','Hlavna',12, 10.00);
INSERT INTO JEDALEN (mesto, nazov, ulica, cislo_domu, percento_navysenia) values ('Martin', 'Skolska jedalen pri ZS', 'Stefanikova',13, 13.05);
INSERT INTO JEDALEN (mesto, nazov, ulica, cislo_domu, percento_navysenia) values ('Skalica', 'Skalicka skolska jedalen','Dolna',13 , 10.11);
INSERT INTO JEDALEN (mesto, nazov, ulica, cislo_domu, percento_navysenia) values ('Trnava', 'Dobra jedalen','Horna',2,17.12);
INSERT INTO JEDALEN (mesto, nazov, ulica, percento_navysenia, cislo_domu) values ('Presov', 'Jedalen pri fakultnej nemocnici', 'Stefanikova', 15.5, 143 );
INSERT INTO JEDALEN (mesto, nazov, ulica, percento_navysenia, cislo_domu) values ('Giraltovce', 'Skolska jedalen v Giraltovciach', 'Fucikova', 13.7, 1765 );
INSERT INTO JEDALEN (mesto, nazov, ulica, percento_navysenia, cislo_domu) values ('Presov', 'Jedalen pri zakladnej skole', 'Sabinovska', 10.7, 1411 );
INSERT INTO JEDALEN (mesto, nazov, ulica, percento_navysenia, cislo_domu) values ('Bidovce', 'Jedalen Bidovce', 'Bidovce', 18.7, 211 );
INSERT INTO JEDALEN (mesto, nazov, ulica, percento_navysenia, cislo_domu) values ('Kosice', 'Jedalen na ulici Jedlikovej', 'Jedlikova', 11.8, 5 );


--inserts jedla:

INSERT INTO JEDLO (nazov,gramaz,cena) values ('Slepacia polievka s rezancami',150,0.55);
INSERT INTO JEDLO (nazov,gramaz,cena) values ('Paradajkova polievka',140,0.6);
INSERT INTO JEDLO (nazov,gramaz,cena) values ('Rybacia polievka - halaszle',150,0.6);
INSERT INTO JEDLO (nazov,gramaz,cena) values ('Francuzska polievka',150,0.55);
INSERT INTO JEDLO (nazov,gramaz,cena) values ('Sosovicova polievka',180,0.55);
INSERT INTO JEDLO (nazov,gramaz,cena) values ('Fazulova polievka so zeleninou',180,0.6);
INSERT INTO JEDLO (nazov,gramaz,cena) values ('Zeleninova polievka',150,0.45);
INSERT INTO JEDLO (nazov,gramaz,cena) values ('Bravcovy gulas',190,0.8);
INSERT INTO JEDLO (nazov,gramaz,cena) values ('Americke zemiaky',180,0.95);
INSERT INTO JEDLO (nazov,gramaz,cena) values ('Varene zemiaky mastene',200,0.75);
INSERT INTO JEDLO (nazov,gramaz,cena) values ('Ryza',150,0.6);
INSERT INTO JEDLO (nazov,gramaz,cena) values ('Zemiakova kasa',200,0.8);
INSERT INTO JEDLO (nazov,gramaz,cena) values ('Hranolky',160,0.85);
INSERT INTO JEDLO (nazov,gramaz,cena) values ('Cestoviny',190,0.75);

INSERT INTO JEDLO (nazov,gramaz,cena) values ('Kuraci steak',100,2);
INSERT INTO JEDLO (nazov,gramaz,cena) values ('Bravcove stehno na smotane',120,2.20); 
INSERT INTO JEDLO (nazov,gramaz,cena) values ('Halusky s tvarohom',200,1.5); 
INSERT INTO JEDLO (nazov,gramaz,cena) values ('Cestoviny s hobovou omackou',300,2.10); 
INSERT INTO JEDLO (nazov,gramaz,cena) values ('Segedinsky gulas s knedlou',250,3.20);
INSERT INTO JEDLO (nazov,gramaz,cena) values ('Rybaci sen',300,4);
INSERT INTO JEDLO (nazov,gramaz,cena) values ('Kuraci rezen',100,1.8);
INSERT INTO JEDLO (nazov,gramaz,cena) values ('Buchty na pare',100,1);
INSERT INTO JEDLO (nazov,gramaz,cena) values ('Francuzske zemiaky',400,3.5); 
INSERT INTO JEDLO (nazov,gramaz,cena) values ('Hovadzie stroganov',300,3);
INSERT INTO JEDLO (nazov,gramaz,cena) values ('Spaghety',300,2.80); 
INSERT INTO JEDLO (nazov,gramaz,cena) values ('Rizoto s kuracim masom',300,3); 

INSERT INTO JEDLO (nazov,gramaz,cena) values ('Zmrzlinovy pohar',100,1);
INSERT INTO JEDLO (nazov,gramaz,cena) values ('Jablkovy zavin',100,1.2);
INSERT INTO JEDLO (nazov,gramaz,cena) values ('Puding rozne druhy',100,0.80);
INSERT INTO JEDLO (nazov,gramaz,cena) values ('Kremes',100,1.2);
INSERT INTO JEDLO (nazov,gramaz,cena) values ('Smotanovy pohar',120,0.9);
INSERT INTO JEDLO (nazov,gramaz,cena) values ('Banany v cokolade',90,0.9);

----------------------------------------------------- Zamestnanec

---1. jedalen
  INSERT INTO ZAMESTNANEC_JEDALNE (MENO, PRIEZVISKO, DATUM_NARODENIA, POHLAVIE, ID_JEDALNE, ID_POZICIE) 
  VALUES ('Anna', 'Novakova',TO_DATE('01.01.1980','dd.mm.yyyy'), 'Z', 1, 1);
  
  INSERT INTO ZAMESTNANEC_JEDALNE (MENO, PRIEZVISKO, DATUM_NARODENIA, POHLAVIE, ID_JEDALNE, ID_POZICIE) 
  VALUES ('Jarmila', 'Bosakova',TO_DATE('05.11.1976','dd.mm.yyyy'), 'Z', 1, 2);
  
  INSERT INTO ZAMESTNANEC_JEDALNE (MENO, PRIEZVISKO, DATUM_NARODENIA, POHLAVIE, ID_JEDALNE, ID_POZICIE) 
  VALUES ('Jozef', 'Vysoky',TO_DATE('09.09.1970','dd.mm.yyyy'), 'M', 1, 2);
  
  INSERT INTO ZAMESTNANEC_JEDALNE (MENO, PRIEZVISKO, DATUM_NARODENIA, POHLAVIE, ID_JEDALNE, ID_POZICIE) 
  VALUES ('Alzbeta', 'Vysoka',TO_DATE('31.09.1972','dd.mm.yyyy'), 'Z', 1, 3);
  
  INSERT INTO ZAMESTNANEC_JEDALNE (MENO, PRIEZVISKO, DATUM_NARODENIA, POHLAVIE, ID_JEDALNE, ID_POZICIE) 
  VALUES ('Martina', 'Nizka',TO_DATE('24.12.1993','dd.mm.yyyy'), 'Z', 1, 5);
  
  INSERT INTO ZAMESTNANEC_JEDALNE (MENO, PRIEZVISKO, DATUM_NARODENIA, POHLAVIE, ID_JEDALNE, ID_POZICIE) 
  VALUES ('Martin', 'Pomocny',TO_DATE('13.01.1999','dd.mm.yyyy'), 'M', 1, 4);
  
  INSERT INTO ZAMESTNANEC_JEDALNE (MENO, PRIEZVISKO, DATUM_NARODENIA, POHLAVIE, ID_JEDALNE, ID_POZICIE) 
  VALUES ('Petra', 'Petrova',TO_DATE('10.01.1997','dd.mm.yyyy'), 'Z', 1, 4);
  
  
  
  --2. Jedalen
  
   INSERT INTO ZAMESTNANEC_JEDALNE (MENO, PRIEZVISKO, DATUM_NARODENIA, POHLAVIE, ID_JEDALNE, ID_POZICIE) 
  VALUES ('Martin', 'Veduci',TO_DATE('11.11.1981','dd.mm.yyyy'), 'M', 2, 1);
  
  INSERT INTO ZAMESTNANEC_JEDALNE (MENO, PRIEZVISKO, DATUM_NARODENIA, POHLAVIE, ID_JEDALNE, ID_POZICIE) 
  VALUES ('Helena', 'Stara',TO_DATE('05.11.1971','dd.mm.yyyy'), 'Z', 2, 2);
  
  INSERT INTO ZAMESTNANEC_JEDALNE (MENO, PRIEZVISKO, DATUM_NARODENIA, POHLAVIE, ID_JEDALNE, ID_POZICIE) 
  VALUES ('Bohumil', 'Suchy',TO_DATE('04.04.1974','dd.mm.yyyy'), 'M', 2, 2);
  
  INSERT INTO ZAMESTNANEC_JEDALNE (MENO, PRIEZVISKO, DATUM_NARODENIA, POHLAVIE, ID_JEDALNE, ID_POZICIE) 
  VALUES ('Alzbeta', 'Jarna',TO_DATE('30.09.1979','dd.mm.yyyy'), 'Z', 2, 3);
  
  INSERT INTO ZAMESTNANEC_JEDALNE (MENO, PRIEZVISKO, DATUM_NARODENIA, POHLAVIE, ID_JEDALNE, ID_POZICIE) 
  VALUES ('Klara', 'Zimna',TO_DATE('12.12.1992','dd.mm.yyyy'), 'Z', 2, 5);
  
  INSERT INTO ZAMESTNANEC_JEDALNE (MENO, PRIEZVISKO, DATUM_NARODENIA, POHLAVIE, ID_JEDALNE, ID_POZICIE) 
  VALUES ('Bohumil', 'Smutny',TO_DATE('29.01.1996','dd.mm.yyyy'), 'M', 2, 4);
  
  ---- 3. jedalen
  
   INSERT INTO ZAMESTNANEC_JEDALNE (MENO, PRIEZVISKO, DATUM_NARODENIA, POHLAVIE, ID_JEDALNE, ID_POZICIE) 
  VALUES ('Peter', 'Novak',TO_DATE('01.01.1989','dd.mm.yyyy'), 'M', 3, 1);
  
  INSERT INTO ZAMESTNANEC_JEDALNE (MENO, PRIEZVISKO, DATUM_NARODENIA, POHLAVIE, ID_JEDALNE, ID_POZICIE) 
  VALUES ('Bohus', 'Bosak',TO_DATE('08.10.1971','dd.mm.yyyy'), 'M', 3, 2);
  
  INSERT INTO ZAMESTNANEC_JEDALNE (MENO, PRIEZVISKO, DATUM_NARODENIA, POHLAVIE, ID_JEDALNE, ID_POZICIE) 
  VALUES ('Jozef', 'Mokry',TO_DATE('15.12.1965','dd.mm.yyyy'), 'M', 3, 2);
  
  INSERT INTO ZAMESTNANEC_JEDALNE (MENO, PRIEZVISKO, DATUM_NARODENIA, POHLAVIE, ID_JEDALNE, ID_POZICIE) 
  VALUES ('Alfonz', 'Letny',TO_DATE('28.10.1979','dd.mm.yyyy'), 'M', 3, 3);
  
  INSERT INTO ZAMESTNANEC_JEDALNE (MENO, PRIEZVISKO, DATUM_NARODENIA, POHLAVIE, ID_JEDALNE, ID_POZICIE) 
  VALUES ('Martin', 'Nizky',TO_DATE('24.12.1993','dd.mm.yyyy'), 'M', 3, 5);
  
  INSERT INTO ZAMESTNANEC_JEDALNE (MENO, PRIEZVISKO, DATUM_NARODENIA, POHLAVIE, ID_JEDALNE, ID_POZICIE) 
  VALUES ('Jaromir', 'Raz',TO_DATE('22.08.1995','dd.mm.yyyy'), 'M', 3, 4);
  
  --4. jedalen
  
   INSERT INTO ZAMESTNANEC_JEDALNE (MENO, PRIEZVISKO, DATUM_NARODENIA, POHLAVIE, ID_JEDALNE, ID_POZICIE) 
  VALUES ('Ivana', 'Ivanova',TO_DATE('02.11.1995','dd.mm.yyyy'), 'Z', 4, 1);
  
  INSERT INTO ZAMESTNANEC_JEDALNE (MENO, PRIEZVISKO, DATUM_NARODENIA, POHLAVIE, ID_JEDALNE, ID_POZICIE) 
  VALUES ('Jana', 'Skareda',TO_DATE('10.11.1992','dd.mm.yyyy'), 'Z', 4, 2);
  
  INSERT INTO ZAMESTNANEC_JEDALNE (MENO, PRIEZVISKO, DATUM_NARODENIA, POHLAVIE, ID_JEDALNE, ID_POZICIE) 
  VALUES ('Jozef', 'Vysoky',TO_DATE('02.02.1985','dd.mm.yyyy'), 'M', 4, 2);
  
  INSERT INTO ZAMESTNANEC_JEDALNE (MENO, PRIEZVISKO, DATUM_NARODENIA, POHLAVIE, ID_JEDALNE, ID_POZICIE) 
  VALUES ('Zuzana', 'Rapava',TO_DATE('23.03.1979','dd.mm.yyyy'), 'Z', 4, 3);
  
  INSERT INTO ZAMESTNANEC_JEDALNE (MENO, PRIEZVISKO, DATUM_NARODENIA, POHLAVIE, ID_JEDALNE, ID_POZICIE) 
  VALUES ('Lucia', 'Siroka',TO_DATE('02.05.1996','dd.mm.yyyy'), 'Z', 4, 5);
  
  -- 5. jedalen
  
  INSERT INTO ZAMESTNANEC_JEDALNE (MENO, PRIEZVISKO, DATUM_NARODENIA, POHLAVIE, ID_JEDALNE, ID_POZICIE) 
  VALUES ('Slavomira', 'Zla',TO_DATE('06.06.1980','dd.mm.yyyy'), 'Z', 5, 1);
  
  INSERT INTO ZAMESTNANEC_JEDALNE (MENO, PRIEZVISKO, DATUM_NARODENIA, POHLAVIE, ID_JEDALNE, ID_POZICIE) 
  VALUES ('Jarmila', 'Stastna',TO_DATE('05.11.1976','dd.mm.yyyy'), 'Z', 5, 2);
  
  INSERT INTO ZAMESTNANEC_JEDALNE (MENO, PRIEZVISKO, DATUM_NARODENIA, POHLAVIE, ID_JEDALNE, ID_POZICIE) 
  VALUES ('Jozef', 'Dobry',TO_DATE('28.02.1988','dd.mm.yyyy'), 'M', 5, 2);
  
  INSERT INTO ZAMESTNANEC_JEDALNE (MENO, PRIEZVISKO, DATUM_NARODENIA, POHLAVIE, ID_JEDALNE, ID_POZICIE) 
  VALUES ('Alzbeta', 'Vysoka',TO_DATE('22.02.1987','dd.mm.yyyy'), 'Z', 5, 3);
  
  INSERT INTO ZAMESTNANEC_JEDALNE (MENO, PRIEZVISKO, DATUM_NARODENIA, POHLAVIE, ID_JEDALNE, ID_POZICIE) 
  VALUES ('Martin', 'Biely',TO_DATE('31.12.1993','dd.mm.yyyy'), 'M', 5, 5);
  
  INSERT INTO ZAMESTNANEC_JEDALNE (MENO, PRIEZVISKO, DATUM_NARODENIA, POHLAVIE, ID_JEDALNE, ID_POZICIE) 
  VALUES ('Anto', 'Pomocny',TO_DATE('13.06.1998','dd.mm.yyyy'), 'M', 1, 4);


------------------------------------------------------- Obsahuje:

-- veg;
  INSERT INTO OBSAHUJE (ID_MENU, ID_JEDLA) 
  VALUES (1, 2);
  INSERT INTO OBSAHUJE (ID_MENU, ID_JEDLA) 
  VALUES (1, 5);
  INSERT INTO OBSAHUJE (ID_MENU, ID_JEDLA) 
  VALUES (1, 9);
  INSERT INTO OBSAHUJE (ID_MENU, ID_JEDLA) 
  VALUES (1, 10);
  INSERT INTO OBSAHUJE (ID_MENU, ID_JEDLA) 
  VALUES (1, 11);
  INSERT INTO OBSAHUJE (ID_MENU, ID_JEDLA) 
  VALUES (1, 12);
  INSERT INTO OBSAHUJE (ID_MENU, ID_JEDLA) 
  VALUES (1, 13);
  INSERT INTO OBSAHUJE (ID_MENU, ID_JEDLA) 
  VALUES (1, 14);
  INSERT INTO OBSAHUJE (ID_MENU, ID_JEDLA) 
  VALUES (1, 17);
  INSERT INTO OBSAHUJE (ID_MENU, ID_JEDLA) 
  VALUES (1, 18);
  INSERT INTO OBSAHUJE (ID_MENU, ID_JEDLA) 
  VALUES (1, 21);
  INSERT INTO OBSAHUJE (ID_MENU, ID_JEDLA) 
  VALUES (1, 25);

-- Extra masove:

  INSERT INTO OBSAHUJE (ID_MENU, ID_JEDLA) 
  VALUES (2, 8);
  INSERT INTO OBSAHUJE (ID_MENU, ID_JEDLA) 
  VALUES (2, 15);
  INSERT INTO OBSAHUJE (ID_MENU, ID_JEDLA) 
  VALUES (2, 16);
  INSERT INTO OBSAHUJE (ID_MENU, ID_JEDLA) 
  VALUES (2, 19);

-- Sladke menu:

  INSERT INTO OBSAHUJE (ID_MENU, ID_JEDLA) 
  VALUES (3, 21);
  INSERT INTO OBSAHUJE (ID_MENU, ID_JEDLA) 
  VALUES (3, 25);
  INSERT INTO OBSAHUJE (ID_MENU, ID_JEDLA) 
  VALUES (3, 26);
  INSERT INTO OBSAHUJE (ID_MENU, ID_JEDLA) 
  VALUES (3, 27);
  INSERT INTO OBSAHUJE (ID_MENU, ID_JEDLA) 
  VALUES (3, 29);
  INSERT INTO OBSAHUJE (ID_MENU, ID_JEDLA) 
  VALUES (3, 30);
  
-- Piatkove menu

  INSERT INTO OBSAHUJE (ID_MENU, ID_JEDLA) 
  VALUES (4, 3);
  INSERT INTO OBSAHUJE (ID_MENU, ID_JEDLA) 
  VALUES (4, 5);
  INSERT INTO OBSAHUJE (ID_MENU, ID_JEDLA) 
  VALUES (4, 7);
  INSERT INTO OBSAHUJE (ID_MENU, ID_JEDLA) 
  VALUES (4, 17);
  INSERT INTO OBSAHUJE (ID_MENU, ID_JEDLA) 
  VALUES (4, 20);
  INSERT INTO OBSAHUJE (ID_MENU, ID_JEDLA) 
  VALUES (4, 21);

-- Pikantne

  INSERT INTO OBSAHUJE (ID_MENU, ID_JEDLA) 
  VALUES (5, 8);
  INSERT INTO OBSAHUJE (ID_MENU, ID_JEDLA) 
  VALUES (5, 6);
  
  
-- Medzinarodne

  INSERT INTO OBSAHUJE (ID_MENU, ID_JEDLA) 
  VALUES (6, 4);
  INSERT INTO OBSAHUJE (ID_MENU, ID_JEDLA) 
  VALUES (6, 9);
  INSERT INTO OBSAHUJE (ID_MENU, ID_JEDLA) 
  VALUES (6, 11);
  INSERT INTO OBSAHUJE (ID_MENU, ID_JEDLA) 
  VALUES (6, 18);
  INSERT INTO OBSAHUJE (ID_MENU, ID_JEDLA) 
  VALUES (6, 19);
  INSERT INTO OBSAHUJE (ID_MENU, ID_JEDLA) 
  VALUES (6, 22);
  INSERT INTO OBSAHUJE (ID_MENU, ID_JEDLA) 
  VALUES (6, 23);
  INSERT INTO OBSAHUJE (ID_MENU, ID_JEDLA) 
  VALUES (6, 24);
  
  ----------------------------------------------- Ponuka:
  
   INSERT INTO PONUKA (ID_JEDALNE, ID_MENU, DATUM) 
  VALUES (1, 4, TO_DATE('11.04.2016','dd.mm.yyyy'));
  INSERT INTO PONUKA (ID_JEDALNE, ID_MENU, DATUM) 
  VALUES (1, 2, TO_DATE('10.04.2016','dd.mm.yyyy'));
  INSERT INTO PONUKA (ID_JEDALNE, ID_MENU, DATUM) 
  VALUES (1, 3, TO_DATE('9.04.2016','dd.mm.yyyy'));
  INSERT INTO PONUKA (ID_JEDALNE, ID_MENU, DATUM) 
  VALUES (1, 1, TO_DATE('8.04.2016','dd.mm.yyyy'));
  INSERT INTO PONUKA (ID_JEDALNE, ID_MENU, DATUM) 
  VALUES (1, 2, TO_DATE('7.04.2016','dd.mm.yyyy'));
  INSERT INTO PONUKA (ID_JEDALNE, ID_MENU, DATUM) 
  VALUES (2, 3, TO_DATE('11.04.2016','dd.mm.yyyy'));
  INSERT INTO PONUKA (ID_JEDALNE, ID_MENU, DATUM) 
  VALUES (2, 4, TO_DATE('10.04.2016','dd.mm.yyyy'));
  INSERT INTO PONUKA (ID_JEDALNE, ID_MENU, DATUM) 
  VALUES (2, 6, TO_DATE('09.04.2016','dd.mm.yyyy'));
  INSERT INTO PONUKA (ID_JEDALNE, ID_MENU, DATUM) 
  VALUES (2, 4, TO_DATE('08.04.2016','dd.mm.yyyy'));
  INSERT INTO PONUKA (ID_JEDALNE, ID_MENU, DATUM) 
  VALUES (3, 3, TO_DATE('11.04.2016','dd.mm.yyyy'));
  INSERT INTO PONUKA (ID_JEDALNE, ID_MENU, DATUM) 
  VALUES (3, 3, TO_DATE('10.04.2016','dd.mm.yyyy'));
  INSERT INTO PONUKA (ID_JEDALNE, ID_MENU, DATUM) 
  VALUES (3, 2, TO_DATE('09.04.2016','dd.mm.yyyy'));
  INSERT INTO PONUKA (ID_JEDALNE, ID_MENU, DATUM) 
  VALUES (4, 1, TO_DATE('11.04.2016','dd.mm.yyyy'));
  INSERT INTO PONUKA (ID_JEDALNE, ID_MENU, DATUM) 
  VALUES (4, 6, TO_DATE('10.04.2016','dd.mm.yyyy'));
  INSERT INTO PONUKA (ID_JEDALNE, ID_MENU, DATUM) 
  VALUES (4, 6, TO_DATE('09.04.2016','dd.mm.yyyy'));
  INSERT INTO PONUKA (ID_JEDALNE, ID_MENU, DATUM) 
  VALUES (4, 2, TO_DATE('08.04.2016','dd.mm.yyyy'));
  INSERT INTO PONUKA (ID_JEDALNE, ID_MENU, DATUM) 
  VALUES (4, 3, TO_DATE('07.04.2016','dd.mm.yyyy'));
  INSERT INTO PONUKA (ID_JEDALNE, ID_MENU, DATUM) 
  VALUES (5, 1, TO_DATE('11.04.2016','dd.mm.yyyy'));
  INSERT INTO PONUKA (ID_JEDALNE, ID_MENU, DATUM) 
  VALUES (5, 2, TO_DATE('11.04.2016','dd.mm.yyyy'));
  INSERT INTO PONUKA (ID_JEDALNE, ID_MENU, DATUM) 
  VALUES (5, 3, TO_DATE('10.04.2016','dd.mm.yyyy'));
  INSERT INTO PONUKA (ID_JEDALNE, ID_MENU, DATUM) 
  VALUES (5, 4, TO_DATE('09.04.2016','dd.mm.yyyy'));
  INSERT INTO PONUKA (ID_JEDALNE, ID_MENU, DATUM) 
  VALUES (5, 5, TO_DATE('08.04.2016','dd.mm.yyyy'));
  
  --------------------------------------------------- Predava:
  
   INSERT INTO PREDAVA (ID_JEDALNE, ID_JEDLA, DATUM, CAS, POCET_KUSOV) 
  VALUES (1, 3, TO_DATE('11.04.2016','dd.mm.yyyy'), '11:04:56', 1);
   INSERT INTO PREDAVA (ID_JEDALNE, ID_JEDLA, DATUM, CAS, POCET_KUSOV) 
  VALUES (1, 5, TO_DATE('11.04.2016','dd.mm.yyyy'), '11:05:34', 1);
   INSERT INTO PREDAVA (ID_JEDALNE, ID_JEDLA, DATUM, CAS, POCET_KUSOV) 
  VALUES (1, 7, TO_DATE('11.04.2016','dd.mm.yyyy'),'11:06:32', 2);
   INSERT INTO PREDAVA (ID_JEDALNE, ID_JEDLA, DATUM, CAS, POCET_KUSOV) 
  VALUES (1, 17, TO_DATE('11.04.2016','dd.mm.yyyy'), '12:38:56', 1);
   INSERT INTO PREDAVA (ID_JEDALNE, ID_JEDLA, DATUM, CAS, POCET_KUSOV) 
  VALUES (1, 3, TO_DATE('11.04.2016','dd.mm.yyyy'), '16:20:00', 3);
  
  INSERT INTO PREDAVA (ID_JEDALNE, ID_JEDLA, DATUM, CAS, POCET_KUSOV) 
  VALUES (2, 25, TO_DATE('11.04.2016','dd.mm.yyyy'), '11:00:06', 1);
   INSERT INTO PREDAVA (ID_JEDALNE, ID_JEDLA, DATUM, CAS, POCET_KUSOV) 
  VALUES (2, 26, TO_DATE('11.04.2016','dd.mm.yyyy'), '11:09:02', 2);
   INSERT INTO PREDAVA (ID_JEDALNE, ID_JEDLA, DATUM, CAS, POCET_KUSOV) 
  VALUES (2, 27, TO_DATE('11.04.2016','dd.mm.yyyy'), '11:59:59', 1);
   INSERT INTO PREDAVA (ID_JEDALNE, ID_JEDLA, DATUM, CAS, POCET_KUSOV) 
  VALUES (2, 29, TO_DATE('11.04.2016','dd.mm.yyyy'), '12:36:56', 2);
   INSERT INTO PREDAVA (ID_JEDALNE, ID_JEDLA, DATUM, CAS, POCET_KUSOV) 
  VALUES (2, 30, TO_DATE('11.04.2016','dd.mm.yyyy'), '13:04:56', 1);
  
  INSERT INTO PREDAVA (ID_JEDALNE, ID_JEDLA, DATUM, CAS, POCET_KUSOV) 
  VALUES (3, 21, TO_DATE('11.04.2016','dd.mm.yyyy'), '12:04:56', 2);
   INSERT INTO PREDAVA (ID_JEDALNE, ID_JEDLA, DATUM, CAS, POCET_KUSOV) 
  VALUES (3, 21, TO_DATE('11.04.2016','dd.mm.yyyy'), '13:04:56', 1);
   INSERT INTO PREDAVA (ID_JEDALNE, ID_JEDLA, DATUM, CAS, POCET_KUSOV)
  VALUES (3, 30, TO_DATE('11.04.2016','dd.mm.yyyy'), '14:04:56', 2);
   INSERT INTO PREDAVA (ID_JEDALNE, ID_JEDLA, DATUM, CAS, POCET_KUSOV) 
  VALUES (3, 29, TO_DATE('11.04.2016','dd.mm.yyyy'), '15:04:56', 10);
   INSERT INTO PREDAVA (ID_JEDALNE, ID_JEDLA, DATUM, CAS, POCET_KUSOV) 
  VALUES (3, 27, TO_DATE('11.04.2016','dd.mm.yyyy'), '16:04:56', 2);
  
  INSERT INTO PREDAVA (ID_JEDALNE, ID_JEDLA, DATUM, CAS, POCET_KUSOV) 
  VALUES (4, 9, TO_DATE('11.04.2016','dd.mm.yyyy'), '11:21:00', 2);
   INSERT INTO PREDAVA (ID_JEDALNE, ID_JEDLA, DATUM, CAS, POCET_KUSOV) 
  VALUES (4, 10, TO_DATE('11.04.2016','dd.mm.yyyy'), '12:34:59', 1);
   INSERT INTO PREDAVA (ID_JEDALNE, ID_JEDLA, DATUM, CAS, POCET_KUSOV) 
  VALUES (4, 10, TO_DATE('11.04.2016','dd.mm.yyyy'), '12:24:55', 2);
   INSERT INTO PREDAVA (ID_JEDALNE, ID_JEDLA, DATUM, CAS, POCET_KUSOV) 
  VALUES (4, 17, TO_DATE('11.04.2016','dd.mm.yyyy'), '13:24:46', 1);
   INSERT INTO PREDAVA (ID_JEDALNE, ID_JEDLA, DATUM, CAS, POCET_KUSOV) 
  VALUES (4, 14, TO_DATE('11.04.2016','dd.mm.yyyy'), '13:14:59', 24);
  
  INSERT INTO PREDAVA (ID_JEDALNE, ID_JEDLA, DATUM, CAS, POCET_KUSOV) 
  VALUES (5, 8, TO_DATE('11.04.2016','dd.mm.yyyy'),'11:00:56', 1);
   INSERT INTO PREDAVA (ID_JEDALNE, ID_JEDLA, DATUM, CAS, POCET_KUSOV) 
  VALUES (5, 15, TO_DATE('11.04.2016','dd.mm.yyyy'), '12:03:50', 1);
   INSERT INTO PREDAVA (ID_JEDALNE, ID_JEDLA, DATUM, CAS, POCET_KUSOV) 
  VALUES (5, 16, TO_DATE('11.04.2016','dd.mm.yyyy'), '12:04:56', 2);
   INSERT INTO PREDAVA (ID_JEDALNE, ID_JEDLA, DATUM, CAS, POCET_KUSOV) 
  VALUES (5, 19, TO_DATE('11.04.2016','dd.mm.yyyy'), '13:04:56', 1);
   INSERT INTO PREDAVA (ID_JEDALNE, ID_JEDLA, DATUM, CAS, POCET_KUSOV) 
  VALUES (5, 17, TO_DATE('11.04.2016','dd.mm.yyyy'), '13:04:56', 8);
  
  insert
into tablename (timestamp_value)
values (TO_TIMESTAMP('13:04:56', 'HH24:MI:SS'));

TO_TIMESTAMP(:ts_val, 'YYYY.MM.DD HH24:MI:SS')

INSERT INTO PREDAVA (ID_JEDALNE, ID_JEDLA, DATUM, CAS, POCET_KUSOV) 
  VALUES (1, 3, TO_DATE('11.04.2016','dd.mm.yyyy'), '11:04:56','hh24:mi:ss'), 1);
   INSERT INTO PREDAVA (ID_JEDALNE, ID_JEDLA, DATUM, CAS, POCET_KUSOV) 
  VALUES (1, 5, TO_DATE('11.04.2016','dd.mm.yyyy'), TO_DATE('11:05:34','hh24:mi:ss'), 1);
   INSERT INTO PREDAVA (ID_JEDALNE, ID_JEDLA, DATUM, CAS, POCET_KUSOV) 
  VALUES (1, 7, TO_DATE('11.04.2016','dd.mm.yyyy'), TO_DATE('11:06:32','hh24:mi:ss'), 2);
   INSERT INTO PREDAVA (ID_JEDALNE, ID_JEDLA, DATUM, CAS, POCET_KUSOV) 
  VALUES (1, 17, TO_DATE('11.04.2016','dd.mm.yyyy'), TO_DATE('12:38:56','hh24:mi:ss'), 1);
   INSERT INTO PREDAVA (ID_JEDALNE, ID_JEDLA, DATUM, CAS, POCET_KUSOV) 
  VALUES (1, 3, TO_DATE('11.04.2016','dd.mm.yyyy'), TO_DATE('16:20:00','hh24:mi:ss'), 3);
  
  INSERT INTO PREDAVA (ID_JEDALNE, ID_JEDLA, DATUM, CAS, POCET_KUSOV) 
  VALUES (2, 25, TO_DATE('11.04.2016','dd.mm.yyyy'), TO_TIME('11:00:06','hh24:mi:ss'), 1);
   INSERT INTO PREDAVA (ID_JEDALNE, ID_JEDLA, DATUM, CAS, POCET_KUSOV) 
  VALUES (2, 26, TO_DATE('11.04.2016','dd.mm.yyyy'), TO_DATE('11:09:02','hh24:mi:ss'), 2);
   INSERT INTO PREDAVA (ID_JEDALNE, ID_JEDLA, DATUM, CAS, POCET_KUSOV) 
  VALUES (2, 27, TO_DATE('11.04.2016','dd.mm.yyyy'), TO_DATE('11:59:59','hh24:mi:ss'), 1);
   INSERT INTO PREDAVA (ID_JEDALNE, ID_JEDLA, DATUM, CAS, POCET_KUSOV) 
  VALUES (2, 29, TO_DATE('11.04.2016','dd.mm.yyyy'), TO_DATE('12:36:56','hh24:mi:ss'), 2);
   INSERT INTO PREDAVA (ID_JEDALNE, ID_JEDLA, DATUM, CAS, POCET_KUSOV) 
  VALUES (2, 30, TO_DATE('11.04.2016','dd.mm.yyyy'), TO_DATE('13:04:56','hh24:mi:ss'), 1);
  
  INSERT INTO PREDAVA (ID_JEDALNE, ID_JEDLA, DATUM, CAS, POCET_KUSOV) 
  VALUES (3, 21, TO_DATE('11.04.2016','dd.mm.yyyy'), TO_DATE('12:04:56','hh24:mi:ss'), 2);
   INSERT INTO PREDAVA (ID_JEDALNE, ID_JEDLA, DATUM, CAS, POCET_KUSOV) 
  VALUES (3, 21, TO_DATE('11.04.2016','dd.mm.yyyy'), TO_DATE('13:04:56','hh24:mi:ss'), 1);
   INSERT INTO PREDAVA (ID_JEDALNE, ID_JEDLA, DATUM, CAS, POCET_KUSOV)
  VALUES (3, 30, TO_DATE('11.04.2016','dd.mm.yyyy'), TO_DATE('14:04:56','hh24:mi:ss'), 2);
   INSERT INTO PREDAVA (ID_JEDALNE, ID_JEDLA, DATUM, CAS, POCET_KUSOV) 
  VALUES (3, 29, TO_DATE('11.04.2016','dd.mm.yyyy'), TO_DATE('15:04:56','hh24:mi:ss'), 10);
   INSERT INTO PREDAVA (ID_JEDALNE, ID_JEDLA, DATUM, CAS, POCET_KUSOV) 
  VALUES (3, 27, TO_DATE('11.04.2016','dd.mm.yyyy'), TO_DATE('16:04:56','hh24:mi:ss'), 2);
  
  INSERT INTO PREDAVA (ID_JEDALNE, ID_JEDLA, DATUM, CAS, POCET_KUSOV) 
  VALUES (4, 9, TO_DATE('11.04.2016','dd.mm.yyyy'), TO_DATE('11:21:00','hh24:mi:ss'), 2);
   INSERT INTO PREDAVA (ID_JEDALNE, ID_JEDLA, DATUM, CAS, POCET_KUSOV) 
  VALUES (4, 10, TO_DATE('11.04.2016','dd.mm.yyyy'), TO_DATE('12:34:59','hh24:mi:ss'), 1);
   INSERT INTO PREDAVA (ID_JEDALNE, ID_JEDLA, DATUM, CAS, POCET_KUSOV) 
  VALUES (4, 10, TO_DATE('11.04.2016','dd.mm.yyyy'), TO_DATE('12:24:55','hh24:mi:ss'), 2);
   INSERT INTO PREDAVA (ID_JEDALNE, ID_JEDLA, DATUM, CAS, POCET_KUSOV) 
  VALUES (4, 17, TO_DATE('11.04.2016','dd.mm.yyyy'), TO_DATE('13:24:46','hh24:mi:ss'), 1);
   INSERT INTO PREDAVA (ID_JEDALNE, ID_JEDLA, DATUM, CAS, POCET_KUSOV) 
  VALUES (4, 14, TO_DATE('11.04.2016','dd.mm.yyyy'), TO_DATE('13:14:59','hh24:mi:ss'), 24);
  
  INSERT INTO PREDAVA (ID_JEDALNE, ID_JEDLA, DATUM, CAS, POCET_KUSOV) 
  VALUES (5, 8, TO_DATE('11.04.2016','dd.mm.yyyy'), TO_DATE('11:00:56','hh24:mi:ss'), 1);
   INSERT INTO PREDAVA (ID_JEDALNE, ID_JEDLA, DATUM, CAS, POCET_KUSOV) 
  VALUES (5, 15, TO_DATE('11.04.2016','dd.mm.yyyy'), TO_DATE('12:03:50','hh24:mi:ss'), 1);
   INSERT INTO PREDAVA (ID_JEDALNE, ID_JEDLA, DATUM, CAS, POCET_KUSOV) 
  VALUES (5, 16, TO_DATE('11.04.2016','dd.mm.yyyy'), TO_DATE('12:04:56','hh24:mi:ss'), 2);
   INSERT INTO PREDAVA (ID_JEDALNE, ID_JEDLA, DATUM, CAS, POCET_KUSOV) 
  VALUES (5, 19, TO_DATE('11.04.2016','dd.mm.yyyy'), TO_DATE('13:04:56','hh24:mi:ss'), 1);
   INSERT INTO PREDAVA (ID_JEDALNE, ID_JEDLA, DATUM, CAS, POCET_KUSOV) 
  VALUES (5, 17, TO_DATE('11.04.2016','dd.mm.yyyy'), TO_TIMESTAMP('11.04.2016 13:04:56', 'YYYY.MM.DD HH24:MI:SS'), 8);

  
  --------------------------------------------------------------------------------- Zisk:
  
    INSERT INTO PRODUKCIA_ZISKU (ID_JEDALNE, MESIAC, ROK, ZISK)
  VALUES (1, 11, 2015, 1023.22);
  INSERT INTO PRODUKCIA_ZISKU (ID_JEDALNE, MESIAC, ROK, ZISK)
  VALUES (1, 12, 2015, 976.98);
  INSERT INTO PRODUKCIA_ZISKU (ID_JEDALNE, MESIAC, ROK, ZISK)
  VALUES (1, 1, 2016, 725.34);
  INSERT INTO PRODUKCIA_ZISKU (ID_JEDALNE, MESIAC, ROK, ZISK)
  VALUES (1, 2, 2016, 1234.98);
  INSERT INTO PRODUKCIA_ZISKU (ID_JEDALNE, MESIAC, ROK, ZISK)
  VALUES (1, 3, 2016, 1503.22);
  
   INSERT INTO PRODUKCIA_ZISKU (ID_JEDALNE, MESIAC, ROK, ZISK)
  VALUES (2, 11, 2015, 1090.22);
  INSERT INTO PRODUKCIA_ZISKU (ID_JEDALNE, MESIAC, ROK, ZISK)
  VALUES (2, 12, 2015, 732.98);
  INSERT INTO PRODUKCIA_ZISKU (ID_JEDALNE, MESIAC, ROK, ZISK)
  VALUES (2, 1, 2016, 222.34);
  INSERT INTO PRODUKCIA_ZISKU (ID_JEDALNE, MESIAC, ROK, ZISK)
  VALUES (2, 2, 2016, 323.98);
  INSERT INTO PRODUKCIA_ZISKU (ID_JEDALNE, MESIAC, ROK, ZISK)
  VALUES (2, 3, 2016, 1222.22);
  
   INSERT INTO PRODUKCIA_ZISKU (ID_JEDALNE, MESIAC, ROK, ZISK)
  VALUES (3, 11, 2015, 762.22);
  INSERT INTO PRODUKCIA_ZISKU (ID_JEDALNE, MESIAC, ROK, ZISK)
  VALUES (3, 12, 2015, 653.98);
  INSERT INTO PRODUKCIA_ZISKU (ID_JEDALNE, MESIAC, ROK, ZISK)
  VALUES (3, 1, 2016, 532.34);
  INSERT INTO PRODUKCIA_ZISKU (ID_JEDALNE, MESIAC, ROK, ZISK)
  VALUES (3, 2, 2016, 432.98);
  INSERT INTO PRODUKCIA_ZISKU (ID_JEDALNE, MESIAC, ROK, ZISK)
  VALUES (3, 3, 2016, 321.22);
  
   INSERT INTO PRODUKCIA_ZISKU (ID_JEDALNE, MESIAC, ROK, ZISK)
  VALUES (4, 11, 2015, 1023.22);
  INSERT INTO PRODUKCIA_ZISKU (ID_JEDALNE, MESIAC, ROK, ZISK)
  VALUES (4, 12, 2015, 1092.98);
  INSERT INTO PRODUKCIA_ZISKU (ID_JEDALNE, MESIAC, ROK, ZISK)
  VALUES (4, 1, 2016, 2003.34);
  INSERT INTO PRODUKCIA_ZISKU (ID_JEDALNE, MESIAC, ROK, ZISK)
  VALUES (4, 2, 2016, 1678.98);
  INSERT INTO PRODUKCIA_ZISKU (ID_JEDALNE, MESIAC, ROK, ZISK)
  VALUES (4, 3, 2016, 1980.22);
  
   INSERT INTO PRODUKCIA_ZISKU (ID_JEDALNE, MESIAC, ROK, ZISK)
  VALUES (5, 11, 2015, 1023.22);
  INSERT INTO PRODUKCIA_ZISKU (ID_JEDALNE, MESIAC, ROK, ZISK)
  VALUES (5, 12, 2015, 976.98);
  INSERT INTO PRODUKCIA_ZISKU (ID_JEDALNE, MESIAC, ROK, ZISK)
  VALUES (5, 1, 2016, 725.34);
  INSERT INTO PRODUKCIA_ZISKU (ID_JEDALNE, MESIAC, ROK, ZISK)
  VALUES (5, 2, 2016, 1234.98);
  INSERT INTO PRODUKCIA_ZISKU (ID_JEDALNE, MESIAC, ROK, ZISK)
  VALUES (5, 3, 2016, 1503.22);
  

  
  



--dropy:

drop table jedalen;
drop table jedlo;
drop table menu;
drop table obsahuje;
drop table ponuka;
drop table pozicia;
drop table predava;
drop table produkuje_zisk;
drop table zisk;
drop table zamestnanec_jedalne;

