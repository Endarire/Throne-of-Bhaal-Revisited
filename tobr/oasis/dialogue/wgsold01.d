BEGIN WGsold01

IF ~RandomNum(3,1)~ THEN BEGIN 0
	SAY ~Can't trust strangers out here.  I've got my eye on you.~
	IF ~~ THEN  EXIT
END

IF ~RandomNum(3,2)~ THEN BEGIN 1
	SAY ~The raiders won't bother my caravan.  The merchants' gold was good.~
	IF ~~ THEN EXIT
END

IF ~RandomNum(3,3)~ THEN BEGIN 2
	SAY ~You've got a problem?  Then keep moving.~
	IF ~~ THEN EXIT
END