SET SERVEROUT ON;
SHOW USER
PROMPT POR FAVOR DIGITE LA INFORMACION:

PROMPT LATITUD:
ACCEPT LATG PROMPT "GRADOS 		:"
ACCEPT LATM PROMPT "MINUTOS 	:"
ACCEPT LATS PROMPT "SEGUNDOS	:"
ACCEPT LATD PROMPT "DIRECCION	:"


PROMPT LONGITUD:
ACCEPT LNGG PROMPT "GRADOS 		:"
ACCEPT LNGM PROMPT "MINUTOS		:"
ACCEPT LNGS PROMPT "SEGUNDOS	:"
ACCEPT LNGD PROMPT "DIRECCION	:"

PROMPT RADIO DE BUSQUEDA:
ACCEPT RADIO PROMPT "RADIO 		:"

EXEC BUSCAR_HIDRANTES(&LATG, &LATM, &LATS, &LATD, &LNGG, &LNGM, &LNGS, &LNGD, &RADIO);