//The Captain

BEGIN YSGUAR06

IF ~Global("DiggersTalk","AR5203",1)~ THEN BEGIN 0
	SAY ~What is it, maggots?  Keep digging or Yaga-Shura will have your heads!~ 
	IF ~~ THEN EXTERN ~WGDisur~ 0
END

IF ~~ THEN BEGIN 1
	SAY ~Enough!  Have something to say or get back to work.~
	IF ~~ THEN EXTERN ~SEWYAG03~ 0
END   

IF ~~ THEN BEGIN 2
	SAY ~I have had my fill of your insolence, Disur.  The tunnel is complete and Saradush will fall tonight!  I'll tell Yaga-Shura personally.  All of you, wait for me in the sewers!  Except you, Disur.  You'll be standing guard.  Above ground.  ~
	IF ~~ THEN EXTERN ~WGDisur~ 1
END

IF ~Global("WGgdeal","GLOBAL",1) Global("InsideSewers","GLOBAL",0)~ THEN BEGIN 3
	SAY ~Damn that Disur!  If he wasn't dead I'd kill him myself!~
	IF ~~ THEN REPLY ~I'm afraid I got to him first.~ GOTO 4
	IF ~~ THEN REPLY ~Show me where the tunnel entrance is, dog.~ GOTO 5
END

IF ~~ THEN BEGIN 4
	SAY ~More's the pity.  So, I assume you want something from me?~ 
	IF ~~ THEN REPLY ~Show me where the tunnel entrance is, dog.~ GOTO 5
END

IF ~~ THEN BEGIN 5
	SAY ~And who are you that I should follow your orders?~ 
	IF ~~ THEN REPLY ~<CHARNAME> is my name and I have been sent by Yaga Shura himself.~ GOTO 6
END

IF ~~ THEN BEGIN 6
	SAY ~Yaga Shura?  Very well, follow me.~
	IF ~~ THEN DO ~StartCutSceneMode() 
			FadeToColor([20.0],0)
			Wait(1)
			LeaveAreaLUAPanic("AR5013","",[2651.1314],0)
			ActionOverride(Player1,LeaveAreaLUA("AR5013","",[2651.1314],10))
			ActionOverride(Player2,LeaveAreaLUA("AR5013","",[2725.1323],10))
			ActionOverride(Player3,LeaveAreaLUA("AR5013","",[2658.1358],10))
			ActionOverride(Player4,LeaveAreaLUA("AR5013","",[2695.1387],10))
			ActionOverride(Player5,LeaveAreaLUA("AR5013","",[2730.1372],10))
			ActionOverride(Player6,LeaveAreaLUA("AR5013","",[2750.1345],10)) 
			Wait(1)
			SetGlobal("InsideSewers","GLOBAL",6)
			SaveGame(0)
			Wait(1)
			EndCutSceneMode()
			FadeFromColor([30.0],0)
			~ EXIT
END

IF ~Global("InsideSewers","GLOBAL",6)~ THEN BEGIN 7
	SAY ~I led you in, you do the rest yourself.~
	IF ~~ THEN EXIT
END

// The Leader of the Diggers

BEGIN SEWYAG03 

IF ~~ THEN BEGIN 0
	SAY ~Sir, we've broken through to the sewers!  It's damp work, but we've done it.~ 
	IF ~~ THEN EXTERN ~WGDisur~ 1A
END

// Disur

BEGIN WGDisur

IF ~~ THEN BEGIN 0
	SAY ~Your leader won't be doing anything of the sort!  The duergar are too valuable to him, and you know it.~
	IF ~~ THEN EXTERN ~YSGUAR06~ 1
END


IF ~~ THEN BEGIN 1A
	SAY ~Aye, for the fifth time!  I tell you, this one will collapse like all the others.  The ground is too muddy to build a proper tunnel.~
	IF ~~ THEN EXTERN ~YSGUAR06~ 2
END

IF ~~ THEN BEGIN 1
	SAY ~... Aye, as you say.~
	IF ~~ THEN DO ~ StartCutSceneMode()
			StartCutScene("CUTSARA2")~ EXIT
END



IF ~Global("DiggersTalk","AR5203",3)~ THEN BEGIN 2
	SAY ~Ar, he knows he's got me in a hard place.  With the tunnel finished...~
	IF ~~ THEN DO ~SetGlobal("DiggersTalk","AR5203",4)~ GOTO 3
END

IF ~~ THEN BEGIN 3
	SAY ~What?  Who's there?~
	IF ~CheckStatGT([PC],50,STEALTH)~ THEN REPLY ~*Sneak up silently and grab Disur from behind.*~ 
		DO ~ 	StartCutSceneMode()
			ClearAllActions()
			SetGlobal("SneakDisur","AR5203",1)
			ActionOverride(LastTalkedToBy,MoveToPoint([3301.982]))
			Wait(4)
			EndCutSceneMode() 
			~ EXIT
	IF ~!CheckStatGT([PC],50,STEALTH)~ THEN REPLY ~*Sneak up silently and grab Disur from behind.*~ 
		DO ~ 	StartCutSceneMode()
			ClearAllActions()
			SetGlobal("SneakDisur","AR5203",2)
			ActionOverride(LastTalkedToBy,MoveToPoint([3384.881]))
			Wait(1)
			EndCutSceneMode()
			 ~ EXIT
	IF ~CheckStatGT([PC],13,CHR)~ THEN REPLY ~It's your captain, you fool!  Stand down!~ GOTO 6
	IF ~CheckStatLT([PC],13,CHR)~ THEN REPLY ~It's your captain, you fool!  Stand down!~ GOTO 7
	IF ~~ THEN REPLY ~My name is <CHARNAME>, and I need some information.~ GOTO 8
	IF ~~ THEN REPLY ~My name is <CHARNAME>, prepare for your death!~ GOTO 9
END


IF ~Global("SneakDisur","AR5203",3)~ THEN BEGIN 4
	SAY ~*choke*~
	IF ~~ THEN REPLY ~That's right.  Stay nice and quiet and you won't get hurt.  I'm going to let go now, and you're going to answer some questions for me.~ DO ~SetGlobal("SneakDisur","AR5203",5)~ GOTO 10
END
			 
IF ~Global("SneakDisur","AR5203",4)~ THEN BEGIN 5
	SAY ~Hold it right there!  I hear you well enough.  You'll not get past me!~
	IF ~~ THEN DO ~Enemy() SetGlobal("SneakDisur","AR5203",5)~ EXIT
END

IF ~~ THEN BEGIN 6
	SAY ~Aye, captain.  What is it now?~
	IF ~~ THEN REPLY ~Come over here and quickly, maggot!~ GOTO 11
	IF ~~ THEN REPLY ~I'm relieving you.  Go back into the tunnel.~ GOTO 12
	IF ~~ THEN REPLY ~It's your death, you gullible dwarf!~ GOTO 9
END

IF ~~ THEN BEGIN 7
	SAY ~<GIRLBOY>, if you're my captain I'm an elf!  You'll not get past me!~
	IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 8
	SAY ~... <CHARNAME>.  I've heard of you.  I'll not start a fight I can't win.~
	IF ~~ THEN REPLY ~Answer my questions and I won't hurt you.~ GOTO 10
	IF ~~ THEN REPLY ~Can't win, eh?  I like those odds!~ DO ~Enemy()~ EXIT
	IF ~~ THEN REPLY ~Heard of me?  How?~ GOTO 13
END

IF ~~ THEN BEGIN 9
	SAY ~I'll not go quietly, be sure of that!~
	IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 10
	SAY ~Right.  I'll play along.~
	IF ~~ THEN REPLY ~How many other guards are there?~ GOTO 14
	IF ~~ THEN REPLY ~Take me to your leader.~ GOTO 22
	IF ~~ THEN REPLY ~Who are you?~ GOTO 15
	IF ~~ THEN REPLY ~Why is this army here?~ GOTO 16
	IF ~~ THEN REPLY ~Tell me about the tunnel you were digging.~ GOTO 17
	IF ~~ THEN REPLY ~What do you know about Saradush?~ GOTO 19
	IF ~~ THEN REPLY ~How might I get into the city?~ GOTO 20
END

IF ~~ THEN BEGIN 11
	SAY ~Right, all right.~
	IF ~~ THEN DO ~ MoveToObject([PC]) SetGlobal("TrickDisur","AR5203",1) ~ EXIT
END

IF ~~ THEN BEGIN 12
	SAY ~No need to tell me twice.  I was already... Wait!  That's not the captain's voice! To arms!~
	IF ~~ THEN DO ~Enemy()~ EXIT
END


IF ~~ THEN BEGIN 13
	SAY ~You're a powerful Bhaalspawn, almost as powerful as Yaga-Shura himself.  Voices carry, and everyone in the camp has heard him talking about you.~
	IF ~~ THEN REPLY ~How many other guards are there?~ GOTO 14
	IF ~~ THEN REPLY ~Take me to your leader.~ GOTO 22
	IF ~~ THEN REPLY ~Who are you?~ GOTO 15
	IF ~~ THEN REPLY ~Why is this army here?~ GOTO 16
	IF ~~ THEN REPLY ~Tell me about the tunnel you were digging.~ GOTO 17
	IF ~~ THEN REPLY ~Who is this "Yaga-Shura"?~ GOTO 18
	IF ~~ THEN REPLY ~What do you know about Saradush?~ GOTO 19
	IF ~~ THEN REPLY ~How might I get into the city?~ GOTO 20
END

IF ~~ THEN BEGIN 14
	SAY ~None.  There's no need to guard the rear when we've decimated half the countryside.  Captain just put me here because I hate being above ground.~
	IF ~~ THEN REPLY ~Take me to your leader.~ GOTO 22
	IF ~~ THEN REPLY ~Who are you?~ GOTO 15
	IF ~~ THEN REPLY ~Why is this army here?~ GOTO 16
	IF ~~ THEN REPLY ~Tell me about the tunnel you were digging.~ GOTO 17
	IF ~~ THEN REPLY ~What do you know about Saradush?~ GOTO 19
	IF ~~ THEN REPLY ~How might I get into the city?~ GOTO 20
END

IF ~~ THEN BEGIN 15
	SAY ~Name's Disur.  I'm on a mining team for Yaga-Shura.  Money's good, but not worth my neck.~
	IF ~~ THEN REPLY ~How many other guards are there?~ GOTO 14
	IF ~~ THEN REPLY ~Take me to your leader.~ GOTO 22
	IF ~~ THEN REPLY ~Why is this army here?~ GOTO 16
	IF ~~ THEN REPLY ~Tell me about the tunnel you were digging.~ GOTO 17
	IF ~~ THEN REPLY ~Who is this "Yaga-Shura"?~ GOTO 18
	IF ~~ THEN REPLY ~What do you know about Saradush?~ GOTO 19
	IF ~~ THEN REPLY ~How might I get into the city?~ GOTO 20
END

IF ~~ THEN BEGIN 16
	SAY ~We go where Yaga-Shura says, and he says to seige Saradush.  He's got a thing for killing Bhaalspawn, and a score of them have holed up in there.~
	IF ~~ THEN REPLY ~What does he have against Bhaalspawn?~ GOTO 27
	IF ~~ THEN REPLY ~How many other guards are there?~ GOTO 14
	IF ~~ THEN REPLY ~Take me to your leader.~ GOTO 22
	IF ~~ THEN REPLY ~Who are you?~ GOTO 15
	IF ~~ THEN REPLY ~Tell me about the tunnel you were digging.~ GOTO 17
	IF ~~ THEN REPLY ~Who is this "Yaga-Shura"?~ GOTO 18
	IF ~~ THEN REPLY ~What do you know about Saradush?~ GOTO 19
	IF ~~ THEN REPLY ~How might I get into the city?~ GOTO 20
END

IF ~~ THEN BEGIN 17
	SAY ~It's been slow going, working under this bridge so they can't see what we're doing.  We've broken through to the sewers beneath Saradush many times only to have the tunnel collapse on us.~ 
	IF ~~ THEN GOTO 17b  
END

IF ~~ THEN BEGIN 17b
	SAY ~It is small enough that we'll have to go one by one, and the fire giants won't fit at all, but it's as good as it'll ever be.~
	IF ~~ THEN REPLY ~How many other guards are there?~ GOTO 14
	IF ~~ THEN REPLY ~Take me to your leader.~ GOTO 22
	IF ~~ THEN REPLY ~Who are you?~ GOTO 15
	IF ~~ THEN REPLY ~Why is this army here?~ GOTO 16
	IF ~~ THEN REPLY ~What do you know about Saradush?~ GOTO 19
	IF ~~ THEN REPLY ~How might I get into the city?~ GOTO 20
END

IF ~~ THEN BEGIN 18
	SAY ~Yaga-Shura?  He's a powerful Bhaalspawn.  Rich and charasmatic to boot.  He's charmed more fire giants and bribed more mecenaries than I care to count.  He's been laying waste to the countryside for weeks, killing all the Bhaalspawn he can find.~
	IF ~~ THEN REPLY ~What does he have against Bhaalspawn?~ GOTO 27
	IF ~~ THEN REPLY ~How many other guards are there?~ GOTO 14
	IF ~~ THEN REPLY ~Take me to your leader.~ GOTO 22
	IF ~~ THEN REPLY ~Who are you?~ GOTO 15
	IF ~~ THEN REPLY ~Why is this army here?~ GOTO 16
	IF ~~ THEN REPLY ~Tell me about the tunnel you were digging.~ GOTO 17
	IF ~~ THEN REPLY ~What do you know about Saradush?~ GOTO 19
	IF ~~ THEN REPLY ~How might I get into the city?~ GOTO 20
END

IF ~~ THEN BEGIN 19
	SAY ~That it's full of Bhaalspawn, and Yaga-Shura means to kill them all.~
	IF ~~ THEN REPLY ~What does he have against Bhaalspawn?~ GOTO 27
	IF ~~ THEN REPLY ~How many other guards are there?~ GOTO 14
	IF ~~ THEN REPLY ~Take me to your leader.~ GOTO 22
	IF ~~ THEN REPLY ~Who are you?~ GOTO 15
	IF ~~ THEN REPLY ~Why is this army here?~ GOTO 16
	IF ~~ THEN REPLY ~Tell me about the tunnel you were digging.~ GOTO 17
	IF ~~ THEN REPLY ~Who is this "Yaga-Shura"?~ GOTO 18
	IF ~~ THEN REPLY ~What do you know about Saradush?~ GOTO 19
	IF ~~ THEN REPLY ~How might I get into the city?~ GOTO 20 
END

IF ~~ THEN BEGIN 20
	SAY ~The walls are high and the mages have it pretty well sealed from magics.  The tunnel's the only way in or out.~
	IF ~~ THEN REPLY ~Lead me to the tunnel's entrance.~ GOTO 23
END

IF ~Global("TrickDisur","AR5203",2)~ THEN BEGIN 21
	SAY ~What?!  You're not the captain!~
	IF ~~ THEN REPLY ~And you're a guillible fool!  Answer my questions or feel my wrath!~ DO ~SetGlobal("TrickDisur","AR5203",3)~ GOTO 10
	IF ~~ THEN REPLY ~No, I am your death!~ ~SetGlobal("TrickDisur","AR5203",3)~ GOTO 9
	IF ~~ THEN REPLY ~No, I am <CHARNAME>.  They'll never hear you shout this far from the camp.~ ~SetGlobal("TrickDisur","AR5203",3)~ GOTO 8
END

IF ~~ THEN BEGIN 22
	SAY ~Nay, that would be both our deaths.  You can find him easily enough if you just cross the bridge.  He is hard to miss.~
	IF ~~ THEN REPLY ~It'll be your death if you don't!~ GOTO 9
	IF ~~ THEN REPLY ~How many other guards are there?~ GOTO 14
	IF ~~ THEN REPLY ~Who are you?~ GOTO 15
	IF ~~ THEN REPLY ~Why is this army here?~ GOTO 16
	IF ~~ THEN REPLY ~Tell me about the tunnel you were digging.~ GOTO 17
	IF ~~ THEN REPLY ~What do you know about Saradush?~ GOTO 19
	IF ~~ THEN REPLY ~How might I get into the city?~ GOTO 20
END

IF ~~ THEN BEGIN 23
	SAY ~It's right here, under the bridge.  Follow me...~
	IF ~~ THEN DO ~StartCutSceneMode() StartCutScene("CUTSEW")
			~ EXIT
END

IF ~Global("InsideSewers","GLOBAL",2)~ THEN BEGIN 25
	SAY ~I took you here, but now I've got friends.  At them, men!~
	IF ~~ THEN DO ~ SaveGame(0)
					SetGlobal("InsideSewers","GLOBAL",3) 
					Enemy()
					ChangeEnemyAlly("SEWYAG03",ENEMY)
					ChangeEnemyAlly("SEWYAG01",ENEMY)
					ChangeEnemyAlly("SEWYAG02",ENEMY)
					ChangeEnemyAlly("SEWYAG04",ENEMY)
					 ~ EXIT
END

IF ~Global("DisurFight","AR5203",1)~ THEN BEGIN 26
	SAY ~Hold a moment!  I yield!~ 
	IF ~~ THEN REPLY ~Answer my questions or I'll finish you off!~ DO ~SetGlobal("DisurFight","AR5203",2)~ GOTO 10
	IF ~~ THEN REPLY ~Coward!  Stand and fight me!~ DO ~Enemy() SetGlobal("DisurFight","AR5203",2)~ EXIT
	IF ~~ THEN REPLY ~All the easier to kill you.~ DO ~Enemy() SetGlobal("DisurFight","AR5203",2)~ EXIT
END

IF ~~ THEN BEGIN 27
	SAY ~Who can say?  He's one himself, so that's got to have something to do with it.~
	IF ~~ THEN REPLY ~How many other guards are there?~ GOTO 14
	IF ~~ THEN REPLY ~Take me to your leader.~ GOTO 22
	IF ~~ THEN REPLY ~Who are you?~ GOTO 15
	IF ~~ THEN REPLY ~Why is this army here?~ GOTO 16
	IF ~~ THEN REPLY ~Tell me about the tunnel you were digging.~ GOTO 17
	IF ~~ THEN REPLY ~What do you know about Saradush?~ GOTO 19
	IF ~~ THEN REPLY ~How might I get into the city?~ GOTO 20
END			

	
