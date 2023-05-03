BEGIN WGShadLd

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
	SAY ~*Hissss*  You have entered our home and killed many of our number.  At them, my servants!  Their corpses will feed the crawlers!~
	IF ~~ THEN DO ~Enemy()~ EXIT
END

