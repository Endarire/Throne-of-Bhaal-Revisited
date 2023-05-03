BEGIN ~YSGP04~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
	SAY ~Oh no!  We've been discovered, my friends!  Fight!  Fiiighhht!!~
	IF ~~ THEN REPLY ~Wait!  I'm not going to hurt you!~ GOTO 1
	IF ~~ THEN REPLY ~Have at you.... rabbit?~ GOTO 2
	IF ~~ THEN REPLY ~Right.  You're all going to have to die.~ 
	  DO ~SetGlobal("GaveShout","LOCALS",1)
		  SetGlobalTimer("ysgpend","GLOBAL",15)
		  SetGlobal("ysgpbegin","GLOBAL",1)
		  ActionOverride("YSGP04",Enemy())~ EXIT
END

IF ~~ THEN BEGIN 1
	SAY ~Why should I believe you?  We've been hunted for days now.  How do I know you aren't another of Yaga Shura's thugs?~
	IF ~~ THEN REPLY ~Look, if I wanted to kill a rabbit you'd be dead already.~ GOTO 2
	IF ~~ THEN REPLY ~Why would Yaga Shura be hunting you?~ GOTO 3
	IF ~~ THEN REPLY ~I can't believe I'm having this conversation.~ GOTO 4
END

IF ~~ THEN BEGIN 2
	SAY ~This "rabbit" is not as easy to kill as you might think.  Did you think that Bhaal limited himself to demihuman women?  So I suggest you leave now and forget what you've seen.~
	IF ~~ THEN REPLY ~I don't even want to think about that.~ GOTO 5
	IF ~~ THEN REPLY ~Are you trying to tough talk me?~ GOTO 6
	IF ~~ THEN REPLY ~Go hide further up into the hills, little rabbit, and I'll forget I ever saw you.~ GOTO 7
	IF ~~ THEN REPLY ~Right. You're all going to have to die.~
	  DO ~SetGlobal("GaveShout","LOCALS",1)
		  SetGlobalTimer("ysgpend","GLOBAL",15)
		  SetGlobal("ysgpbegin","GLOBAL",1)
		  ActionOverride("YSGP04",Enemy())~ EXIT
END

IF ~~ THEN BEGIN 3
	SAY ~He hunts all Bhaalspawn, small and large alike.  We "tithed" his temple as best we could, but once our heritage was known...~
	IF ~~ THEN REPLY ~I can't believe I'm having this conversation.~ GOTO 4
	IF ~~ THEN REPLY ~Are you saying you're a child of Bhaal?~ GOTO 5
	IF ~~ THEN REPLY ~Go hide further up into the hills, little rabbit, and I'll forget I ever saw you.~ GOTO 7
END

IF ~~ THEN BEGIN 4
	SAY ~These are unusual times, <PRO_RACE>.  I'm sure you've met stranger folk than I.~
	IF ~~ THEN REPLY ~No, this is pretty much the strangest.~ GOTO 5
	IF ~~ THEN REPLY ~Go hide further up into the hills, little rabbit, and I'll forget I ever saw you.~ GOTO 7
	IF ~~ THEN REPLY ~Right. You're all going to have to die.~
	  DO ~SetGlobal("GaveShout","LOCALS",1)
		  SetGlobalTimer("ysgpend","GLOBAL",15)
		  SetGlobal("ysgpbegin","GLOBAL",1)
		  ActionOverride("YSGP04",Enemy())~ EXIT
END

IF ~~ THEN BEGIN 5
	SAY ~It may be strange to you, <PRO_RACE>, but I am Bhaal's daughter.~
	IF ~~ THEN REPLY ~I can't believe I'm having this conversation.~ GOTO 4
	IF ~~ THEN REPLY ~Go hide further up into the hills, little rabbit, and I'll forget I ever saw you.~ GOTO 7
	IF ~~ THEN REPLY ~Right. You're all going to have to die.~
	  DO ~SetGlobal("GaveShout","LOCALS",1)
		  SetGlobalTimer("ysgpend","GLOBAL",15)
		  SetGlobal("ysgpbegin","GLOBAL",1)
		  ActionOverride("YSGP04",Enemy())~ EXIT
END

IF ~~ THEN BEGIN 6
	SAY ~I'm trying to protect my friends.  So leave.  Now.~
	IF ~~ THEN REPLY ~I can't believe I'm having this conversation.~ GOTO 4
	IF ~~ THEN REPLY ~Go hide further up into the hills, little rabbit, and I'll forget I ever saw you.~ GOTO 7
	IF ~~ THEN REPLY ~Right. You're all going to have to die.~
	  DO ~SetGlobal("GaveShout","LOCALS",1)
		  SetGlobalTimer("ysgpend","GLOBAL",15)
		  SetGlobal("ysgpbegin","GLOBAL",1)
		  ActionOverride("YSGP04",Enemy())~ EXIT
END

IF ~~ THEN BEGIN 7
	SAY ~You let us go in peace?  Thank you, kind <PRO_RACE>. Come, my friends!~
	IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8
	SAY ~Oh, and I'm a chinchilla, not a rabbit.  You can tell by the tail.~
	IF ~~ THEN 
	  DO ~ActionOverride("YSGP01",EscapeArea())
	      ActionOverride("YSGP02",EscapeArea())
	      ActionOverride("YSGP03",EscapeArea())
	      EscapeArea()~ EXIT
END
				