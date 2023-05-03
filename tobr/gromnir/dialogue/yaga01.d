APPEND ~YAGA01~

IF WEIGHT #0 ~Global("WGhelps","GLOBAL",4)~ THEN BEGIN 0b
	SAY ~Foolish bug!  You think you can defeat Yaga Shura?  You could not even hold the walls of Saradush!~
	IF ~~ THEN DO ~SetGlobal("WGhelps","GLOBAL",5)~ EXTERN GROMNIR 0b
END

END

APPEND ~GROMNIR~

IF ~~ THEN BEGIN 0b
	SAY ~Ha!  Saradush was trap for rats!  Gromnir will kill you now!~
	IF ~~ THEN 
	//DO ~StartCutSceneMode() StartCutScene("cutgro")~ 
	EXIT
END
END
