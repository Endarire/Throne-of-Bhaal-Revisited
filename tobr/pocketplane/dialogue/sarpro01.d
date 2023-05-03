ADD_TRANS_TRIGGER SARPRO01 5 ~False()~ DO 0
	EXTEND_TOP SARPRO01 5 
		IF ~~ THEN REPLY ~I don't know.  Do you know of a way in?~ GOTO 6a
	END

APPEND SARPRO01

IF ~~ THEN BEGIN 6a
	SAY ~No.  I wish I did.  There's some people that say that the old prison underground leads to the castle.  But they're all sealed up, now.~
  IF ~~ THEN GOTO 7a
END

IF ~~ THEN BEGIN 7a
  SAY  ~I heard that there's a secret door somewhere in the sewers.  But even if there was a way, Gromnir must of sealed it.  I... I wouldn't know how to get through there at all...~
  IF ~~ THEN REPLY #71272 /* ~Well, I'll find a way in, somehow.~ */ GOTO 8
  IF ~~ THEN REPLY #71273 /* ~Don't worry... I'll avenge your parents' death, somehow.~ */ GOTO 8
  IF ~~ THEN REPLY #71274 /* ~If you didn't know how to get inside, then why did you bother me?!~ */ GOTO 15
END

END