--Cena predaja a zisk z jedla

create view Cena_predaja as select pre.datum
,pre.cas
,jed.nazov as "Nazov jedalne"
,j.nazov as "Nazov jedla"
,pre.POCET_KUSOV * j.CENA || ' €'  as "Celkova cena nakupu"  
,ROUND(pre.POCET_KUSOV * j.CENA * (jed.PERCENTO_NAVYSENIA/100),2)|| ' €' as "Zisk z nakupu" 
from  predava 
pre inner join jedlo j 
on pre.ID_JEDLA = j.ID_JEDLA 
inner join jedalen jed
on pre.ID_JEDALNE = jed.ID_JEDALNE
order by pre.cas
;

-- Pocet jedalni podla miest
create view Pocet_jedalni as SELECT j.MESTO, COUNT(*) AS "POCET JEDALNI" 
FROM JEDALEN j GROUP BY j.MESTO; 

-- Najlacnejsia jedalen

create view najlacnejsia_jedalen as SELECT * FROM 
(SELECT j.MESTO, j.NAZOV, j.PERCENTO_NAVYSENIA|| ' %' as "Navysenie" 
FROM JEDALEN j ORDER BY j.PERCENTO_NAVYSENIA)
 WHERE ROWNUM <= 1;
 
-- Pocet muzov a zien v jedalniach

create view pocet_Muzov_a_Zien as SELECT j.NAZOV, z.POHLAVIE,
COUNT(*) AS "POCET" FROM ZAMESTNANEC_JEDALNE z NATURAL JOIN JEDALEN j 
GROUP BY z.POHLAVIE, j.NAZOV ORDER BY 1;

-- Priemerny plat na poziciu

create view priemerny_plat as SELECT p.NAZOV, p.HODINOVA_MZDA*120 AS "PRIEMERNA MESACNA MZDA" FROM pozicia p;

-- Priemerny zisk jedalne za cele obdobie

create view priemerny_zisk as SELECT j.NAZOV,
AVG(pr.ZISK) AS "PRIEMERNY ZISK" 
FROM PRODUKCIA_ZISKU pr NATURAL JOIN JEDALEN j GROUP BY j.NAZOV;

-- Menu a jedla ktore sa v nom nachadzaju

create view jedla_v_menu as SELECT 
m.NAZOV as "Nazov menu",
j.Nazov as "Nazov jedla",
j.gramaz,
j.cena
FROM OBSAHUJE o inner JOIN MENU m 
on o.ID_MENU = m.ID_MENU
inner join jedlo j
on j.ID_JEDLA = o.ID_JEDLA
order by m.nazov; 

-- Oblubenost jedla
create view oblubenost_jedla as Select j.NAZOV as "Nazov jedla",
nvl2(sum(p.POCET_KUSOV),sum(p.POCET_KUSOV),0) as "Pocet predanych ks" 
from predava p natural right join jedlo j 
group by j.nazov order by SUM(p.pocet_kusov) desc nulls last;


-- Vypis vsetkych zamestnancov zoradenych podla veku od najmladsieho
CREATE VIEW zoznam_zamestnancov_podla_veku AS
SELECT z.MENO, z.PRIEZVISKO, ROUND(((CURRENT_DATE - z.DATUM_NARODENIA)/365), 0) 
AS "VEK" FROM ZAMESTNANEC_JEDALNE z ORDER BY z.DATUM_NARODENIA DESC;

-- Vypis jedalni a zamestnancov, ktori su v nich zamestnani
CREATE VIEW vypis_jedalni_a_zamestnancov AS
SELECT j.ID_JEDALNE, j.MESTO, j.NAZOV, j.ULICA, z.MENO, z.PRIEZVISKO FROM JEDALEN j 
FULL OUTER JOIN ZAMESTNANEC_JEDALNE z ON j.ID_JEDALNE = z.ID_JEDALNE ORDER BY j.ID_JEDALNE;

-- Vypis vsetkych jedalni zoradenych podla mesta
CREATE VIEW zoznam_jedalni AS
SELECT j.NAZOV, j.MESTO, j.ULICA, j.CISLO_DOMU AS "CISLO" FROM JEDALEN j ORDER BY j.MESTO;

-- Zoznam jedal nezaradenych do ziadneho menu
CREATE VIEW zoznam_nezaradenych_jedal AS
(SELECT j.NAZOV FROM JEDLO j
MINUS
SELECT DISTINCT jvm."Nazov jedla" FROM JEDLA_V_MENU jvm);
