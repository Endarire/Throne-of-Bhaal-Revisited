APPEND WGELLE

IF ~Global("SuelleBegin","AR4000",6)~ THEN BEGIN WoP
	SAY ~You have not yet learned all you must, <CHARNAME>.  Return after you have heard some more.~
	IF ~~ THEN EXIT
END
END