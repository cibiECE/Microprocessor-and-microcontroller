;Control LED using Logic Gates AND
ORG 0000H;initial address
SETB P0.0;INITIALIZE P0.0 AS 1 i.e LOGIC HIGH
SETB P0.1;INITIALIZE P0.1 AS 1 i.e LOGIC HIGH
SETB P0.5;INITIALIZE P0.5 AS 1 i.e LOGIC HIGH
READ:CLR A;CLR A IN ORDER TO CLEAR THE PRIVIOUS CONTENT
MOV A,P0;READ THE CONTENT OF P0 AND STORE IT TO ACCUMULATOR
ANL A,#03H;DO AND LOGIC (ACCUMULATOR AND IMMEDIATE DATA 03H)
CJNE A,#03H,TURNON;COMPARE THE ACCUMULATOR CONTENT WITH IMMEDIATE DATA 03 IF NOT EQUAL JUMP TURNON
SETB P0.5;SET P0.5 TO TURNOFF THE LED
AJMP READ;AFTER TURN OFF AGAIN JUMP TO READ
TURNON:CLR P0.5;CLEAR THE LEAD IN ORDER TO TURN ON THE LED
AJMP READ;AFTER TURN ON AGAIN JUMP TO READ
END
