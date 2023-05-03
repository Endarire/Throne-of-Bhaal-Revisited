BEGIN WGbeth

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
	SAY ~Knit one, slip one, purl two through the back loop...~
	IF ~~ THEN REPLY ~Um... hello?~ GOTO 1
	IF ~~ THEN REPLY ~What are you doing?~ GOTO 2
	IF ~~ THEN REPLY ~You seem remarkably calm.~ GOTO 3
END

IF ~~ THEN BEGIN 1
	SAY ~You made me lose count!  Now I'll have to start from the beginning of the row!~
	IF ~~ THEN REPLY ~What are you doing?~ GOTO 2
	IF ~~ THEN REPLY ~You seem remarkably calm.~ GOTO 3
	IF ~~ THEN REPLY ~Sorry about that.  I'll let you get back to your work.~ GOTO 4
END

IF ~~ THEN BEGIN 2
	SAY ~What does it look like?  I'm knitting.~
	IF ~~ THEN REPLY ~You seem remarkably calm.~ GOTO 3
	IF ~~ THEN REPLY ~Is this really the time and place for fiber arts?~ GOTO 5
	IF ~~ THEN REPLY ~I'll let you get back to your work.~ GOTO 4
END

IF ~~ THEN BEGIN 3
	SAY ~It's calming to have something to do with your hands.  And it's easier waiting when you're being productive.~
	IF ~~ THEN REPLY ~That sounds really nice.  Can you teach me to knit?~ GOTO 6
	IF ~~ THEN REPLY ~Is this really the time and place for fiber arts?~ GOTO 5
	IF ~~ THEN REPLY ~I'll let you get back to your work.~ GOTO 4
END

IF ~~ THEN BEGIN 4
	SAY ~I thank you for that.  Back to the beginning of the row it is.  *sigh*~
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5
	SAY ~Oh yes.  I knit so I don't kill people.  It's truly better this way.~
	IF ~~ THEN REPLY ~... I see.  I'll let you get back to it, then.~ GOTO 4
END

IF ~!NumTimesTalkedTo(0)~ THEN BEGIN 6
	SAY ~Go away!  I'm counting!~
	IF ~~ THEN EXIT
END