EXTEND_BOTTOM GORODR1 5
	IF ~Global("WGwktold", "GLOBAL", 1)~ THEN REPLY ~Actually, we are in need of some directions first.  Can you tell us how to get to Saradush?~ GOTO Sara0
	IF ~Global("WGBrushOff","GLOBAL",1)~ THEN REPLY ~What do you know about the Five?~ GOTO Sara6
END


ADD_TRANS_TRIGGER GORODR1 16 ~False()~ DO
	EXTEND_BOTTOM GORODR1 16
	IF ~!Global("WGwktold","GLOBAL",1)~ THEN DO ~EraseJournalEntry(62402)~ UNSOLVED_JOURNAL #62423  EXIT
	IF ~Global("WGwktold","GLOBAL",1)~ THEN REPLY ~Ok, I heard your story, now tell me where Saradush is.~ DO ~EraseJournalEntry(62402)~ UNSOLVED_JOURNAL #62423 GOTO Sara1
	END

EXTEND_BOTTOM GORODR1 29
	IF ~Global("WGwktold","GLOBAL",1)~ THEN REPLY ~Actually, we are in need of some directions first.  Can you tell us how to get to Saradush?~ GOTO Sara1
	IF ~Global("WGBrushOff","GLOBAL",1)~ THEN REPLY ~What do you know about the Five?~ GOTO Sara6
END

ADD_TRANS_TRIGGER GORODR1 28 ~False()~ DO
	EXTEND_BOTTOM GORODR1 28
	  IF ~!Global("WGwktold","GLOBAL",1)~ THEN DO ~StartCutSceneMode()
		SetGlobal("zGarOdr1Job","GLOBAL",2)
		Unlock("Dome01")
		AmbientActivate("AM3000A",TRUE)
		StaticSequence("AM3000A",1)
		SoundActivate("DomeDoor",TRUE)
		OpenDoor("Dome01")
		Lock("Dome01")
		SmallWait(9)
		StaticSequence("AM3000A",3)
		AmbientActivate("AM3000A",FALSE)
		SoundActivate("DomeDoor",FALSE)
		EndCutSceneMode()
		~ UNSOLVED_JOURNAL #62481 /* ~Watcher's Keep

		Odren has brought me to the top of Watcher's Keep and shown me the entrance.  To get inside, I will need the proper holy symbol and ritual from Brother Pol, who can also answer my questions.  Equipment can be bought from Sister Garlena, who is giving us access to the Knights' resources.~ */ EXIT
	    IF ~Global("WGwktold","GLOBAL",1)~ THEN REPLY ~And the location of Saradush...?~  GOTO Sara5
END

APPEND GORODR1

IF ~~ THEN BEGIN Sara0
	SAY ~Please, our need is very great.  I propose an exchange; you listen to our plea and I mark Saradush on your map.  Do you agree?~ 
	IF ~~ THEN REPLY ~How about you tell us where Saradush is and I don't cut your throat.~ GOTO Sara2
	IF ~~ THEN REPLY ~Very well.  Tell me what you want of us.~ GOTO 7
  	IF ~~ THEN REPLY ~And my need to greater.  Make your story quick.~ GOTO 7
END

IF ~~ THEN BEGIN Sara1
	SAY ~Of course, <CHARNAME>.  It is here.  But I hope you do not plan on going there soon.  The trip is long and the wards will not hold for long.~
	IF ~~ THEN REPLY ~My trip there will be brief.  I will not forget you.~ GOTO Sara3
	IF ~~ THEN REPLY ~Destiny takes a Child of Bhaal many places, without regard to the timelines of others.~ GOTO Sara4
	IF ~~ THEN REPLY ~You are fortunate that I came here at all.  Do not push your luck.~ GOTO Sara4
END

IF ~~ THEN BEGIN Sara2
	SAY ~Err...yes, yes.  I will mark it on your map immediately.~
	IF ~~ THEN DO ~SetGlobal("WGwktold","GLOBAL",2) RevealAreaOnMap("AR5203")~ EXIT
END

IF ~~ THEN BEGIN Sara3
	SAY ~I trust you will not.  Swift journey, <CHARNAME>.~
	IF ~~ THEN DO ~SetGlobal("WGwktold","GLOBAL",2) RevealAreaOnMap("AR5203")~ EXIT
END

IF ~~ THEN BEGIN Sara4
	SAY ~Ah, that may be.  But please, return as soon as you are able.~
	IF ~~ THEN DO ~SetGlobal("WGwktold","GLOBAL",2) RevealAreaOnMap("AR5203")~ EXIT
END

IF ~~ THEN BEGIN Sara5
	SAY ~Of course, <CHARNAME>.  It is here.~
	IF ~~ THEN  DO ~ SetGlobal("WGwktold","GLOBAL",2) RevealAreaOnMap("AR5203")
		StartCutSceneMode()
		SetGlobal("zGarOdr1Job","GLOBAL",2)
		Unlock("Dome01")
		AmbientActivate("AM3000A",TRUE)
		StaticSequence("AM3000A",1)
		SoundActivate("DomeDoor",TRUE)
		OpenDoor("Dome01")
		Lock("Dome01")
		SmallWait(9)
		StaticSequence("AM3000A",3)
		AmbientActivate("AM3000A",FALSE)
		SoundActivate("DomeDoor",FALSE)
		EndCutSceneMode()
		~ UNSOLVED_JOURNAL #62481 EXIT
	END 

IF ~~ THEN BEGIN Sara6
	SAY ~Only what I hear.  That they are powerful and cruel.  The whole region is awash in blood thanks to them.~
	IF ~~ THEN REPLY ~And if I wanted to find them, where would I look?~ GOTO Sara7
END

IF ~~ THEN BEGIN Sara7
	SAY ~Find them?  All others are fleeing them... But you are not as the others.  Look to Saradush and you will find the Five.~
	IF ~~ THEN DO ~SetGlobal("WGBrushOff","GLOBAL",2) RevealAreaOnMap("AR5203")~ EXIT
END

END	
