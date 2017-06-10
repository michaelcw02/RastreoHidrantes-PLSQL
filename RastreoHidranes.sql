connect system/manager as sysdba

DROP USER test CASCADE;
CREATE USER test IDENTIFIED BY test;
GRANT DBA TO test;

connect test/test;

SET SERVEROUTPUT ON;

--OBJETO Y UBICACION
CREATE OR REPLACE TYPE UBICACION_TYP AS OBJECT (
    CALLE   INTEGER,    -- CALLE EN LA QUE SE ENCUENTRA
    AV1     INTEGER,    -- ENTRE AV1
    AV2     INTEGER,    -- Y AV2
    POS     INTEGER     -- POSICION (1, 2, 3)
)
/

--OBJETO Y TABLA TOMA
CREATE OR REPLACE TYPE TOMA_TYP AS OBJECT (
    TAMANNO INTEGER     -- PULGADAS 
)
/

CREATE OR REPLACE TYPE TOMAS_TYP IS TABLE OF TOMA_TYP;
/

--  NO SE CUAL ES EL FORMATO QUE QUIERE UTILIZAR EL PROFE, YA LE PREGUNTÉ
-- AL ASISTENTE, PERO ME DICE QUE SEGURO ES DEL FORMATO DMS (DEGREES, MINUTES, SECONDS)
CREATE OR REPLACE TYPE GPS_TYP AS OBJECT (
    LAT FLOAT,  -- LAT: DECIMAL DEGREES:    9.97089
    LNG FLOAT   -- LNG: DECIMAL DEGREES:  -87.1290535
)
/

CREATE OR REPLACE TYPE CAUDAL_TYP AS OBJECT (
    -- CAUDAL = LITROS / SEGUNDOS.
    VALOR_ESPERADO  INTEGER,
    VALOR_REAL      INTEGER
)
/

CREATE OR REPLACE TYPE HIDRANTE_TYP AS OBJECT (
    UBIC    UBICACION_TYP,
    TOMAS   TOMAS_TYP,
    CAUDAL  CAUDAL_TYP,
    GPS     GPS_TYP,
    ESTADO  INTEGER
    -- BODY
    -- MEMBER FUNCTION NAME RETURN INTEGER,
)
/

-- CREATE OR REPLACE TYPE BODY HIDRANTE_TYP AS 
-- 
-- END;
-- /