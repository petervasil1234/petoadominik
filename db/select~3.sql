select pre.datum
,pre.cas
,jed.nazov as "Nazov jedalne"
,j.nazov as "Nazov jedla"
,pre.POCET_KUSOV * j.CENA || '€'  as "Celkova cena nakupu"  
,ROUND(pre.POCET_KUSOV * j.CENA * (jed.PERCENTO_NAVYSENIA/100),2)|| '€' as "Zisk z nakupu" 
from  predava 
pre inner join jedlo j 
on pre.ID_JEDLA = j.ID_JEDLA 
inner join jedalen jed
on pre.ID_JEDALNE = jed.ID_JEDALNE
order by pre.cas
;
