APPEND SARCPT01

IF WEIGHT #-1 ~OpenState("Secret1",TRUE) Global("SamandExists","AR5015",1)~ THEN BEGIN 0a
	SAY ~You have your orders, man.  Make sure Pugar gets them to the other guards.~
	IF ~~ THEN DO ~StartCutSceneMode()
					SetGlobal("SamandExists","AR5015",2)
				   Wait(1)
				   ActionOverride("SARIPG01",DisplayStringHead(Myself,%Yes sir!%)) 
				   ActionOverride("SARIPG01",DestroySelf()) 
				   SmallWait(3)
				   EndCutSceneMode()~ EXIT
END

IF WEIGHT #-1 ~Global("SamandExists","AR5015",2)~ THEN BEGIN 1a
	SAY ~Yes?  I suppose you have some important reason for being here.~
	IF ~~ THEN REPLY ~You're putting up quite a resistance to the army, and Yaga Shura wants your head.~ GOTO 2a
	IF ~~ THEN REPLY ~I don't know about "important", but it does involve killing you.~ GOTO 3a
END

IF ~~ THEN BEGIN 2a
	SAY ~I'm not surprised he wants me dead.  But that you know what Yaga Shura thinks *is* surprising.~
	IF ~~ THEN REPLY ~He's made me a good offer, and I intend on collecting on it.~ GOTO 3a
	IF ~~ THEN REPLY ~I might have spoken to Yaga Shura, but I don't intend on doing anything for him.~ GOTO 4a
END

IF ~~ THEN BEGIN 3a
	SAY ~Arms!  To arms!~
	IF ~~ THEN DO ~SetGlobal("WGsfight","AR5015",1)~ EXIT
END

IF ~~ THEN BEGIN 4a
	SAY ~Then why reveal your connection?~
	IF ~~ THEN REPLY ~I can leave Saradush at will.  I can speak to Yaga Shura and live.  You shouldn't forget this.~ GOTO 5a
	IF ~~ THEN REPLY ~The best way to beat Yaga Shura is to know him.  I intend to keep on collecting information from him.~ GOTO 6a
END

IF ~~ THEN BEGIN 5a
	SAY ~I'll not fear you, Bhaalspawn.  You shouldn't forget that.~
	IF ~~ THEN REPLY ~I'll show you what fear is!~ GOTO 3a
	IF ~~ THEN REPLY ~Maybe not right now.  But you will be soon enough.~ EXIT
END

IF ~~ THEN BEGIN 6a
	SAY ~I'm not sure if I trust your strategy.  But I'm glad you are still on the side of Saradush.~
	IF ~~ THEN EXIT
END

END

