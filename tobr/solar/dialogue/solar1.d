ADD_TRANS_TRIGGER SOLAR 13 ~False()~ DO 0
	EXTEND_BOTTOM SOLAR 13
	IF ~~ THEN REPLY ~Which will come, power or knowledge?~ GOTO SOLAR1a
	IF ~~ THEN REPLY ~And what is my destiny?~ GOTO SOLAR1b
	IF ~~ THEN REPLY ~Very well, I am ready.  What happens now?~ GOTO SOLAR1c
	END

APPEND ~SOLAR~

IF ~~ SOLAR1a
SAY ~Power always follows knowledge, god-child.  The knowledge must come first.~
IF ~~ THEN GOTO SOLAR1c
END  

IF ~~ SOLAR1b
SAY ~That is not for me to say, but for you to forge.  To ensure every link of it is well made, you will need to learn more.~
IF ~~ THEN GOTO SOLAR1c
END

IF ~~ SOLAR1c
SAY ~This place will be your tower of learning, far from earthly distractions.  It contains five classrooms, each with a different lesson for you to learn.  You must complete one to move to the next, and at the end you will be ready to face your destiny.~
IF ~~ THEN REPLY ~And what will these lessons teach me?~ GOTO SOLAR1d
IF ~~ THEN REPLY ~I will have none of this!  Tell me now and tell me plainly what I need to know!~ GOTO SOLAR1e
IF ~~ THEN REPLY ~Very well.  On with the lessons, schoolmaster.~ GOTO SOLAR1e
END

IF ~~ SOLAR1d
SAY ~Many things; of yourself, your past, and perhaps your future.  It is not for me to say.~
IF ~~ THEN GOTO SOLAR1e
END

IF ~~ SOLAR1e
SAY ~Enough.  You have killed the first of the powerful five Bhaalspawn.  The first room is open to you.  I shall see you soon.  Until then, hold your heart close and know that you are not alone.~
IF ~~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("cutsolar")~ EXIT
END

END