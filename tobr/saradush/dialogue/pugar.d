BEGIN PUGAR

IF ~Global("PugarRun","GLOBAL",0)~ THEN BEGIN 1
	SAY ~Very important message!  Pugar must deliver message!~
	IF ~~ THEN EXIT
END

IF ~Global("PugarRun","GLOBAL",1)~ THEN BEGIN 2
	SAY ~Pugar help!  Pugar deliver message for nice guardsmen!~
	IF ~~ THEN EXIT
END

IF ~Global("PugarRun","GLOBAL",2)~ THEN BEGIN 3
	SAY ~No time to talk!  Running!~
	IF ~~ THEN EXIT
END
 