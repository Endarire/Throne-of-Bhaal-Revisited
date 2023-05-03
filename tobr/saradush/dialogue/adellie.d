BEGIN ADELLIE

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
	SAY ~*moan* Yes? *gasp* What is it?~
	IF ~~ THEN REPLY ~Are you all right?  What happened to you?~ GOTO 2
	IF ~~ THEN REPLY ~I'd like to ask a few questions, if I may.~ GOTO 3
	IF ~Class([PC],CLERIC_ALL)~ THEN REPLY ~ You are clearly injured.  I can try to heal you, if you wish.~ GOTO 4
	IF ~~ THEN REPLY ~Rest yourself.  I'll let you be.~ GOTO 12
END

IF ~!NumTimesTalkedTo(0)~ THEN BEGIN 1
	SAY ~*moan* A promise!~
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2
	SAY ~I... *gasp* I was trying to defend the city.  Up on the walls.  A cannon ball...~
	IF ~~ THEN REPLY ~But you seem... ill-equiped for battle.  Why did you try such a thing?~ GOTO 5
	IF ~~ THEN REPLY ~Weakling.  What did you think would happen to one such as you?~ GOTO 6
	IF ~~ THEN REPLY ~A noble attempt, even if it did not go well.~ GOTO 7
	IF ~Class([PC],CLERIC_ALL)~ THEN REPLY ~I will heal your injuries, if I may.~ GOTO 4
	IF ~~ THEN REPLY ~Rest yourself.  I'll let you be.~ GOTO 12
END

IF ~~ THEN BEGIN 3
	SAY ~*cough* I'll answer as long as I can.~
	IF ~~ THEN REPLY ~How came you to Saradush?~ GOTO 5
	IF ~~ THEN REPLY ~Did you learn anything of Yaga-Shura's army in your time on the walls?~ GOTO 8
	IF ~!Dead("Gromnir")~ THEN REPLY ~What can you tell me of Gromnir and his men?~ GOTO 9
	IF ~~ THEN REPLY ~Rest yourself.  I'll let you be.~ GOTO 12
END

IF ~~ THEN BEGIN 4
	SAY ~That is very kind, but *gasp* the good priest here is doing all he can.  Talk to him if you wish to help.~
	IF ~~ THEN REPLY ~Very well, I will do so.~ EXIT
	IF ~~ THEN REPLY ~First I'd like to ask a few questions.~ GOTO 3
	IF ~~ THEN REPLY ~How were you injured in the first place?~ GOTO 2
END

IF ~~ THEN BEGIN 5
	SAY ~Saradush is my home.  They were always kind to me here, despite my heritage. *moan*  It is my fault!  I never should have... *gasp*~
	IF ~~ THEN REPLY ~I'm sure it is not your fault.  You fought for your home valiantly.~ GOTO 6
	IF ~~ THEN REPLY ~Spit it out already.~ GOTO 6
	IF ~~ THEN REPLY ~You are tired.  Rest yourself and I'll let you be.~ GOTO 12
END

IF ~~ THEN BEGIN 6
	SAY ~I thought I could help!  I let Mellisan bring the Bhaalspawn here, my brothers and sisters.  I thought we could all be safe inside the city walls.  I was wrong, so wrong!~
	IF ~~ THEN REPLY ~Calm yourself!  Cleric!  A hand here!~ GOTO 10
	IF ~~ THEN REPLY ~That's an understatement.  Pull yourself together and answer my questions.~ GOTO 3
	IF ~~ THEN REPLY ~Hush now.  I have come to put things right.~ GOTO 12
END

IF ~~ THEN BEGIN 7
	SAY ~Heh.. *gasp* No, it did not. Heh...~
	IF ~~ THEN REPLY ~Why did you try such a thing?~ GOTO 5
	IF ~~ THEN REPLY ~What did you think would happen?~ GOTO 6
	IF ~Class([PC],CLERIC_ALL)~ THEN REPLY ~I will heal your injuries, if I may.~ GOTO 4
	IF ~~ THEN REPLY ~Rest yourself.  I'll let you be.~ GOTO 12
END

IF ~~ THEN BEGIN 8
	SAY ~Not really.  I learned that a cannon ball to the gut really hurts. *gasp* Heh.~
	IF ~~ THEN REPLY ~How came you to Saradush?~ GOTO 5
	IF ~!Dead("Gromnir")~ THEN REPLY ~What can you tell me of Gromnir and his men?~ GOTO 9
	IF ~~ THEN REPLY ~Rest yourself.  I'll let you be.~ GOTO 12
END 

IF ~~ THEN BEGIN 9
	SAY ~Little.  They are new to the city. *cough* But I know more of the castle.~
	IF ~~ THEN REPLY ~Any information would be very helpful.~ GOTO 10
	IF ~~ THEN REPLY ~So tell me of the castle already.~ GOTO 10
END

IF ~~ THEN BEGIN 10
	SAY ~The basement... it can be accessed two ways.  One through the sewers, and another through the old prison.~
	IF ~~ THEN REPLY ~How came you to Saradush?~ GOTO 5
	IF ~~ THEN REPLY ~Did you learn anything of Yaga-Shura's army in your time on the walls?~ GOTO 8
	IF ~~ THEN REPLY ~*Yawn* Nothing new.  I'll be on my way.~ GOTO 12
END

IF ~~ THEN BEGIN 11
	SAY ~A promise!  That you will save us!  You have saved so many, always in time!  Save Saradush now!~
	IF ~~ THEN REPLY ~I promise your home will be safe once again.~ GOTO 13
	IF ~~ THEN REPLY ~I make no promises, but I will do my best.~ GOTO 13
	IF ~~ THEN REPLY ~I'm more interested in saving my own skin.~ GOTO 14
END

IF ~~ THEN BEGIN 12
	SAY ~Wait!  You're *gasp* <CHARNAME>, aren't you?~
	IF ~~ THEN REPLY ~Yes am I.  You have heard of me?~ GOTO 11
	IF ~~ THEN REPLY ~You're confused.  Goodbye.~ GOTO 11
	IF ~~ THEN REPLY ~Does it matter?  I'm leaving now.~ GOTO 11
END  

IF ~~ THEN BEGIN 13
	SAY ~Thank you. Please, work quickly.~
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 14
	SAY ~Please!  Help us!~
	IF ~~ THEN EXIT
END