ALTER_TRANS 25SPELL
BEGIN 1 END
BEGIN 1 END
BEGIN
	"TRIGGER" ~Global("YagaShuraHeart","GLOBAL",4)~
END

EXTEND_TOP 25SPELL 1 #1
	IF ~AreaCheck("AR5011")~ THEN REPLY #70772 /* ~I'd like to ask you some questions about this town.~ */ GOTO 25Spella
END

APPEND 25SPELL

IF ~~ THEN BEGIN 25Spella
  SAY ~Sorry... I can't help you there.  I live in my books, and between restocking my shelves and setting traps for would be thieves, I rarely leave the building.  My appentice, Adellie, may know more though.~
  IF ~~ THEN REPLY ~And where can I find this Adellie?~ GOTO 25Spellb
  IF ~~ THEN REPLY #70771 /* ~Let me see what you've got.~ */ GOTO 2
  IF ~~ THEN REPLY ~I'll be going now.~ GOTO 3
END

IF ~~ THEN BEGIN 25Spellb
	SAY ~I believe she was on the wall fighting... or was it in the Church of Waukeen?  Either way, she's easy to recognize: full of passion and can hardly cast a cantrip.  Was there something else you wanted?~
	  IF ~~ THEN REPLY #70771 /* ~Let me see what you've got.~ */ GOTO 2
  	  IF ~~ THEN REPLY ~I'll be going now.~ GOTO 3
END


END