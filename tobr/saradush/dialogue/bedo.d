BEGIN BEDO

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
	SAY ~Please don't interrupt me, can't you see I'm busy?~
	IF ~~ THEN REPLY ~Busy?  You don't seem to be doing much good.~ GOTO 1
	IF ~~ THEN REPLY ~Just a few questions and I'll let you be.~ GOTO 2
	IF ~Global("OrphanSpeak","GLOBAL",1)~ THEN REPLY ~There's a little boy who has lost his father in the streets.  Is there anything you can do to help?~ GOTO 4
	IF ~~ THEN REPLY ~I'll leave then.~ EXIT
END

IF ~~ THEN BEGIN 1
	SAY ~How true that is.  All I can manage to do is keep her alive, poor thing.  Now, I really must get back to my healing.~
	IF ~Class([PC],CLERIC_ALL)~ THEN REPLY ~With your permission, I'd like to try to help her as well.~ GOTO 3
	IF ~~ THEN REPLY ~Just a few questions and I'll let you be.~ GOTO 2
	IF ~Global("OrphanSpeak","GLOBAL",1)~ THEN REPLY ~There's a little boy who has lost his father in the streets.  Is there anything you can do to help?~ GOTO 4
	IF ~~ THEN REPLY ~I'll leave then.~ EXIT
END

IF ~~ THEN BEGIN 2
	SAY ~No questions, by Ilmater!  If I stop casting she will surely die.~
	IF ~Class([PC],CLERIC_ALL)~ THEN REPLY ~With your permission, I'd like to try to help her as well.~ GOTO 3
	IF ~Global("OrphanSpeak","GLOBAL",1)~ THEN REPLY ~There's a little boy who has lost his father in the streets.  Is there anything you can do to help?~ GOTO 4
	IF ~~ THEN REPLY ~I'll leave then.~ EXIT
END

IF ~~ THEN BEGIN 3
	SAY ~Anything you can do would be very helpful.~
	IF ~~ THEN  DO ~
		StartCutSceneMode()
		FadeToColor([20.0],0)
		Wait(2)
		MoveViewPoint([456.378],0)
		ActionOverride(LastTalkedToBy,JumpToPoint([456.378]))
		ActionOverride(LastTalkedToBy,Face(0))
		FadeFromColor([20.0],0)
		Wait(2)
		ActionOverride(LastTalkedToBy,SpellNoDec("Adellie",CLERIC_HEAL))
		Wait(2)
		EndCutSceneMode()~ GOTO 5
END

IF ~~ THEN BEGIN 4
	SAY ~I can't leave Adellie's side, but I can give you this Rod of Resurrection.  It should heal the man.  Now let me get back to my work.~
	IF ~~ THEN DO ~ GiveItem("rods03",[PC]) 
			SetGlobal("OrphanSpeak","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 5
	SAY ~Well, she's healed again for a little while.  But her burns are terrible, and she will need more attention.  My thanks.~
	IF ~~ THEN REPLY ~Just a few questions and I'll let you be.~ GOTO 2
	IF ~Global("OrphanSpeak","GLOBAL",1)~ THEN REPLY ~There's a little boy who has lost his father in the streets.  Is there anything you can do to help?~ GOTO 4
	IF ~~ THEN REPLY ~You are welcome.  I take my leave.~ EXIT
END
	
IF ~!NumTimesTalkedTo(0)~ THEN BEGIN 6
	SAY ~I told you, I am busy healing this poor girl!~
	IF ~Global("OrphanSpeak","GLOBAL",1)~ THEN REPLY ~There's a little boy who has lost his father in the streets.  Is there anything you can do to help?~ GOTO 4
	IF ~~ THEN REPLY ~I'll leave then.~ EXIT 
END

