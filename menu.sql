SET SERVEROUT ON;

SHOW USER

PROMPT Por favor escoja una de las siguientes opciones:
PROMPT 1: Buscar Hidrantes Cercanos.
PROMPT 0: Salir.

ACCEPT SELECTION PROMPT "Digite 0 - 1: "

SET TERM OFF
        COLUMN SCRIPT NEW_VALUE v_script 
        SELECT CASE '&op'
                WHEN '1' THEN 'C:\Users\micha\Desktop\RastreoHidrantes-PLSQL\busqueda_hidrantes'
                WHEN '0' THEN 'C:\Users\micha\Desktop\RastreoHidrantes-PLSQL\exit'
                ELSE 'C:\Users\micha\Desktop\RastreoHidrantes-PLSQL\menu'
                END AS SCRIPT
        FROM DUAL;
SET TERM ON
@&v_script.