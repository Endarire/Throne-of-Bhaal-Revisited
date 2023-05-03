BEGIN ~WGWITCH~

//No male NPCs

IF ~Global("WGnum","ARTOBR",0) Gender(Player1,MALE)~ THEN BEGIN 0
	SAY ~You would do nicely, but no.  You are too powerful, even for me.  Such a pity.~
	IF ~~ THEN REPLY ~What do you mean?~  GOTO 1
	IF ~~ THEN REPLY ~Nice to meet you too.~ GOTO 1
END

IF ~~ THEN BEGIN 1
	SAY ~*sigh* And this place could so use some decoration.  Ah well, come back when you have handsomer friends.~
	IF ~~ THEN DO ~SetGlobal("WGnomen","GLOBAL",1)~ EXIT
END

IF ~Global("WGnomen","GLOBAL",1) Global("WGrecheck","ARTOBR",0)~ THEN BEGIN 2
	SAY ~Let's see...~
	IF ~~ THEN DO ~SetGlobal("WGrecheck","ARTOBR",1)~ EXIT
END

IF ~Global("WGrecheck","ARTOBR",2) Global("WGnum","ARTOBR",0)~ THEN BEGIN 3
	SAY ~Such a pity.~
	IF ~~ THEN DO ~SetGlobal("WGrecheck","ARTOBR",0)
				   SetGlobal("WG2recheck","ARTOBR",0)
				   SetGlobal("WG3recheck","ARTOBR",0)
				   SetGlobal("WG4recheck","ARTOBR",0)
				   SetGlobal("WG5recheck","ARTOBR",0)
				   SetGlobal("WG6recheck","ARTOBR",0)~ EXIT
END

IF ~Global("WGrecheck","ARTOBR",2) !Global("WGnum","ARTOBR",0)~ THEN BEGIN 4
	SAY ~Oh how deliciously sweet!~
	IF ~~ THEN DO ~SetGlobal("WGrecheck","ARTOBR",3)~ EXIT
END

IF ~Global("WGnum","ARTOBR",0) !Gender(Player1,MALE)~ THEN BEGIN 5
	SAY ~*hiss*  Be gone!  I'll have none of your kind!~
	IF ~~ THEN DO ~SetGlobal("WGnomen","GLOBAL",1)~ EXIT
END

// One male NPC

IF ~Global("WGnum","ARTOBR",1) Global("WGcon","ARTOBR",0)~ THEN BEGIN 6
	SAY ~Yes, you'll do nicely.~
	IF ~Global("WGpos","ARTOBR",1)~ THEN 
		DO ~StartCutSceneMode()
			SetGlobal("WGcon","ARTOBR",1)
	    	ActionOverride(Player2,SetDialog(""))
	    	ActionOverride(Player2,ChangeAIScript("",DEFAULT))
	      	ActionOverride(Player2,LeaveParty())
		    ReallyForceSpell(Player2,CLERIC_DEER)
		    Wait(3)
		    EndCutSceneMode()
		  ~ EXIT
	IF ~Global("WGpos","ARTOBR",2)~ THEN 
		DO ~StartCutSceneMode()
		    SetGlobal("WGcon","ARTOBR",1)
	    	ActionOverride(Player3,SetDialog(""))
	    	ActionOverride(Player3,ChangeAIScript("",DEFAULT))
	      	ActionOverride(Player3,LeaveParty())
		    ReallyForceSpell(Player3,CLERIC_DEER)
		    Wait(3)
		    EndCutSceneMode()
	      ~ EXIT
	IF ~Global("WGpos","ARTOBR",3)~ THEN 
		DO ~StartCutSceneMode()
	    	SetGlobal("WGcon","ARTOBR",1)
	    	ActionOverride(Player4,SetDialog(""))
	    	ActionOverride(Player4,ChangeAIScript("",DEFAULT))
	      	ActionOverride(Player4,LeaveParty())
		    ReallyForceSpell(Player4,CLERIC_DEER)
		    Wait(3)
		    EndCutSceneMode()
	      ~ EXIT
	IF ~Global("WGpos","ARTOBR",5)~ THEN 
		DO ~StartCutSceneMode()
	     	SetGlobal("WGcon","ARTOBR",1)
	    	ActionOverride(Player5,SetDialog(""))
	    	ActionOverride(Player5,ChangeAIScript("",DEFAULT))
	      	ActionOverride(Player5,LeaveParty())
		    ReallyForceSpell(Player5,CLERIC_DEER)
		    Wait(3)
		    EndCutSceneMode()
	      ~ EXIT
	IF ~Global("WGpos","ARTOBR",8)~ THEN 
		DO ~StartCutSceneMode()
		    SetGlobal("WGcon","ARTOBR",1)
	    	ActionOverride(Player6,SetDialog(""))
	    	ActionOverride(Player6,ChangeAIScript("",DEFAULT))
	      	ActionOverride(Player6,LeaveParty())
		    ReallyForceSpell(Player6,CLERIC_DEER)
		    Wait(3)
		    EndCutSceneMode()
	      ~ EXIT
END

// Two male NPCs

IF ~Global("WGnum","ARTOBR",2) Global("WGmore","ARTOBR",0) Global("WGcon","ARTOBR",0)~ THEN BEGIN 7
	SAY ~Yes, you'll do nicely...~
	IF ~OR(4) Global("WGpos","ARTOBR",3)
		      Global("WGpos","ARTOBR",4)
		      Global("WGpos","ARTOBR",6)
    		  Global("WGpos","ARTOBR",9)~ THEN 
		DO ~StartCutSceneMode()
		    SetGlobal("WGmore","ARTOBR",1)
	    	ActionOverride(Player2,SetDialog(""))
	    	ActionOverride(Player2,ChangeAIScript("",DEFAULT))
	      	ActionOverride(Player2,LeaveParty())
		    ReallyForceSpell(Player2,CLERIC_DEER)
		    Wait(3)
		    EndCutSceneMode()
	      ~ EXIT
	IF ~OR(3) Global("WGpos","ARTOBR",5)
		      Global("WGpos","ARTOBR",7)
		      Global("WGpos","ARTOBR",10)~ THEN 
		DO ~StartCutSceneMode()
		    SetGlobal("WGmore","ARTOBR",1)
	    	ActionOverride(Player3,SetDialog(""))
	    	ActionOverride(Player3,ChangeAIScript("",DEFAULT))
	      	ActionOverride(Player3,LeaveParty())
		    ReallyForceSpell(Player3,CLERIC_DEER)
		    Wait(3)
		    EndCutSceneMode()
		  ~ EXIT
	IF ~ OR(2) Global("WGpos","ARTOBR",8)
		       Global("WGpos","ARTOBR",11)~ THEN 
		DO ~StartCutSceneMode()
		    SetGlobal("WGmore","ARTOBR",1)
	    	ActionOverride(Player4,SetDialog(""))
	    	ActionOverride(Player4,ChangeAIScript("",DEFAULT))
	      	ActionOverride(Player4,LeaveParty())
		    ReallyForceSpell(Player4,CLERIC_DEER)
		    Wait(3)
		    EndCutSceneMode()
	      ~ EXIT 
	IF ~Global("WGpos","ARTOBR",13)~ THEN 
		DO ~StartCutSceneMode()
		    SetGlobal("WGmore","ARTOBR",1)
	    	ActionOverride(Player5,SetDialog(""))
	    	ActionOverride(Player5,ChangeAIScript("",DEFAULT))
	      	ActionOverride(Player5,LeaveParty())
		    ReallyForceSpell(Player5,CLERIC_DEER)
		    Wait(3)
		    EndCutSceneMode()
	      ~ EXIT
END

IF ~Global("WGmore","ARTOBR",2) Global("WGcon","ARTOBR",0)~ THEN BEGIN 8
	SAY ~... as will you...~
	IF ~Global("WGpos","ARTOBR",3)~ THEN
		DO ~StartCutSceneMode()
		    SetGlobal("WGcon","ARTOBR",1)
	    	ActionOverride(Player3,SetDialog(""))
	    	ActionOverride(Player3,ChangeAIScript("",DEFAULT))
	      	ActionOverride(Player3,LeaveParty())
		    ReallyForceSpell(Player3,CLERIC_DEER)
		    Wait(3)
		    EndCutSceneMode()
	      ~ EXIT
	IF ~ OR(2) Global("WGpos","ARTOBR",4)
		       Global("WGpos","ARTOBR",5)~ THEN
		DO ~StartCutSceneMode()
		    SetGlobal("WGcon","ARTOBR",1)
	    	ActionOverride(Player4,SetDialog(""))
	    	ActionOverride(Player4,ChangeAIScript("",DEFAULT))
	      	ActionOverride(Player4,LeaveParty())
		    ReallyForceSpell(Player4,CLERIC_DEER)
		    Wait(3)
		    EndCutSceneMode()
	      ~ EXIT
	IF ~ OR(3) Global("WGpos","ARTOBR",6)
	    	   Global("WGpos","ARTOBR",7)
		       Global("WGpos","ARTOBR",8)~ THEN
		DO ~StartCutSceneMode()
	    	SetGlobal("WGcon","ARTOBR",1)
	    	ActionOverride(Player5,SetDialog(""))
	    	ActionOverride(Player5,ChangeAIScript("",DEFAULT))
	      	ActionOverride(Player5,LeaveParty())
		    ReallyForceSpell(Player5,CLERIC_DEER)
	    	Wait(3)
		    EndCutSceneMode()
	      ~ EXIT
	IF ~OR(4) Global("WGpos","ARTOBR",9)
	    	  Global("WGpos","ARTOBR",10)
		      Global("WGpos","ARTOBR",11)
		      Global("WGpos","ARTOBR",13)~ THEN
		DO ~StartCutSceneMode()
		    SetGlobal("WGcon","ARTOBR",1)
	    	ActionOverride(Player6,SetDialog(""))
	    	ActionOverride(Player6,ChangeAIScript("",DEFAULT))
	      	ActionOverride(Player6,LeaveParty())
		    ReallyForceSpell(Player6,CLERIC_DEER)
		    Wait(3)
		    EndCutSceneMode()
	      ~ EXIT
END

// Three or more NPCs

IF ~GlobalGT("WGnum","ARTOBR",2) Global("WGnext","ARTOBR",0) Global("WGcon","ARTOBR",0)~ THEN BEGIN 9
	SAY ~Yes, you'll do nicely...~
	IF ~ OR(6) Global("WGpos","ARTOBR",6)
			   Global("WGpos","ARTOBR",8)
			   Global("WGpos","ARTOBR",11)
			   Global("WGpos","ARTOBR",14)
			   Global("WGpos","ARTOBR",17)
			   Global("WGpos","ARTOBR",19)~ THEN
		DO ~StartCutSceneMode()
			SetGlobal("WGnext","ARTOBR",1)
		 	ActionOverride(Player2,SetDialog(""))
	    	ActionOverride(Player2,ChangeAIScript("",DEFAULT))
	      	ActionOverride(Player2,LeaveParty())
			ReallyForceSpell(Player2,CLERIC_DEER)
			Wait(3)
			EndCutSceneMode()
          ~ EXIT
	IF ~ OR(4) Global("WGpos","ARTOBR",10)
	           Global("WGpos","ARTOBR",13)
			   Global("WGpos","ARTOBR",15)
			   Global("WGpos","ARTOBR",18) ~ THEN
		DO ~StartCutSceneMode()
		    SetGlobal("WGnext","ARTOBR",1)
		 	ActionOverride(Player3,SetDialog(""))
	    	ActionOverride(Player3,ChangeAIScript("",DEFAULT))
	      	ActionOverride(Player3,LeaveParty())
			ReallyForceSpell(Player3,CLERIC_DEER)
			Wait(3)
			EndCutSceneMode()
		  ~ EXIT
	IF ~Global("WGnum","ARTOBR",3) Global("WGpos","ARTOBR",16)~ THEN
		DO ~StartCutSceneMode()
		    SetGlobal("WGnext","ARTOBR",1)
		 	ActionOverride(Player4,SetDialog(""))
	    	ActionOverride(Player4,ChangeAIScript("",DEFAULT))
	      	ActionOverride(Player4,LeaveParty())
			ReallyForceSpell(Player4,CLERIC_DEER)
			Wait(3)
			EndCutSceneMode()
		  ~ EXIT
	IF ~Global("WGnum","ARTOBR",4) Global("WGpos","ARTOBR",16)~ THEN
		DO ~StartCutSceneMode()
		    SetGlobal("WGnext","ARTOBR",1)
		 	ActionOverride(Player2,SetDialog(""))
	    	ActionOverride(Player2,ChangeAIScript("",DEFAULT))
	      	ActionOverride(Player2,LeaveParty())
			ReallyForceSpell(Player2,CLERIC_DEER)
			Wait(3)
			EndCutSceneMode()
		  ~ EXIT
END

IF ~Global("WGnext","ARTOBR",2) Global("WGlast","ARTOBR",0)~ THEN BEGIN 10
	SAY ~...as will you...~
	IF ~ OR(5) Global("WGpos","ARTOBR",6)
			   Global("WGpos","ARTOBR",8)
			   Global("WGpos","ARTOBR",11)
			   Global("WGpos","ARTOBR",14)
			   Global("WGpos","ARTOBR",19) ~ THEN
		DO ~StartCutSceneMode()
		    SetGlobal("WGlast","ARTOBR",1)
		 	ActionOverride(Player3,SetDialog(""))
	    	ActionOverride(Player3,ChangeAIScript("",DEFAULT))
	      	ActionOverride(Player3,LeaveParty())
			ReallyForceSpell(Player3,CLERIC_DEER)
			Wait(3)
			EndCutSceneMode()
		  ~ EXIT
	IF ~ OR(4) Global("WGpos","ARTOBR",10)
			   Global("WGpos","ARTOBR",13)
			   Global("WGpos","ARTOBR",17)
			   Global("WGpos","ARTOBR",18)~ THEN
		DO ~StartCutSceneMode()
		    SetGlobal("WGlast","ARTOBR",1)
		 	ActionOverride(Player4,SetDialog(""))
	    	ActionOverride(Player4,ChangeAIScript("",DEFAULT))
	      	ActionOverride(Player4,LeaveParty())
			ReallyForceSpell(Player4,CLERIC_DEER)
			Wait(3)
			EndCutSceneMode()
		  ~ EXIT
	IF ~ Global("WGpos","ARTOBR",15) ~ THEN
		DO ~StartCutSceneMode()
		    SetGlobal("WGlast","ARTOBR",1)
		 	ActionOverride(Player5,SetDialog(""))
	    	ActionOverride(Player5,ChangeAIScript("",DEFAULT))
	      	ActionOverride(Player5,LeaveParty())
			ReallyForceSpell(Player5,CLERIC_DEER)
			Wait(3)
			EndCutSceneMode()
		  ~ EXIT
	IF ~ Global("WGpos","ARTOBR",16) Global("WGnum","ARTOBR",3) ~ THEN
		DO ~StartCutSceneMode()
		    SetGlobal("WGlast","ARTOBR",1)
		 	ActionOverride(Player5,SetDialog(""))
	    	ActionOverride(Player5,ChangeAIScript("",DEFAULT))
	      	ActionOverride(Player5,LeaveParty())
			ReallyForceSpell(Player5,CLERIC_DEER)
			Wait(3)
			EndCutSceneMode()
		  ~ EXIT
	IF ~ Global("WGpos","ARTOBR",15) Global("WGnum","ARTOBR",4)~ THEN
		DO ~StartCutSceneMode()
		    SetGlobal("WGlast","ARTOBR",1)
		 	ActionOverride(Player3,SetDialog(""))
	    	ActionOverride(Player3,ChangeAIScript("",DEFAULT))
	      	ActionOverride(Player3,LeaveParty())
			ReallyForceSpell(Player3,CLERIC_DEER)
			Wait(3)
			EndCutSceneMode()
		  ~ EXIT
END

IF ~Global("WGlast","ARTOBR",2) Global("WGcon","ARTOBR",0)~ THEN BEGIN 11
	SAY ~Why not all of you?~
	IF ~ Global("WGpos","ARTOBR",6) ~ THEN
		DO ~StartCutSceneMode()
		    SetGlobal("WGcon","ARTOBR",1)
		 	ActionOverride(Player4,SetDialog(""))
	    	ActionOverride(Player4,ChangeAIScript("",DEFAULT))
	      	ActionOverride(Player4,LeaveParty())
			ReallyForceSpell(Player4,CLERIC_DEER)
			Wait(3)
			EndCutSceneMode()
		  ~ EXIT
	IF ~OR(2) Global("WGpos","ARTOBR",8)
			  Global("WGpos","ARTOBR",10)~ THEN
	 	DO ~StartCutSceneMode()
		    SetGlobal("WGcon","ARTOBR",1)
		 	ActionOverride(Player5,SetDialog(""))
	    	ActionOverride(Player5,ChangeAIScript("",DEFAULT))
	      	ActionOverride(Player5,LeaveParty())
			ReallyForceSpell(Player5,CLERIC_DEER)
			Wait(3)
			EndCutSceneMode()
		  ~ EXIT
	IF ~OR(2) Global("WGpos","ARTOBR",13)
			  Global("WGpos","ARTOBR",15)~ THEN
		DO ~StartCutSceneMode()
		    SetGlobal("WGcon","ARTOBR",1)
			ActionOverride(Player6,SetDialog(""))
	    	ActionOverride(Player6,ChangeAIScript("",DEFAULT))
	      	ActionOverride(Player6,LeaveParty())
			ReallyForceSpell(Player6,CLERIC_DEER)
			Wait(3)
			EndCutSceneMode()
		  ~ EXIT
	IF ~Global("WGpos","ARTOBR",11) Global("WGnum","ARTOBR",3)~ THEN
		DO ~StartCutSceneMode()
		    SetGlobal("WGcon","ARTOBR",1)
			ActionOverride(Player6,SetDialog(""))
	    	ActionOverride(Player6,ChangeAIScript("",DEFAULT))
	      	ActionOverride(Player6,LeaveParty())
			ReallyForceSpell(Player6,CLERIC_DEER)
			Wait(3)
			EndCutSceneMode()
		  ~ EXIT
	IF ~Global("WGpos","ARTOBR",16) Global("WGnum","ARTOBR",3)~ THEN
		DO ~StartCutSceneMode()
		    SetGlobal("WGcon","ARTOBR",1)
			ActionOverride(Player6,SetDialog(""))
	    	ActionOverride(Player6,ChangeAIScript("",DEFAULT))
	      	ActionOverride(Player6,LeaveParty())
			ReallyForceSpell(Player6,CLERIC_DEER)
			Wait(3)
			EndCutSceneMode()
		  ~ EXIT 
	IF ~Global("WGpos","ARTOBR",11) Global("WGnum","ARTOBR",4)~ THEN
		DO ~StartCutSceneMode()
		    SetGlobal("WGcon","ARTOBR",1)
			ActionOverride(Player4,SetDialog(""))
	    	ActionOverride(Player4,ChangeAIScript("",DEFAULT))
	      	ActionOverride(Player4,LeaveParty())
			ReallyForceSpell(Player4,CLERIC_DEER)
			ActionOverride(Player5,SetDialog(""))
	    	ActionOverride(Player5,ChangeAIScript("",DEFAULT))
	      	ActionOverride(Player5,LeaveParty())
			ReallyForceSpell(Player5,CLERIC_DEER)
			Wait(3)
			EndCutSceneMode()
		  ~ EXIT   
	IF ~Global("WGpos","ARTOBR",14)~ THEN
		DO ~StartCutSceneMode()
		    SetGlobal("WGcon","ARTOBR",1)
			ActionOverride(Player4,SetDialog(""))
	    	ActionOverride(Player4,ChangeAIScript("",DEFAULT))
	      	ActionOverride(Player4,LeaveParty())
			ReallyForceSpell(Player4,CLERIC_DEER)
			ActionOverride(Player6,SetDialog(""))
	    	ActionOverride(Player6,ChangeAIScript("",DEFAULT))
	      	ActionOverride(Player6,LeaveParty())
			ReallyForceSpell(Player6,CLERIC_DEER)
			Wait(3)
			EndCutSceneMode()
		  ~ EXIT 
	IF ~OR(2) Global("WGpos","ARTOBR",17) 
			  Global("WGpos","ARTOBR",18)~ THEN
		DO ~StartCutSceneMode()
		    SetGlobal("WGcon","ARTOBR",1)
			ActionOverride(Player6,SetDialog(""))
	    	ActionOverride(Player6,ChangeAIScript("",DEFAULT))
	      	ActionOverride(Player6,LeaveParty())
			ReallyForceSpell(Player6,CLERIC_DEER)
			ActionOverride(Player5,SetDialog(""))
	    	ActionOverride(Player5,ChangeAIScript("",DEFAULT))
	      	ActionOverride(Player5,LeaveParty())
			ReallyForceSpell(Player5,CLERIC_DEER)
			Wait(3)
			EndCutSceneMode()
		  ~ EXIT 
	IF ~Global("WGpos","ARTOBR",16) Global("WGnum","ARTOBR",4)~ THEN
		DO ~StartCutSceneMode()
		    SetGlobal("WGcon","ARTOBR",1)
			ActionOverride(Player6,SetDialog(""))
	    	ActionOverride(Player6,ChangeAIScript("",DEFAULT))
	      	ActionOverride(Player6,LeaveParty())
			ReallyForceSpell(Player6,CLERIC_DEER)
			ActionOverride(Player5,SetDialog(""))
	    	ActionOverride(Player5,ChangeAIScript("",DEFAULT))
	      	ActionOverride(Player5,LeaveParty())
			ReallyForceSpell(Player5,CLERIC_DEER)
			Wait(3)
			EndCutSceneMode()
		  ~ EXIT 
	IF ~Global("WGpos","ARTOBR",19)~ THEN
		DO ~StartCutSceneMode()
		    SetGlobal("WGcon","ARTOBR",1)
   			ActionOverride(Player4,SetDialog(""))
	    	ActionOverride(Player4,ChangeAIScript("",DEFAULT))
	      	ActionOverride(Player4,LeaveParty())
			ReallyForceSpell(Player4,CLERIC_DEER)
			ActionOverride(Player6,SetDialog(""))
	    	ActionOverride(Player6,ChangeAIScript("",DEFAULT))
	      	ActionOverride(Player6,LeaveParty())
			ReallyForceSpell(Player6,CLERIC_DEER)
			ActionOverride(Player5,SetDialog(""))
	    	ActionOverride(Player5,ChangeAIScript("",DEFAULT))
	      	ActionOverride(Player5,LeaveParty())
			ReallyForceSpell(Player5,CLERIC_DEER)
			Wait(3)
			EndCutSceneMode()
		  ~ EXIT
END
		  
IF ~Global("WGcon","ARTOBR",2)~ THEN BEGIN 12
	SAY ~There.  Much better.~
	IF ~~ THEN REPLY ~Hey! What are you doing?!~ DO ~SetGlobal("WGcon","ARTOBR",3)~ GOTO 13
END

IF ~~ THEN BEGIN 13
	SAY ~Decorating.  This place needed a few handsome fellows.~
	IF ~~ THEN REPLY ~But I needed them more!  Return them to their rightful shapes at once!~ GOTO 14
	IF ~~ THEN REPLY ~You know, I kind of agree.  You may keep them.~ GOTO 15
	IF ~~ THEN REPLY ~Foul witch!  You'll pay for that!~ GOTO 16
END

IF ~~ THEN BEGIN 14
	SAY ~Oh, if you must be that way about it.  I'll turn them back, but you must do something for me in return.~
	IF ~~ THEN REPLY ~What is that?~ GOTO 17
	IF ~~ THEN REPLY ~I'll not deal with you!~ GOTO 16
	IF ~~ THEN REPLY ~Nevermind, you may keep them.~ GOTO 15
END

IF ~~ THEN BEGIN 15
	SAY ~Of course I may.  Now be gone and leave me to my pretties.~
	IF ~~ THEN DO ~SetGlobal("WGnomen","GLOBAL",2)~ JOURNAL ~The Witch of the Wealdath
	A strange woman in the Tethyr woods accosted my party and turned all the male members into deer.  I agreed that her "decorations" were better as deer than people, so let her keep them.~ EXIT
END

IF ~~ THEN BEGIN 16
	SAY ~You'll have to, if you want them back.  Only I can undo my decoration.~
	IF ~~ THEN REPLY ~I'd rather see you dead then have them back!~ DO ~Enemy()~ JOURNAL ~The Witch of the Wealdath
	A strange woman in the Tethry woods accosted my party and turned all the male members into deer.  I would not deal with such a creature and killed her.  But it seems my party members will remain as deer permanently.~ EXIT
	IF ~~ THEN REPLY ~Very well, witch.  What would you have me do?~ GOTO 17
END

IF ~~ THEN BEGIN 17
	SAY ~Oh let's see.  I think I would like a new necklace.  I saw such a pretty one the other day.  On a particularly plain priestess it was.~
	IF ~~ THEN REPLY ~Where can I find this priestess?~ GOTO 19
	IF ~~ THEN REPLY ~Would any other necklace do?~ GOTO 20
END

IF ~OR(2) Global("WGnomen","GLOBAL",3) PartyHasItem("WGneck")~ THEN BEGIN 17b
	SAY ~Ah!  It is so nice to see a few handsome bucks in the forest.~
	IF ~PartyHasItem("WGneck")~ THEN REPLY ~I have found the necklace for you.~ GOTO 24
	IF ~!PartyHasItem("WGneck")~ THEN REPLY ~I had your necklace, but I lost it.~ GOTO 25
END

IF ~Global("WGnomen","GLOBAL",2)~ THEN BEGIN 18
	SAY ~Leave me to my pretties.~
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 19
	SAY ~I don't know.  She was heading south.  Maybe look that direction.  She's probably pretty far away by now.~
	IF ~~ THEN REPLY ~How am I supposed to go hunting for her without my full party?~ GOTO 21
	IF ~~ THEN REPLY ~Alright, I'll start looking for her.~ GOTO 22
	IF ~~ THEN REPLY ~Would any other necklace do?~ GOTO 20
END

IF ~~ THEN BEGIN 20
	SAY ~Of course not.  Now bring me my necklace and you may have my pretties back.~
	IF ~~ THEN REPLY ~How am I supposed to go hunting for her without my full party?~ GOTO 21
	IF ~~ THEN REPLY ~Alright, I'll start looking for her.~ GOTO 22
END

IF ~~ THEN BEGIN 21
	SAY ~You'll find a way.  Or I'll keep my pretties.  One or the other.~
	IF ~~ THEN REPLY ~Alright, I'll start looking for her.~ GOTO 22
END

IF ~~ THEN BEGIN 22
	SAY ~Oh good!  But don't come back too soon; I'd like to enjoy my new decorations as long as possible.~
	IF ~~ THEN DO ~SetGlobal("WGnomen","GLOBAL",2) 
					RevealAreaOnMap("AR6400")~
					UNSOLVED_JOURNAL %The Witch of the Wealdath
A strange woman in the Tethyr woods accosted my party and turned all the male members into deer.  She agreed to turn them back into people if I get her a necklace from a priestess south of here.% EXIT
END  



IF ~~ THEN BEGIN 24
	SAY ~So soon?  Oh well.  Give it to me and you will have your friends returned.~
	IF ~~ THEN DO ~ StartCutSceneMode()
				    TakePartyItem("WGneck")
      				DestroyItem("WGneck")
      				AddexperienceParty(30000)
					SetGlobal("WGnomen","GLOBAL",4)
					SetGlobal("WGback","ARTOBR",1)
				    EraseJournalEntry(%The Witch of the Wealdath
A strange woman in the Tethyr woods accosted my party and turned all the male members into deer.  She agreed to turn them back into people if I get her a necklace from a priestess south of here.%)
				    EndCutSceneMode()~ EXIT
END

IF ~~ THEN BEGIN 25
	SAY ~Oh, I get to keep my pretties!  Be gone and let me enjoy them!~
	IF ~~ THEN DO ~SetGlobal("WGnomen","GLOBAL",5) 
								EraseJournalEntry(%The Witch of the Wealdath
	A strange woman in the Tethyr woods accosted my party and turned all the male members into deer.  She agreed to turn them back into people if I get her a necklace from a priestess south of here.%)
	     ~ EXIT
END 

IF ~Global("WGnomen","GLOBAL",4)~ THEN BEGIN 26
	SAY ~Be gone.  You have my pretties and I don't want to speak to you.~
	IF ~~ THEN EXIT
END

IF ~Global("WGnomen","GLOBAL",5)~ THEN BEGIN 27
  SAY ~Be gone and let me enjoy my pretties!~
  IF ~~ THEN EXIT
END
    
