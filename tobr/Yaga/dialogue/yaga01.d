ADD_TRANS_TRIGGER YAGA01 0 ~False()~ DO
  EXTEND_TOP YAGA01 0
    IF ~CheckStatGT(Player1,14,CHR)~  THEN REPLY ~Wait!  I would have words with you!~ 
	  DO ~CreateCreature("WGneutra",[1844.1573],0) RealSetGlobalTimer("WGfire","AR5203",10) ~ GOTO 0a
    IF ~CheckStatGT(Player1,10,CHR) !CheckStatGT(Player1,14,CHR)~  THEN REPLY ~Wait!  I would have words with you!~ 
      DO ~CreateCreature("WGneutra",[1844.1573],0) RealSetGlobalTimer("WGfire","AR5203",10)~ GOTO 1a
    IF ~!CheckStatGT(Player1,10,CHR)~  THEN REPLY ~Wait!  I would have words with you!~ GOTO 2a
  END

APPEND YAGA01

IF ~~ THEN BEGIN 0a
	SAY ~And what would you have to say to me, <CHARNAME>?~
	IF ~~ THEN REPLY ~How do you know my name?~ GOTO 3a
	IF ~~ THEN REPLY ~What's going on here?~  GOTO 4a
	IF ~~ THEN REPLY ~I want your army to disband and leave this town in peace.~ GOTO 5a
	IF ~~ THEN REPLY ~I want to join with you and your army.~ GOTO 6a
END

IF ~~ THEN BEGIN 1a
	SAY ~Make it good and make it quick, <CHARNAME>.~
	IF ~~ THEN REPLY ~How do you know my name?~ GOTO 7a
	IF ~~ THEN REPLY ~What's going on here?~  GOTO 4a
	IF ~~ THEN REPLY ~I want your army to disband and leave this town in peace.~ GOTO 8a
	IF ~~ THEN REPLY ~I want to join with you and your army.~ GOTO 6a
END

IF ~~ THEN BEGIN 2a
	SAY ~HA-ha-ha-ha!  I think you would.  Unfortunately for you I don't care.~
	IF ~~ THEN DO ~ActionOverride("WGneutra",DestroySelf()) SetGlobal("SpawnStart","AR5203",1) Enemy()~ EXIT
END

IF ~~ THEN BEGIN 3a
	SAY ~I know many things about you, <CHARNAME>.  I know of your deeds in Amn... your strength...  your heritage.  Suprised?~
	IF ~~ THEN REPLY ~Not really.  Word gets around about me.~ GOTO 8a
	IF ~~ THEN REPLY ~Then you know I am not to be trifled with.~ GOTO 8a
	IF ~~ THEN REPLY ~What does my heritage have to do with anything?~ GOTO 9a
END

IF ~~ THEN BEGIN 4a
	SAY ~What does it look like?  It is a war!  I have laid seige to Saradush with the most powerful army this land has ever seen!  And soon I will stand in the streets of Saradush and slaughter its people!~
	IF ~~ THEN REPLY ~I want your army to disband and leave this town in peace!~ GOTO 5a
	IF ~~ THEN REPLY ~I want to join with you and your army.~ GOTO 6a
	IF ~~ THEN REPLY ~That's quite impressive.~ GOTO 10a
END

IF ~~ THEN BEGIN 5a
	SAY ~HA-ha-ha-ha!  And I want you dead!  We can't both be happy, now can we?~
	IF ~~ THEN REPLY ~Why do you want me dead?~ GOTO 9a
	IF ~~ THEN REPLY ~If you won't leave, I want to join with you and your army.~ GOTO 11a
	IF ~~ THEN REPLY ~You want me dead?  Just try to kill me!~ GOTO 12a
END

IF ~~ THEN BEGIN 6a
	SAY ~Hmmm... perhaps you could be more useful to me alive than dead.  This seige is going slowly.  Their guards are putting up more of a fight than I expected.  They must be assisted by the powerful Bhaalspawn general within.~
	IF ~~ THEN GOTO 13a
END

IF ~~ THEN BEGIN 7a
	SAY ~I know many things about you, <CHARNAME>.  While you clearly know nothing of me.  This puts you at a disadvantage, does it not?~
	IF ~~ THEN REPLY ~Then you I am not to be trifled with.~ GOTO 8a
	IF ~~ THEN REPLY ~I have overcome greater disadvantages before.~ GOTO 8a
	IF ~~ THEN REPLY ~Why would you care about me?~ GOTO 9a
END

IF ~~ THEN BEGIN 8a
	SAY ~HA-ha-ha-ha!  You show spriit, <CHARNAME>.  But I could squash you like a worm at any time.  Remember this in choosing your words.~
	IF ~~ THEN REPLY ~I'll squash you first!~ GOTO 12a
	IF ~~ THEN REPLY ~I want to join with you and your army.~ GOTO 6a
	IF ~~ THEN REPLY ~I'll be going then.~ GOTO 15a
END

IF ~~ THEN BEGIN 9a
	SAY ~Bhaalspawn.  That word means so many things.  To me it means a life to be snuffed out.~
	IF ~~ THEN REPLY ~Please don't kill me.~ GOTO 15a
	IF ~~ THEN REPLY ~I'll snuff you first!~ GOTO 12a
	IF ~~ THEN REPLY ~Then we are at an impass.  What do you suggest?~ GOTO 6a
END

IF ~~ THEN BEGIN 10a
	SAY ~HA-ha-ha-ha!  It is indeed!~
	IF ~~ THEN REPLY ~I want to join with you and your army.~ GOTO 7a
	IF ~~ THEN REPLY ~I want your army to disband and leave this town in peace.~ GOTO 8a
	IF ~~ THEN REPLY ~I'll be going then.~ GOTO 15a
END

IF ~~ THEN BEGIN 11a
	SAY ~First you demand I leave, then you would join with me?  HA-ha-ha-ha!  No, I think not.~
	IF ~~ THEN GOTO 15a
END

IF ~~ THEN BEGIN 12a
	SAY ~Very well, worm.  Know that you have no chance against me.  Yaga Shura is invincible!~
	IF ~~ THEN DO ~ActionOverride("WGneutra",DestroySelf()) SetGlobal("SpawnStart","AR5203",1) Enemy()~ EXIT
END

IF ~~ THEN BEGIN 13a
	SAY ~His name is Gromnir, and he has fortified the town with many powerful Bhaalspawn.  Kill him and you will have my good will.~
	IF ~Dead("gromnir")~ THEN REPLY ~He's already dead.  I killed him myself.  Anything else?~ GOTO 16a
	IF ~Global("SeenSara","GLOBAL",0)~ THEN REPLY ~Very well, I will kill this Gromnir for you.~ GOTO 17b
	IF ~!Dead("gromnir") Global("SeenSara","GLOBAL",1)~ THEN REPLY ~Very well, I will kill this Gromnir for you.~ GOTO 17a
	IF ~~ THEN REPLY ~I'm not going to sabotage the town for you.~ GOTO 18a
	IF ~~ THEN REPLY ~Good will, eh?  How about some gold?~ GOTO 19a
END

IF ~~ THEN BEGIN 15a
	SAY ~I have no intention of letting you leave this field alive, worm.  And you have no chance against me.~
	IF ~~ THEN DO ~ActionOverride("WGneutra",DestroySelf()) SetGlobal("SpawnStart","AR5203",1) Enemy()~ EXIT
END

IF ~~ THEN BEGIN 16a
	SAY ~But... how did you get in to Saradush?  And more importantly, how did you leave?~
	IF ~~ THEN REPLY ~I'm not going to tell you.~ GOTO 18a
	IF ~~ THEN REPLY ~I'm in possession of a pocket plane that allows me to transport at will.  Even from Saradush.~ GOTO 20a
	IF ~~ THEN REPLY ~Does it matter?  I am here now and Gromnir is dead.  I'd like some of that good will you mentioned.~ GOTO 21a
END

IF ~~ THEN BEGIN 17a
	SAY ~Excellent.  But first you must enter Saradush.  I have a team of miners working on a tunnel into the sewers, but it has not yet been successful.  You'll have to find your own way in.~
	IF ~~ THEN REPLY ~Not a problem for one as resourceful as myself.  Consider Gromnir dead.~ DO ~SetGlobal("WGgdeal","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 17b
	SAY ~Excellent.  One of my lieutenants informed me that a tunnel was recently completed into the Saradush sewers.  It is too small for a fire giant, but it may fit a bug such as yourself.  Speak to the lieutenant near the bridge to gain entrance to Saradush.~
	IF ~~ THEN DO ~SetGlobal("WGgdeal","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 18a
	SAY ~No?  Then you will die for me.~
	IF ~~ THEN DO ~ActionOverride("WGneutra",DestroySelf()) SetGlobal("SpawnStart","AR5203",1) Enemy()~ EXIT
END

IF ~~ THEN BEGIN 19a
	SAY ~HA-ha-ha-ha!  Are you to be bought then, <CHARNAME>?  I will give you 5000 gold pieces for this task.~
	IF ~Global("SeenSara","GLOBAL",1)~ THEN REPLY ~Very well, I will kill Gromnir for you.~ DO ~SetGlobal("WGygold","GLOBAL",1)~ GOTO 17a
	IF ~Global("SeenSara","GLOBAL",0)~ THEN REPLY ~Very well, I will kill this Gromnir for you.~ DO ~SetGlobal("WGygold","GLOBAL",1)~ GOTO 17b
	IF ~~ THEN REPLY ~No deal.~ GOTO 18a
END

IF ~~ THEN BEGIN 20a
	SAY ~Interesting.  There is more to you than I thought... Yes.  You will be of great use.~
	IF ~~ THEN REPLY ~Do you mean to make me a tool?~ GOTO 22a
	IF ~~ THEN REPLY ~I've earned your good will, now what will I show for it?~ GOTO 21a
END

IF ~~ THEN BEGIN 21a
	SAY ~Ha!  You *may* have killed Gromnir, but what do I have to show for it?  The siege continues and the resistance is as strong as ever.  No, the good will you have earned is that I will not kill you where you stand.~
	IF ~~ THEN REPLY ~You said you wanted Gromnir dead, not the resistance broken.  For that, the captain of the guard must die.~ GOTO 23a
	IF ~~ THEN REPLY ~I know now not to bargin with you, Yaga Shura.  I'm leaving.~ GOTO 24a
	IF ~~ THEN REPLY ~This is my reward?  I'll kill you too!~ GOTO 12a
END

IF ~~ THEN BEGIN 22a
	SAY ~No, <CHARNAME>, what I suggest is more than that.  But details must wait until the resistance of Saradush is broken.~
		IF ~~ THEN REPLY ~You said you wanted Gromnir dead, not the resistance broken.  For that, the captain of the guard must die.~ GOTO 23a
		IF ~~ THEN REPLY ~Very well, I'll leave you to that then.~ GOTO 25a
END

IF ~~ THEN BEGIN 23a
	SAY ~Then kill Captain Samand, <CHARNAME>!  And once the walls fall I will have an interesting proposition for you.~
		IF ~~ THEN REPLY ~This propostion had better be interesting indeed.  I grow tired of doing your dirty work.~ DO ~SetGlobal("WGsdeal","GLOBAL",1)~ EXIT
		IF ~~ THEN REPLY ~I'll not kill again for you, Yaga Shura.  Your rewards are not worth it.~ GOTO 25a
		IF ~~ THEN REPLY ~I'd rather kill you.~ GOTO 12a
END

IF ~~ THEN BEGIN 24a
	SAY ~Go then, <CHARNAME>.  But our next meeting will not end so peacefully.~
	IF ~~ THEN DO ~SetGlobal("WGrefuseyaga","AR5203",1)~  EXIT
END

IF ~~ THEN BEGIN 25a
	SAY ~I suggest you change your mind, <CHARNAME>.  The rewards for this are great.~
	IF ~~ THEN REPLY ~My mind is made up.  I'm leaving you to your war.~ GOTO 18a
	IF ~~ THEN REPLY ~Alright, I'll help you once more.  But this time you must deliver more.~ GOTO 23a
	IF ~~ THEN REPLY ~Am I to be your tool once more?~ GOTO 22a
END

IF WEIGHT #-1 ~Global("YagaShuraHeart","GLOBAL",0) OR(3) Global("WGgdeal","GLOBAL",1) Global("WGsdeal","GLOBAL",1) Global("WGrefuseyaga","AR5203",1)~ THEN BEGIN 26a
	SAY ~You dare to return so soon!  Prepare to meet your death, worm!~
	IF ~~ THEN DO ~ActionOverride("WGneutra",DestroySelf()) SetGlobal("SpawnStart","AR5203",1) Enemy()~ EXIT
END

IF WEIGHT #-1 ~Global("YagaShuraHeart","GLOBAL",0) Global("WGgdeal","GLOBAL",2)~ THEN BEGIN 27a
	SAY ~You dare to return so soon!  Prepare to meet your death, worm!~
	IF ~~ THEN REPLY ~But I have done what you asked, and Gromnir is dead!~ DO ~SetGlobal("WGgdeal","GLOBAL",3)~ GOTO 21a
	IF ~~ THEN REPLY ~Attack me after I've done all you asked?  I won't stand for it!~ GOTO 15a
END

IF WEIGHT #-1 ~Global("YagaShuraHeart","GLOBAL",0) Global("WGsdeal","GLOBAL",2)~ THEN BEGIN 28a
	SAY ~You dare to return so soon! Prepare to meet your death, worm!~
	IF ~~ THEN REPLY ~Again I have done what you asked.  Captain Samand is no more.~ DO ~SetGlobal("WGsdeal","GLOBAL",3)~ GOTO 29a
	IF ~~ THEN REPLY ~I'm really tired of this.  Have at you!~ GOTO 15a
END

IF ~~ THEN BEGIN 29a
	SAY ~How can this be?!  Saradush is leaderless, and yet it stands.~
	IF ~~ THEN GOTO 30a
END

IF ~~ THEN BEGIN 30a
	SAY ~But my mages have confirmed what you have said, <CHARNAME>.  And I will reward you appropriately.~
	IF ~Global("WGygold","GLOBAL",1)~ THEN REPLY ~And what about that interesting proposition?~ DO ~GiveGoldForce(5000)~ GOTO 31a
	IF ~!Global("WGygold","GLOBAL",1)~ THEN REPLY ~And what about that intersting proposition?~ GOTO 31a
END

IF ~~ THEN BEGIN 31a
	SAY ~Yes... You have shown yourself to be powerful indeed, <CHARNAME>.  Powerful enough to join us, I think.  But I have not heard from my associates, and can say no more.~
	IF ~~ THEN REPLY ~This is it?  I bring Saradush to its knees, and you cannot finish it off.  Then you have an interesting proposition that is no proposition at all!  I will not stand for this!~ GOTO 12a
	IF ~~ THEN REPLY ~You are powerful yourself, Yaga Shura.  I suppose this will have to do for now.~ GOTO 32a
END

IF ~~ THEN BEGIN 32a
	SAY ~Ha!  Let us part for now, <CHARNAME>.  Word will return shortly.~
	IF ~~ THEN EXIT
END

IF WEIGHT #-1 ~Global("YagaShuraHeart","GLOBAL",0) Global("WGsdeal","GLOBAL",3)~ THEN BEGIN 33a
	SAY ~Word has not yet returned.  I will send for you once it has.~
	IF ~~ THEN EXIT
END
END