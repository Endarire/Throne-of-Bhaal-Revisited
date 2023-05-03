ADD_TRANS_TRIGGER SARWAI01 3 ~False()~ DO 1 2
	EXTEND_BOTTOM SARWAI01 3 
		IF ~~ THEN REPLY ~Why are Gromnir's soldiers running around the sewers?~ GOTO 4a
  		IF ~!Dead("gromnir")~ THEN REPLY ~Since we helped you out, maybe you can help us get inside Gromnir's castle.~ GOTO 4a
	END


APPEND SARWAI01

IF ~~ THEN BEGIN 4a
	SAY ~All I know is a few rumors.  They say Gromnir ordered patrols of the sewers because the invaders could come in through them, but I bet you it's because you can enter the castle that way.~
  	IF ~~ THEN DO ~SetGlobal("Waitress","AR5003",2)~ UNSOLVED_JOURNAL ~Dealing With Gromnir

A tavern waitress whom I rescued from some bullying soldiers mentioned that the city sewers are likely an entry into the castle.  Gromnir's men have been patroling the area and would know more about it.~ GOTO 5a
END

IF ~~ THEN BEGIN 5a
	SAY ~Any entrance to the castle is likely to be locked, though... And I have no idea how you'd be able to get the key.~
  	IF ~~ THEN GOTO 2
END

END
