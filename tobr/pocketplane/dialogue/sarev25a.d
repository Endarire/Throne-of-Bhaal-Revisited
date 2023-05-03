REPLACE_SAY ~SAREV25A~ 44
	~It is this plane which creates the portal out, but it will not take you everywhere you wish to go.  It can only bring you to places you have been before, and only those that your fate needs you be.~

REPLACE_SAY ~SAREV25A~ 70
	~Regardless, once you have completed that challenge, you will be able to leave this plane of yours.  It does not, however, take you everywhere you wish to go... it takes you where you have been.  But I, as I said, know where you need to be.~

ADD_TRANS_TRIGGER SAREV25A 57 ~False()~ DO 0
	EXTEND_BOTTOM SAREV25A 57
		IF ~~ THEN 
		UNSOLVED_JOURNAL ~Destiny's Next Stop
According to Sarevok, the place I need to go next is the Tethyrian city of Saradush.  I may not have much of a choice, either... this pocket plane isn't a simple portal that can take me anywhere.  It can only take me places I have been, and only those that are pertinent to my destiny. ~
	
		DO ~DialogInterrupt(FALSE)
		ReallyForceSpell(Myself,DRYAD_TELEPORT) ~ EXIT
	END

ADD_TRANS_TRIGGER SAREV25A 61 ~False()~ DO
	EXTEND_BOTTOM SAREV25A 61

	IF ~True()~ THEN 
	UNSOLVED_JOURNAL ~Destiny's Next Stop
According to Sarevok, the place I need to go next is the Tethyrian city of Saradush.  I may not have much of a choice, either... this pocket plane isn't a simple portal that can take me anywhere.  It can only take me places I have been, and only those that are pertinent to my destiny. ~
	DO ~JoinParty()~ EXIT

	IF ~IsValidForPartyDialog("Keldorn")~ THEN 
	UNSOLVED_JOURNAL ~Destiny's Next Stop
According to Sarevok, the place I need to go next is the Tethyrian city of Saradush.  I may not have much of a choice, either... this pocket plane isn't a simple portal that can take me anywhere.  It can only take me places I have been, and only those that are pertinent to my destiny. ~
	DO ~JoinParty() ~ EXTERN ~KELDO25J~ 5

	IF ~IsValidForPartyDialog("HaerDalis")~ THEN 
	UNSOLVED_JOURNAL ~Destiny's Next Stop
According to Sarevok, the place I need to go next is the Tethyrian city of Saradush.  I may not have much of a choice, either... this pocket plane isn't a simple portal that can take me anywhere.  It can only take me places I have been, and only those that are pertinent to my destiny. ~
	DO ~JoinParty() ~ EXTERN ~HAERD25J~ 6

	IF ~IsValidForPartyDialog("Jaheira")~ THEN 
	UNSOLVED_JOURNAL ~Destiny's Next Stop
According to Sarevok, the place I need to go next is the Tethyrian city of Saradush.  I may not have much of a choice, either... this pocket plane isn't a simple portal that can take me anywhere.  It can only take me places I have been, and only those that are pertinent to my destiny. ~
	DO ~JoinParty()~  EXTERN ~JAHEI25J~ 30

	IF ~IsValidForPartyDialog("Valygar")~ THEN 
	UNSOLVED_JOURNAL ~Destiny's Next Stop
According to Sarevok, the place I need to go next is the Tethyrian city of Saradush.  I may not have much of a choice, either... this pocket plane isn't a simple portal that can take me anywhere.  It can only take me places I have been, and only those that are pertinent to my destiny. ~
	DO ~JoinParty()~  EXTERN ~VALYG25J~ 15

	END

ADD_TRANS_TRIGGER SAREV25A 63 ~False()~ DO 0
	EXTEND_BOTTOM SAREV25A 63
	IF ~~ THEN 
	UNSOLVED_JOURNAL ~Destiny's Next Stop
According to Sarevok, the place I need to go next is the Tethyrian city of Saradush.  I may not have much of a choice, either... this pocket plane isn't a simple portal that can take me anywhere.  It can only take me places I have been, and only those that are pertinent to my destiny. ~

	DO ~MoveToPointNoInterrupt([2460.1744])
	Face(0)~ EXIT
	END