REPLACE_SAY ~SAREV25A~ 70
	~Regardless, you will be able to leave this plane of yours.  It does not, however, take you everywhere you wish to go... it takes you where you have been.  But I, as I said, know where you need to be.~

ADD_TRANS_TRIGGER SAREV25A 59 ~False()~ DO
EXTEND_BOTTOM SAREV25A 59
  IF ~Global("GavePocketPlane","GLOBAL",0)~ THEN REPLY #64835 /* ~No, you're too willing, somehow.  I don't trust you.  Forget it.~ */ GOTO 57
  IF ~Global("GavePocketPlane","GLOBAL",0)~ THEN REPLY #64838 /* ~Alright.  If you swear an oath not to betray me...then you may join me.~ */ DO ~SetGlobal("SarevokOath","GLOBAL",1)~ GOTO 62
  IF ~Global("GavePocketPlane","GLOBAL",0)~ THEN REPLY #64836 /* ~No, there's no need for an oath.  I'm satisfied.  Join me and let's go.~ */ GOTO 61
  IF ~Global("GavePocketPlane","GLOBAL",0)~ THEN REPLY #64839 /* ~I might return for you later.  Perhaps you can swear an oath then.~ */ GOTO 63

  IF ~GlobalGT("GavePocketPlane","GLOBAL",0)~ THEN REPLY #64835 /* ~No, you're too willing, somehow.  I don't trust you.  Forget it.~ */ GOTO 1002
  IF ~GlobalGT("GavePocketPlane","GLOBAL",0)~ THEN REPLY #64838 /* ~Alright.  If you swear an oath not to betray me...then you may join me.~ */ DO ~SetGlobal("SarevokOath","GLOBAL",1)~ GOTO 62
  IF ~GlobalGT("GavePocketPlane","GLOBAL",0)~ THEN REPLY #64836 /* ~No, there's no need for an oath.  I'm satisfied.  Join me and let's go.~ */ GOTO 1006
  IF ~GlobalGT("GavePocketPlane","GLOBAL",0)~ THEN REPLY #64839 /* ~I might return for you later.  Perhaps you can swear an oath then.~ */ GOTO 1005
END

ADD_TRANS_TRIGGER SAREV25A 62 ~False()~ DO 
EXTEND_BOTTOM SAREV25A 62
  IF ~Global("GavePocketPlane","GLOBAL",0)~ THEN REPLY #64871 /* ~Fine.  Let's go.~ */ GOTO 69
  IF ~Global("GavePocketPlane","GLOBAL",0)~ THEN REPLY #64872 /* ~Good enough.  I may return for you later, then...wait here.~ */ GOTO 63
  IF ~Global("GavePocketPlane","GLOBAL",0)~ THEN REPLY #64873 /* ~I don't believe a word of it.  Your word is worth nothing to me, Sarevok.~ */ GOTO 57
  IF ~Global("GavePocketPlane","GLOBAL",0)~ THEN REPLY #64874 /* ~Good!  Now it will be even easier to kill you a third time!~ */ GOTO 57


  IF ~GlobalGT("GavePocketPlane","GLOBAL",0)~ THEN REPLY #64871 /* ~Fine.  Let's go.~ */ GOTO 1004
  IF ~GlobalGT("GavePocketPlane","GLOBAL",0)~ THEN REPLY #64872 /* ~Good enough.  I may return for you later, then...wait here.~ */ GOTO 1005
  IF ~GlobalGT("GavePocketPlane","GLOBAL",0)~ THEN REPLY #64873 /* ~I don't believe a word of it.  Your word is worth nothing to me, Sarevok.~ */ GOTO 1002
  IF ~GlobalGT("GavePocketPlane","GLOBAL",0)~ THEN REPLY #64874 /* ~Good!  Now it will be even easier to kill you a third time!~ */ GOTO 1002
END

ADD_TRANS_TRIGGER SAREV25A 65 ~False()~ DO
EXTEND_BOTTOM SAREV25A 65
  IF ~~ THEN REPLY #64880 /* ~Yes, join with me now.~ */ DO ~JoinParty()~ EXIT
  IF ~Global("SarevokOath","GLOBAL",0)~ THEN REPLY #64881 /* ~I think I will require an oath of loyalty from you, if I am to trust you.~ */ DO ~SetGlobal("SarevokOath","GLOBAL",1)~ GOTO 62
  IF ~Global("GavePocketPlane","GLOBAL",0)~ THEN REPLY #64882 /* ~No, continue waiting here.  I'll come back.~ */ GOTO 63

  IF ~GlobalGT("GavePocketPlane","GLOBAL",0)~ THEN REPLY #64882 /* ~No, continue waiting here.  I'll come back.~ */ GOTO 1005
END

APPEND SAREV25A

IF ~~ THEN BEGIN 1002
	SAY ~I see.  So be it.  Our business is finished then, <CHARNAME>.  You have what you need and so do I.  Gather your companions and be off.  May we not meet again.~
        IF ~~ THEN DO ~DialogueInterrupt(FALSE) ReallyForceSpell(Myself,DRYAD_TELEPORT)~ 
		UNSOLVED_JOURNAL ~Destiny's Next Stop
According to Sarevok, the place I need to go next is the Tethyrian city of Saradush.  I may not have much of a choice, either... this pocket plane isn't a simple portal that can take me anywhere.  It can only take me places I have been, and only those that are pertinent to my destiny. ~
 /* ~Destiny's Next Stop
According to Sarevok, the place I need to go next is the Tethyrian city of Saradush.  I may not have much of a choice, either... this pocket plane isn't a simple portal that can take me anywhere.  It can only take me places I have been, and only those that are pertinent to my destiny. ~ */ EXIT
END

IF ~~ THEN BEGIN 1006
  SAY ~You...will not require an oath?  An...odd...choice, <PRO_BROTHERSISTER>.  I would have required it of you.  If I had even let you live.  As you wish, then...let us go.~
  IF ~True()~ THEN DO ~JoinParty()~ UNSOLVED_JOURNAL ~Destiny's Next Stop
According to Sarevok, the place I need to go next is the Tethyrian city of Saradush.  I may not have much of a choice, either... this pocket plane isn't a simple portal that can take me anywhere.  It can only take me places I have been, and only those that are pertinent to my destiny. ~
 /* ~Destiny's Next Stop

According to Sarevok, the place I need to go next is the Tethyrian city of Saradush.  I may not have much of a choice, either... this pocket plane isn't a simple portal that takes me where I want to go.  It takes me where I need to be.~ */ EXIT
  IF ~IsValidForPartyDialog("Keldorn")~ THEN DO ~JoinParty()~ UNSOLVED_JOURNAL ~Destiny's Next Stop
According to Sarevok, the place I need to go next is the Tethyrian city of Saradush.  I may not have much of a choice, either... this pocket plane isn't a simple portal that can take me anywhere.  It can only take me places I have been, and only those that are pertinent to my destiny. ~
 /* ~Destiny's Next Stop

According to Sarevok, the place I need to go next is the Tethyrian city of Saradush.  I may not have much of a choice, either... this pocket plane isn't a simple portal that takes me where I want to go.  It takes me where I need to be.~ */ EXTERN ~KELDO25J~ 5
  IF ~IsValidForPartyDialog("HaerDalis")~ THEN DO ~JoinParty()~ UNSOLVED_JOURNAL ~Destiny's Next Stop
According to Sarevok, the place I need to go next is the Tethyrian city of Saradush.  I may not have much of a choice, either... this pocket plane isn't a simple portal that can take me anywhere.  It can only take me places I have been, and only those that are pertinent to my destiny. ~
 /* ~Destiny's Next Stop

According to Sarevok, the place I need to go next is the Tethyrian city of Saradush.  I may not have much of a choice, either... this pocket plane isn't a simple portal that takes me where I want to go.  It takes me where I need to be.~ */ EXTERN ~HAERD25J~ 6
  IF ~IsValidForPartyDialog("Jaheira")~ THEN DO ~JoinParty()~ UNSOLVED_JOURNAL ~Destiny's Next Stop
According to Sarevok, the place I need to go next is the Tethyrian city of Saradush.  I may not have much of a choice, either... this pocket plane isn't a simple portal that can take me anywhere.  It can only take me places I have been, and only those that are pertinent to my destiny. ~
 /* ~Destiny's Next Stop

According to Sarevok, the place I need to go next is the Tethyrian city of Saradush.  I may not have much of a choice, either... this pocket plane isn't a simple portal that takes me where I want to go.  It takes me where I need to be.~ */ EXTERN ~JAHEI25J~ 30
  IF ~IsValidForPartyDialog("Valygar")~ THEN DO ~JoinParty()~ UNSOLVED_JOURNAL ~Destiny's Next Stop
According to Sarevok, the place I need to go next is the Tethyrian city of Saradush.  I may not have much of a choice, either... this pocket plane isn't a simple portal that can take me anywhere.  It can only take me places I have been, and only those that are pertinent to my destiny. ~
 /* ~Destiny's Next Stop

According to Sarevok, the place I need to go next is the Tethyrian city of Saradush.  I may not have much of a choice, either... this pocket plane isn't a simple portal that takes me where I want to go.  It takes me where I need to be.~ */ EXTERN ~VALYG25J~ 15
END

IF ~~ THEN BEGIN 1005
  SAY ~As you wish.  I shall wait for your return, <CHARNAME>.~
  IF ~~ THEN DO ~MoveToPointNoInterrupt([2460.1744])
Face(0)~ UNSOLVED_JOURNAL ~Destiny's Next Stop
According to Sarevok, the place I need to go next is the Tethyrian city of Saradush.  I may not have much of a choice, either... this pocket plane isn't a simple portal that can take me anywhere.  It can only take me places I have been, and only those that are pertinent to my destiny. ~
 /* ~Destiny's Next Stop

According to Sarevok, the place I need to go next is the Tethyrian city of Saradush.  I may not have much of a choice, either... this pocket plane isn't a simple portal that takes me where I want to go.  It takes me where I need to be.~ */ EXIT
END

IF ~~ THEN BEGIN 1004
  SAY ~Aye, as you wish, my <PRO_BROTHERSISTER>.~ 
  IF ~True()~ THEN DO ~JoinParty()~ EXIT
  IF ~IsValidForPartyDialog("Mazzy")~ THEN DO ~JoinParty()~ EXTERN ~MAZZY25J~ 4
  IF ~IsValidForPartyDialog("Edwin")~ THEN DO ~JoinParty()~ EXTERN ~EDWIN25J~ 4
  IF ~IsValidForPartyDialog("Cernd")~ THEN DO ~JoinParty()~ EXTERN ~CERND25J~ 5
  IF ~IsValidForPartyDialog("Nalia")~ THEN DO ~JoinParty()~ EXTERN ~NALIA25J~ 7
END

END