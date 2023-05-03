// Get rid of Sarevok openning portal

ADD_TRANS_TRIGGER SAREV25A 44 ~False()~ DO 0
EXTEND_BOTTOM SAREV25A 44
  IF ~~ THEN DO ~SetGlobal("SarevokAlive","GLOBAL",4) SetGlobal("SarevokTold","GLOBAL",1)~ GOTO 47
END

// Give Sarevok another chance

APPEND ~SAREV25A~

// Leaving

IF WEIGHT #0 ~Global("SarevokTold","GLOBAL",3)~ THEN BEGIN 1000
	SAY ~I see you have found an exit without me.  But do not be so quick to go.  You still need me, whether you like it or no.~
	IF ~~ THEN REPLY ~I do not believe you now any more than I did before.  I'm leaving now.  I better not find you here when I come back.~ DO ~ SetGlobal("SarevokTold","GLOBAL",4) ~ GOTO 1001
	IF ~Global("SarevokToldProposal","GLOBAL",0)~ THEN REPLY ~Very well, what is this deal you speak of?~ DO ~SetGlobal("SarevokTold","GLOBAL",4)~ GOTO 14
	IF ~GlobalGT("SarevokToldProposal","GLOBAL",0)~ THEN REPLY ~Very well, I will restore you in exchange for information.~ DO ~SetGlobal("SarevokTold","GLOBAL",4)~ GOTO 33
END

IF ~~ THEN BEGIN 1001
	SAY ~I see.  So be it.  Our business is finished then, <CHARNAME>.  Gather your companions and be off.  May we not meet again.~ 
	IF ~~ THEN DO ~DialogInterrupt(FALSE) ReallyForceSpell(Myself,DRYAD_TELEPORT)~ EXIT
END

IF ~~ THEN BEGIN 1002
	SAY ~I see.  So be it.  Our business is finished then, <CHARNAME>.  You have what you need and so do I.  Gather your companions and be off.  May we not meet again.~
        IF ~~ THEN DO ~DialogueInterrupt(FALSE) ReallyForceSpell(Myself,DRYAD_TELEPORT)~ 
		UNSOLVED_JOURNAL #74123 /* ~Destiny's Next Stop
According to Sarevok, the place I need to go next is the Tethyrian city of Saradush.  I may not have much of a choice, either... this pocket plane isn't a simple portal that can take me anywhere.  It can only take me places I have been, and only those that are pertinent to my destiny. ~ */ EXIT
END

IF WEIGHT #0 ~Global("BeginChallenge1","GLOBAL",12) !GlobalGT("SarevokTold","GLOBAL",2) Global("SarevokAlive","GLOBAL",0)~ THEN BEGIN 1003
	SAY ~You have survived the first chamber.  You are stronger than I believed.  But you still need me, whether you like it or no.  Do not think all your challenges will be as easy.~ 
	IF ~~ THEN REPLY ~Yes, I am strong, and no, I don't need you. Now be gone from this place or feel my wrath!~ GOTO 1001
	IF ~Global("SarevokToldProposal","GLOBAL",0)~ THEN REPLY ~Very well, what is this deal you speak of?~  GOTO 14
	IF ~GlobalGT("SarevokToldProposal","GLOBAL",0)~ THEN REPLY ~Very well, I will restore you in exchange for information.~ GOTO 33
END

IF ~~ THEN BEGIN 1006
  SAY ~You...will not require an oath?  An...odd...choice, <PRO_BROTHERSISTER>.  I would have required it of you.  If I had even let you live.  As you wish, then...let us go.~
  IF ~True()~ THEN DO ~JoinParty()~ UNSOLVED_JOURNAL #73858 /* ~Destiny's Next Stop

According to Sarevok, the place I need to go next is the Tethyrian city of Saradush.  I may not have much of a choice, either... this pocket plane isn't a simple portal that takes me where I want to go.  It takes me where I need to be.~ */ EXIT
  IF ~IsValidForPartyDialog("Keldorn")~ THEN DO ~JoinParty()~ UNSOLVED_JOURNAL #73858 /* ~Destiny's Next Stop

According to Sarevok, the place I need to go next is the Tethyrian city of Saradush.  I may not have much of a choice, either... this pocket plane isn't a simple portal that takes me where I want to go.  It takes me where I need to be.~ */ EXTERN ~KELDO25J~ 5
  IF ~IsValidForPartyDialog("HaerDalis")~ THEN DO ~JoinParty()~ UNSOLVED_JOURNAL #73858 /* ~Destiny's Next Stop

According to Sarevok, the place I need to go next is the Tethyrian city of Saradush.  I may not have much of a choice, either... this pocket plane isn't a simple portal that takes me where I want to go.  It takes me where I need to be.~ */ EXTERN ~HAERD25J~ 6
  IF ~IsValidForPartyDialog("Jaheira")~ THEN DO ~JoinParty()~ UNSOLVED_JOURNAL #73858 /* ~Destiny's Next Stop

According to Sarevok, the place I need to go next is the Tethyrian city of Saradush.  I may not have much of a choice, either... this pocket plane isn't a simple portal that takes me where I want to go.  It takes me where I need to be.~ */ EXTERN ~JAHEI25J~ 30
  IF ~IsValidForPartyDialog("Valygar")~ THEN DO ~JoinParty()~ UNSOLVED_JOURNAL #73858 /* ~Destiny's Next Stop

According to Sarevok, the place I need to go next is the Tethyrian city of Saradush.  I may not have much of a choice, either... this pocket plane isn't a simple portal that takes me where I want to go.  It takes me where I need to be.~ */ EXTERN ~VALYG25J~ 15
END

IF ~~ THEN BEGIN 1005
  SAY ~As you wish.  I shall wait for your return, <CHARNAME>.~
  IF ~~ THEN DO ~MoveToPointNoInterrupt([2460.1744])
Face(0)~ UNSOLVED_JOURNAL #73858 /* ~Destiny's Next Stop

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

ADD_TRANS_TRIGGER SAREV25A 15 ~False()~ DO 0
EXTEND_BOTTOM SAREV25A 15
  IF ~!Global("BeginChallenge1","GLOBAL",12)~ THEN REPLY #64389 /* ~And what would I be getting in return for this?~ */ GOTO 17
  IF ~Global("BeginChallenge1","GLOBAL",12)~ THEN REPLY #64389 GOTO 67
END

ADD_TRANS_TRIGGER SAREV25A 16 ~False()~ DO
EXTEND_BOTTOM SAREV25A 16
  IF ~!Global("BeginChallenge1","GLOBAL",12)~ THEN REPLY #64405 /* ~And just how is it that you can help me?~ */ GOTO 17
  IF ~Global("BeginChallenge1","GLOBAL",12)~  THEN REPLY ~And just how is it that you can help me?~ GOTO 67
END

ADD_TRANS_TRIGGER  SAREV25A 39 ~False()~ DO 2 3
EXTEND_BOTTOM SAREV25A 39
  IF ~!Global("BeginChallenge1","GLOBAL",12) ~ THEN REPLY #64702 /* ~I held up my side of the bargain, Sarevok.  Now tell me what you know.~ */ GOTO 43
  IF ~!Global("BeginChallenge1","GLOBAL",12) ~ THEN REPLY #64703 /* ~Whatever.  Now spill it or we start round three, you understand?~ */ GOTO 43

  IF ~Global("BeginChallenge1","GLOBAL",12) ~ THEN REPLY #64702 /* ~I held up my side of the bargain, Sarevok.  Now tell me what you know.~ */ GOTO 47
  IF ~Global("BeginChallenge1","GLOBAL",12) ~ THEN REPLY #64703 /* ~Whatever.  Now spill it or we start round three, you understand?~ */ GOTO 47
END

ADD_TRANS_TRIGGER SAREV25A 42 ~False()~ DO
EXTEND_BOTTOM SAREV25A 42
  IF ~~ THEN GOTO 47
END

// Remove references to Sarevok openning portal

REPLACE_SAY ~SAREV25A~ 49
	~It is there that you *must* go, where the first step of the prophecy will unfold.~

ADD_TRANS_TRIGGER SAREV25A 49 ~False()~ DO 
EXTEND_BOTTOM SAREV25A 49
  IF ~~ THEN REPLY ~And then what will happen?~ DO ~SetGlobal("SarevokTold","GLOBAL",1)~ FLAGS 128 GOTO 50 
  IF ~~ THEN REPLY ~How do I know I can trust what you say?~ DO ~SetGlobal("SarevokTold","GLOBAL",1)~ FLAGS 128 GOTO 52
  IF ~~ THEN REPLY ~Aren't you still a Child of Bhaal?~ DO ~SetGlobal("SarevokTold","GLOBAL",1)~ FLAGS 128 GOTO 51
END

ADD_TRANS_TRIGGER SAREV25A 51 ~False()~ DO
EXTEND_BOTTOM SAREV25A 51
  IF ~~ THEN REPLY ~So what will happen after I go to Saradush?~  GOTO 50
  IF ~~ THEN REPLY ~How do I know I can trust what you say?~ GOTO 52
  IF ~~ THEN REPLY ~Fine.  I've heard enough.~  GOTO 53
END

REPLACE_SAY ~SAREV25A~ 62
	~Aye, as you wish, my <PRO_BROTHERSISTER>.  You may need to summon more aid from the spirit.~


REPLACE_SAY ~SAREV25A~ 70 
     ~Regardless, you will be able to leave this plane of yours.  It does not, however, take you everywhere you wish to go... it takes you where you need to be.  And I, as I said, know where that is.~

// Remove references to the challenge if it is complete

REPLACE_SAY ~SAREV25A~ 54
	~I once was sure that the old prophecies centered around me.  Even if that is no longer the case, I know more about them than perhaps anyone.  I can help you, <CHARNAME>.~

ADD_TRANS_TRIGGER SAREV25A 56 ~False()~ DO 0
EXTEND_BOTTOM SAREV25A 56
  IF ~Global("GavePocketPlane","GLOBAL",0)~ THEN REPLY #64792 /* ~Forget it.  You're not my brother and I would never trust you at my back.~ */ GOTO 57
  IF ~GlobalGT("GavePocketPlane","GLOBAL",0)~ THEN REPLY #64792 /* ~Forget it.  You're not my brother and I would never trust you at my back.~ */ GOTO 1002
END

ADD_TRANS_TRIGGER SAREV25A 58 ~False()~ DO 0
EXTEND_BOTTOM SAREV25A 58
    IF ~Global("GavePocketPlane","GLOBAL",0)~ THEN REPLY #64802 /* ~Without your armor and your divine power, you're less than useless to me.  Begone.~ */ GOTO 57
    IF ~GlobalGT("GavePocketPlane","GLOBAL",0)~ THEN REPLY #64802 /* ~Without your armor and your divine power, you're less than useless to me.  Begone.~ */ GOTO 1002
END

ADD_TRANS_TRIGGER SAREV25A 59 ~False()~ DO 0 1 3
EXTEND_BOTTOM SAREV25A 59
  IF ~Global("GavePocketPlane","GLOBAL",0)~ THEN REPLY #64835 /* ~No, you're too willing, somehow.  I don't trust you.  Forget it.~ */ GOTO 57
  IF ~Global("GavePocketPlane","GLOBAL",0)~ THEN REPLY #64836 /* ~No, there's no need for an oath.  I'm satisfied.  Join me and let's go.~ */ GOTO 61
  IF ~Global("GavePocketPlane","GLOBAL",0)~ THEN REPLY #64838 /* ~Alright.  If you swear an oath not to betray me...then you may join me.~ */ DO ~SetGlobal("SarevokOath","GLOBAL",1)~ GOTO 62
  IF ~Global("GavePocketPlane","GLOBAL",0)~ THEN REPLY #64839 /* ~I might return for you later.  Perhaps you can swear an oath then.~ */ GOTO 63

  IF ~GlobalGT("GavePocketPlane","GLOBAL",0)~ THEN REPLY #64835 /* ~No, you're too willing, somehow.  I don't trust you.  Forget it.~ */ GOTO 1002
  IF ~GlobalGT("GavePocketPlane","GLOBAL",0)~ THEN REPLY #64836 /* ~No, there's no need for an oath.  I'm satisfied.  Join me and let's go.~ */ GOTO 1006
  IF ~GlobalGT("GavePocketPlane","GLOBAL",0)~ THEN REPLY #64838 /* ~Alright.  If you swear an oath not to betray me...then you may join me.~ */ DO ~SetGlobal("SarevokOath","GLOBAL",1)~ GOTO 62
  IF ~GlobalGT("GavePocketPlane","GLOBAL",0)~ THEN REPLY #64839 /* ~I might return for you later.  Perhaps you can swear an oath then.~ */ GOTO 1005
END

ADD_TRANS_TRIGGER SAREV25A 60 ~False()~ DO 0 2
EXTEND_BOTTOM SAREV25A 60
  IF ~Global("GavePocketPlane","GLOBAL",0)~ THEN REPLY #64845 /* ~No, you're agreeing too easily.  I'll never trust you.  Forget it.~ */ GOTO 57
  IF ~Global("GavePocketPlane","GLOBAL",0)~ THEN REPLY #64853 /* ~No, don't bother waiting here.  I won't let you join me, regardless.~ */ GOTO 57

  IF ~GlobalGT("GavePocketPlane","GLOBAL",0)~ THEN REPLY #64845 /* ~No, you're agreeing too easily.  I'll never trust you.  Forget it.~ */ GOTO 1002
  IF ~GlobalGT("GavePocketPlane","GLOBAL",0)~ THEN REPLY #64853 /* ~No, don't bother waiting here.  I won't let you join me, regardless.~ */ GOTO 1002
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

ADD_TRANS_TRIGGER SAREV25A 65 ~False()~ DO 2
EXTEND_BOTTOM SAREV25A 65
  IF ~Global("GavePocketPlane","GLOBAL",0)~ THEN REPLY #64882 /* ~No, continue waiting here.  I'll come back.~ */ GOTO 63
  IF ~GlobalGT("GavePocketPlane","GLOBAL",0)~ THEN REPLY #64882 /* ~No, continue waiting here.  I'll come back.~ */ GOTO 1005
END

ADD_TRANS_TRIGGER SAREV25A 19 ~False()~ DO 6
EXTEND_BOTTOM SAREV25A 19
  IF ~Global("GavePocketPlane","GLOBAL",0)~ THEN REPLY #64419 /* ~Forget it, Sarevok.  There is no way I'm trusting you.~ */ GOTO 11
  IF ~GlobalGT("GavePocketPlane","GLOBAL",0)~ THEN REPLY #64419 /* ~Forget it, Sarevok.  There is no way I'm trusting you.~ */ GOTO 1002
END

ADD_TRANS_TRIGGER SAREV25A 13 ~False()~ DO 1
EXTEND_BOTTOM SAREV25A 13
  IF ~Global("GavePocketPlane","GLOBAL",0)~ THEN REPLY #64341 /* ~Forget it.  I will find my own way out.~ */ GOTO 11
  IF ~GlobalGT("GavePocketPlane","GLOBAL",0)~ THEN REPLY #64341 /* ~Forget it.  I will find my own way out.~ */ GOTO 1002
END


