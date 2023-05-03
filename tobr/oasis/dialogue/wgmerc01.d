BEGIN WGmerc01

IF ~RandomNum(3,1)~ THEN BEGIN 0
	SAY ~I do hope those dreadful raiders don't bother us.~
	IF ~~ THEN  EXIT
END

IF ~RandomNum(3,2)~ THEN BEGIN 1
	SAY ~My goods will fetch a high price.  If they make it to market, that is.~
	IF ~~ THEN EXIT
END

IF ~RandomNum(3,3)~ THEN BEGIN 2
	SAY ~Would you care to purchase fine silks?  Rare spices?  No?~
	IF ~~ THEN EXIT
END