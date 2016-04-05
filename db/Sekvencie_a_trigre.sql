---------------------------------------------- Jedalen
CREATE SEQUENCE s_jedalen;

CREATE OR REPLACE TRIGGER t_jedalen 
BEFORE INSERT ON jedalen
FOR EACH ROW

BEGIN
  SELECT s_jedalen.NEXTVAL
  INTO   :new.id_jedalne
  FROM   dual;
END;
---------------------------------------------- Zamestanec

CREATE SEQUENCE s_zamestanec;

CREATE OR REPLACE TRIGGER t_zamestnanec 
BEFORE INSERT ON zamestnanec_jedalne
FOR EACH ROW

BEGIN
  SELECT s_zamestanec.NEXTVAL
  INTO   :new.id_zamestnanca
  FROM   dual;
END;
---------------------------------------------- Pozicia
CREATE SEQUENCE s_pozicia;

CREATE OR REPLACE TRIGGER t_pozicia 
BEFORE INSERT ON pozicia
FOR EACH ROW

BEGIN
  SELECT s_pozicia.NEXTVAL
  INTO   :new.id_pozicie
  FROM   dual;
END;
---------------------------------------------- Zisk
CREATE SEQUENCE s_zisk;

CREATE OR REPLACE TRIGGER t_zisk 
BEFORE INSERT ON zisk
FOR EACH ROW

BEGIN
  SELECT s_zisk.NEXTVAL
  INTO   :new.id_zisk
  FROM   dual;
END;
---------------------------------------------- Menu
CREATE SEQUENCE s_menu;

CREATE OR REPLACE TRIGGER t_menu 
BEFORE INSERT ON menu
FOR EACH ROW

BEGIN
  SELECT s_menu.NEXTVAL
  INTO   :new.id_menu
  FROM   dual;
END;
---------------------------------------------- Jedlo
CREATE SEQUENCE s_jedlo;

CREATE OR REPLACE TRIGGER t_jedlo
BEFORE INSERT ON jedlo
FOR EACH ROW

BEGIN
  SELECT s_jedlo.NEXTVAL
  INTO   :new.id_jedlo
  FROM   dual;
END;