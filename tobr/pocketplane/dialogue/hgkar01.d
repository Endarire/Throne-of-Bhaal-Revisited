ADD_TRANS_TRIGGER HGKAR01 1 ~False()~ DO 0 1
	EXTEND_TOP HGKAR01 1
	IF ~Global("MelissanYagaKillJob","GLOBAL",1)~ THEN REPLY #65776 /* ~There is supposed to be a temple near here.  Do you know of it?~ */ GOTO 3
  	IF ~Global("MelissanYagaKillJob","GLOBAL",1)~ THEN REPLY #73162 /* ~Do you know anything about a community of fire giants nearby?~ */ GOTO 14
	IF ~~ THEN REPLY ~Trouble at Saradush?  What is happening there?~ GOTO 0a
	IF ~~ THEN REPLY ~I'm looking for five powerful Bhaalspawn.  You wouldn't happen to know anything about them, would you?~ GOTO 1a
	END

ADD_TRANS_TRIGGER HGKAR01 8 ~False()~ DO 0
	EXTEND_TOP HGKAR01 8
	IF ~Global("MelissanYagaKillJob","GLOBAL",1)~ THEN REPLY #65789 /* ~Do you know something about a temple in this area?~ */ DO ~SetGlobal("6400limit","AR6400",0)~ GOTO 3
	IF ~~ THEN REPLY ~Yes, I'm looking for five powerful Bhaalspawn.  You wouldn't happen to know anything about them, would you?~ GOTO 1a
	END

APPEND HGKAR01

IF ~~ THEN BEGIN 0a
	SAY ~The same thing that's happening here.  A massive army led by a powerful Bhaalspawn has the town besieged.  Those were some of his men that destroyed my caravan.~
	IF ~~ THEN REPLY ~Can you point the way there?~ GOTO 2a
	IF ~~ THEN REPLY ~Do you know anything more about the army?~ GOTO 3a
	IF ~~ THEN REPLY ~He wouldn't be one of the Five, would he?~ GOTO 4a
END

IF ~~ THEN BEGIN 1a
	SAY ~I try not to know things like that, but one can't avoid it these days.  There's Yaga Shura attacking Saradush, and there are rumors of even more sinister workings to the south.~
	IF ~~ THEN REPLY ~I'd like to meet this Yaga Shura.  Can you point the way to Saradush?~ GOTO 2a
	IF ~~ THEN REPLY ~What about the points further south?  Do you know how to get there?~ GOTO 5a
	IF ~~ THEN REPLY #65778 /* ~Yes, well, I'll be on my way.~ */ GOTO 7
END

IF ~~ THEN BEGIN 2a
	SAY ~Why would you *want* to go there?  No, I don't want to know.  Very well, here it is.~
	IF ~~ THEN REPLY ~Do you know anything more about the army?~ DO ~RevealAreaOnMap("AR5203")~ GOTO 3a
	IF ~~ THEN REPLY ~I'm also looking for five powerful Bhaalspawn.  You wouldn't happen to know anything about them, would you?~ DO ~RevealAreaOnMap("AR5203")~ GOTO 1a
	IF ~~ THEN REPLY ~Thank you, I'll be on my way~ DO ~RevealAreaOnMap("AR5203")~ GOTO 7
END

IF ~~ THEN BEGIN 3a
	SAY ~I know it's disrupted trade throughout the region.  Saradush is at a crossroads and a very lucrative market.  I always bring my best wares there.  But now I'm forced to leave the main roads, and you see how well that can go.~
	IF ~~ THEN REPLY ~Can you point the way to Saradush?~ GOTO 2a
	IF ~~ THEN REPLY ~I'm also looking for five powerful Bhaalspawn.  You wouldn't happen to know anything about them, would you?~ GOTO 1a
	IF ~~ THEN REPLY ~Thank you, I'll be on my way~ GOTO 7
END

IF ~~ THEN BEGIN 4a
	SAY ~Who are the Five?  If they are destructive and mad, Yaga Shura could easily be one of them.~
	IF ~~ THEN REPLY ~Can you point the way to Saradush?~ GOTO 2a
	IF ~~ THEN REPLY ~I'm also looking for other powerful Bhaalspawn.  You wouldn't happen to know anything about them, would you?~ GOTO 1a
	IF ~~ THEN REPLY ~Thank you, I'll be on my way~ GOTO 7
END

IF ~~ THEN BEGIN 5a
	SAY ~I've traveled through those villages many times.  Most are poor markets with little need for weapons, but one has recently gone under martial rule.~ 
	IF ~~ THEN GOTO 6a
END

IF ~~ THEN BEGIN 6a
	SAY ~You'll find it in the Calim Desert.  The desert is a harsh place; I only know of one oasis between here and there.  Bring food, water, and guards.~
	IF ~~ THEN REPLY ~Can you also point the way to Saradush?~ DO ~RevealAreaOnMap("AR6300") RevealAreaOnMap("AR5500")~ GOTO 2a
	IF ~~ THEN REPLY ~Thank you, I'll be on my way~ DO ~RevealAreaOnMap("AR6300") RevealAreaOnMap("AR5500")~ GOTO 7
END

END
