BEGIN ~WGgromnir~

IF ~~ THEN BEGIN 0
	SAY ~HAha!  <CHARNAME> is traitorous toad!  Gromnir will enjoy killing you!~
	IF ~~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("cutgre")~ EXIT
END

IF ~~ THEN BEGIN 1
	SAY ~Why does <CHARNAME> tell Gromnir this?~
	IF ~CheckStatGT(Player1,18,STR)~ THEN REPLY ~I want a great deal of gold.  And a magic item.  Or else you die.~ GOTO 2
	IF ~!CheckStatGT(Player1,18,STR)~ THEN REPLY ~I want a great deal of gold.  And a magic item.  Or else you die.~ GOTO 3
	IF ~~ THEN REPLY ~I just thought you should know Yaga Shura's intentions.~ GOTO 4
	IF ~~ THEN REPLY ~I like to fuel paranoia.~ GOTO 4
END
	
IF ~~ THEN BEGIN 2
	SAY ~<CHARNAME> is traitorous toad.  Very well.  Gromnir will give gold and magic morning star to <CHARNAME>.~
	IF ~CheckStatGT(Player1,18,CHR)~ THEN REPLY ~Not that one.  The glowing morning star.~ GOTO 5
	IF ~!CheckStatGT(Player1,18,CHR)~ THEN REPLY ~Not that one.  The glowing morning star.~ GOTO 6
	IF ~~ THEN REPLY ~It's a pleasure doing business with you.~ DO ~GiveGoldForce(10000) GiveItem("BLUN34",Player1)~ EXIT
	IF ~~ THEN REPLY ~Not enough, fool.  I'll kill you instead.~ GOTO 0
END

IF ~~ THEN BEGIN 3
	SAY ~HA!  <CHARNAME> is puny weakling!  Gromnir has no fear of <CHARNAME>!~
	IF ~~ THEN GOTO 0
END

IF ~~ THEN BEGIN 4
	SAY ~<CHARNAME> is traitorous toad.  Gromnir will be watching <CHARNAME>.~
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5
	SAY ~Very well.  Gromnir's Ice Star.~ 
	IF ~~ THEN DO ~GiveGoldForce(10000) GiveItem("BLUN35",Player1)~ EXIT
END

IF ~~ THEN BEGIN 6
	SAY ~No!  <CHARNAME> demands too much!~
	IF ~~ THEN GOTO 0
END
	