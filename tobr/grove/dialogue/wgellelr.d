REPLACE ~WGELLE~ 
IF ~~ THEN BEGIN 5
SAY ~So then I have helped all I can.  I take my leave, child of Bhaal.~
IF ~~ THEN DO ~SetGlobal("LRInstalled","AR4000",1) SetDialogue("LRELLE1")~ EXIT
END
END

REPLACE_ACTION_TEXT LRELLE1 ~ReallyForceSpell(Myself,DRYAD_TELEPORT)~ 
			    ~SetDialogue("WGelle")~

APPEND WGELLE

IF ~Global("TalkedEllesime","GLOBAL",2)~ THEN BEGIN 20
SAY ~What was that?!~
IF ~~ THEN GOTO 13
END
END