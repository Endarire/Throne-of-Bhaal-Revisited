ADD_TRANS_TRIGGER GROMNIR 7 ~False()~ DO
	EXTEND_BOTTOM GROMNIR 7
	IF ~CheckStatGT(Player1,14,CHR)~ THEN REPLY ~Wait!  Let us talk about this!~ GOTO 0a
	IF ~!CheckStatGT(Player1,14,CHR)~ THEN REPLY ~Wait!  Let us talk about this!~ GOTO 1a	
	IF ~CheckStatGT(Player1,10,CHR)~ THEN REPLY ~I have a vital secret.  If you kill me you'll never learn it.~ GOTO 2a
	IF ~!CheckStatGT(Player1,10,CHR)~ THEN REPLY ~I have a vital secret.  If you kill me you'll never learn it.~ GOTO 1a	
	IF ~~ THEN REPLY ~I think you'll find I'm the one having the fun.~ 
		   DO ~ClearAllActions() StartCutSceneMode() StartCutScene("cutgre") ~ SOLVED_JOURNAL #65062 EXIT
	END

APPEND ~GROMNIR~

IF ~~ THEN BEGIN 0a
	SAY ~What?  No talk!  Gromnir knows your tricks.~
	IF ~~ THEN REPLY ~No tricks.  I just want to talk about Saradush.~ GOTO 3a
	IF ~~ THEN REPLY ~Not even to talk about Yaga Shura?~ GOTO 4a
	IF ~CheckStatGT(Player1,16,CHR)~ THEN REPLY ~I want to talk about the real trickster, Melissan.~ GOTO 5a
	IF ~!CheckStatGT(Player1,16,CHR)~ THEN REPLY ~I want to talk about the real trickster, Melissan.~ GOTO 6a
	IF ~~ THEN REPLY ~I'd like to know more about Gromnir, if I could.~ GOTO 7a
END

IF ~~ THEN BEGIN 1a
	SAY ~Enough talk!  <CHARNAME> die now!~
	IF ~~ THEN 		   
		DO ~ClearAllActions() StartCutSceneMode() StartCutScene("cutgre")~ SOLVED_JOURNAL #65062 EXIT
END

IF ~~ THEN BEGIN 2a
	SAY ~Secret, eh.  Tell Gromnir, what kind of a secret so good you don't get killed?~
	IF ~~ THEN REPLY ~It's a secret about Yaga Shura.~ GOTO 8a
	IF ~CheckStatGT(Player1,14,CHR)~ THEN REPLY ~A secret about Melissan would be good, don't you think?~ GOTO 9a
	IF ~!CheckStatGT(Player1,14,CHR)~ THEN REPLY ~A secret about Melissan would be good, don't you think?~ GOTO 6a
	IF ~CheckStatGT(Player1,12,CHR)~ THEN REPLY ~I know a secret about you.~ GOTO 10a
	IF ~!CheckStatGT(Player1,12,CHR)~ THEN REPLY ~I know a secret about you.~ GOTO 11a
	IF ~CheckStatGT(Player1,12,CHR)~ THEN REPLY ~You don't know everything about me.~ GOTO 12a
	IF ~!CheckStatGT(Player1,12,CHR)~ THEN REPLY ~You don't know everything about me.~ GOTO 13a
END

IF ~~ THEN BEGIN 3a
	SAY ~Saradush?  Saradush is nothing!  Saradush is a trap for rats!~
	IF ~~ THEN GOTO 1a
END

IF ~~ THEN BEGIN 4a
	SAY ~*hmph*  What talk do you have about Yaga Shura?~
	IF ~CheckStatGT(Player1,14,CHR)~ THEN REPLY ~You are a powerful man, Gromnir.  How has Yaga Shura survived against you all this time?~ GOTO 14a
	IF ~!CheckStatGT(Player1,14,CHR)~ THEN REPLY ~You are a powerful man, Gromnir.  How has Yaga Shura survived against you all this time?~ GOTO 15a
	IF ~~ THEN REPLY ~He is a threat to us both.  If I were to kill him for you, would you trust me any more?~ DO ~SetGlobal("WGkillys","GLOBAL",1)~ GOTO 16a
	IF ~CheckStatGT(Player1,16,CHR)  !CheckStatGT(Player1,18,CHR)~ THEN REPLY ~He is a threat.  If I were to kill him for you, would you help defend this town?~ GOTO 28a
	IF ~OR(2) CheckStatGT(Player1,18,STR) CheckStatGT(Player1,18,CHR)~ THEN REPLY ~He is a threat to Saradush.  If I were to kill him for you, would you help defend this town?~ DO ~SetGlobal("WGhelps","GLOBAL",1)~GOTO 16a
	IF ~!CheckStatGT(Player1,16,CHR) !CheckStatGT(Player1,18,STR)~ THEN REPLY ~He is a threat to Saradush.  If I were to kill him for you, would you help defend this town?~ GOTO 15a
END

IF ~~ THEN BEGIN 5a
	SAY ~Watch your words, tricky one.  Gromnir knows you are working for Melissan.~
	IF ~CheckStatGT(Player1,14,WIS)~ THEN REPLY ~I would not work for her.  My heart tells me she is false.~ DO ~SetGlobal("WGhuntm","GLOBAL",1)~ GOTO 17a 
	IF ~!CheckStatGT(Player1,14,WIS)~ THEN REPLY ~She only wants what is best for the Bhaalspawn.~ GOTO 6a
	IF ~CheckStatGT(Player1,16,INT)~ THEN REPLY ~She will not manipulate me.  I see that she is trying to turn Bhaalspawn against Bhaalspawn.~ DO ~SetGlobal("WGhuntm","GLOBAL",1)~ GOTO 18a
	IF ~!CheckStatGT(Player1,16,INT)~ THEN REPLY ~I do not know what Melissan's goals, but I know they are not mine.~ GOTO 6a
	IF ~~ THEN REPLY ~Then you also know she wants us to fight.  And for one of us to die.~ DO ~SetGlobal("WGhuntm","GLOBAL",1)~ GOTO 18a
END

IF ~~ THEN BEGIN 6a
	SAY ~False words, <CHARNAME>!  False like a friend of Melissan!~
	IF ~~ THEN GOTO 1a
END

IF ~~ THEN BEGIN 7a
	SAY ~Gromnir is strong and Gromnir can see tricks.  You do not need to know more about Gromnir.~
	IF ~CheckStatGT(Player1,14,WIS)~ THEN REPLY ~But Gromnir is also paranoid.  You see tricks where there are none and do not trust your strength to save you.~ GOTO 20a
	IF ~!CheckStatGT(Player1,14,WIS)~ THEN REPLY ~I also know that you've lost your mind.~ GOTO 11a
	IF ~~ THEN REPLY ~Gromnir is strong, but he saps the strength of Saradush.  While you hide, Yaga Shura is at the gates.~ GOTO 4a
END
	
IF ~~ THEN BEGIN 8a
	SAY ~What secrets you know about Yaga Shura?~
	IF ~Global("WGgdeal","GLOBAL",1)~ THEN REPLY ~He has asked me to kill you, Gromnir.  But I would rather side with you.~ GOTO 21a
	IF ~Global("WGgdeal","GLOBAL",1)~ THEN REPLY ~I'm going to kill you for him.  Now.~ DO ~SetGlobal("WGgdeal","GLOBAL",2)~ GOTO 1a
	IF ~Global("WGmirtold","GLOBAL",1)~ THEN REPLY ~A paladin on the city walls told me he is invincible.  That no matter how hard his is hit he does not fall.~ GOTO 14a
	IF ~CheckStatGT(Player1,12,CHR)~ THEN REPLY ~He wants you dead, Gromnir.  And he'll tear down Saradush to get to you.~ GOTO 22a
	IF ~!CheckStatGT(Player1,12,CHR)~ THEN REPLY ~He wants you dead, Gromnir.  And he'll tear down Saradush to get to you.~ GOTO 15a
	IF ~~ THEN REPLY ~He is building a tunnel into the city.  It has collapsed many times, but eventually it will hold.~ GOTO 23a
END

IF ~~ THEN BEGIN 9a
	SAY ~Watch your words, tricky one.  Gromnir knows you are working for Melissan.~
	IF ~CheckStatGT(Player1,14,WIS)~ THEN REPLY ~I would not work for her.  My heart tells me she is false.~ DO ~SetGlobal("WGhuntm","GLOBAL",1)~ GOTO 17a 
	IF ~!CheckStatGT(Player1,14,WIS)~ THEN REPLY ~She only wants what is best for the Bhaalspawn.~ GOTO 6a
	IF ~CheckStatGT(Player1,16,INT)~ THEN REPLY ~She will not manipulate me.  I see that she is trying to turn Bhaalspawn against Bhaalspawn.~ DO ~SetGlobal("WGhuntm","GLOBAL",1)~ GOTO 18a
	IF ~!CheckStatGT(Player1,16,INT)~ THEN REPLY ~I do not know what Melissan's goals, but I know they are not mine.~ GOTO 6a
	IF ~CheckStatGT(Player1,18,STR)~ THEN REPLY ~Then you also know she wants us to fight.  And for one of us to die.~ DO ~SetGlobal("WGhuntm","GLOBAL",1)~ GOTO 18a
	IF ~!CheckStatGT(Player1,18,STR)~ THEN REPLY ~Then you also know she wants us to fight.  And for one of us to die.~ GOTO 6a
END
	
IF ~~ THEN BEGIN 10a
	SAY ~Gromnir is strong and Gromnir can see tricks.  You do not know more about Gromnir.~
	IF ~CheckStatGT(Player1,14,CHR)~  THEN REPLY ~I know that Melissan has been trying to deceive you, Gromnir.~ GOTO 9a
	IF ~!CheckStatGT(Player1,14,CHR)~ THEN REPLY ~I know that Melissan has been trying to deceive you, Gromnir.~ GOTO 6a
	IF ~~ THEN REPLY ~I also know that you've lost your mind.~ GOTO 11a
	IF ~CheckStatGT(Player1,12,INT)~ THEN REPLY ~Gromnir is strong, but he saps the strength of Saradush.  While you hide, Yaga Shura is at the gates.~ GOTO 4a
	IF ~!CheckStatGT(Player1,12,INT)~ THEN REPLY ~Gromnir is strong, but he saps the strength of Saradush.  While you hide, Yaga Shura is at the gates.~ GOTO 15a
END

IF ~~ THEN BEGIN 11a
	SAY ~HAHaha!  No!  You know nothing of Gromnir!~
	IF ~~ THEN GOTO 1a
END

IF ~~ THEN BEGIN 12a
	SAY ~What about puny <CHARNAME> could interest Gromnir?~
	IF ~~ THEN REPLY ~I got into Saradush through a tunnel to the sewers.  A tunnel built by Yaga Shura's men.~ GOTO 23a
END

IF ~~ THEN BEGIN 13a
	SAY ~Nothing about puny <CHARNAME> interests Gromnir!~
	IF ~~ THEN GOTO 1a
END

IF ~~ THEN BEGIN 14a
	SAY ~At first Gromnir stood at the walls and fought Yaga Shura.  But his arrow wounds healed and burns disappeared.  Now Gromnir is smart and will wait out the siege in the castle.~
	IF ~~ THEN REPLY ~He is a threat to us both.  If I were to kill him for you, would you trust me any more?~ ~SetGlobal("WGkillys","GLOBAL",1)~ GOTO 16a
	IF ~CheckStatGT(Player1,16,CHR)  !CheckStatGT(Player1,18,CHR)~ THEN REPLY ~He is a threat to Saradush.  If I were to kill him for you, would you help defend this town?~ GOTO 28a
	IF ~OR(2) CheckStatGT(Player1,18,STR) CheckStatGT(Player1,18,CHR)~ THEN REPLY ~He is a threat to Saradush.  If I were to kill him for you, would you help defend this town?~ DO ~SetGlobal("WGhelps","GLOBAL",1)~ GOTO 16a
	IF ~!CheckStatGT(Player1,16,CHR) !CheckStatGT(Player1,18,STR)~ THEN REPLY ~He is a threat to Saradush.  If I were to kill him for you, would you help defend this town?~ GOTO 15a
END

IF ~~ THEN BEGIN 15a
	SAY ~HAHaha!  You know something about Yaga Shura?  Gromnir has fought him longer and knows more!~
	IF ~~ THEN GOTO 1a
END

IF ~~ THEN BEGIN 16a
	SAY ~Kill Yaga Shura?  HAHaha!  You do that and you please Gromnir!~
	IF ~~ THEN GOTO 19a  
END

IF ~~ THEN BEGIN 17a
	SAY ~HAHaha!  You are wise <MANWOMAN>, <CHARNAME>!~
	IF ~~ THEN GOTO 19a
END

IF ~~ THEN BEGIN 18a
	SAY ~HAHaha!  Smart <MANWOMAN>, <CHARNAME>!~
	IF ~~ THEN GOTO 19a
END

IF ~~ THEN BEGIN 19a
	SAY ~... Good talk, <CHARNAME>.  Gromnir will let you live... for now.  But next we must...~
	IF ~~ THEN DO ~	ClearAllActions()
		StartCutSceneMode()
		SetGlobal("WGglive","GLOBAL",1)
		SetGlobal("MelissanJob","GLOBAL",2)
		CreateCreatureObjectEffect("MEL01","SPFLESHS",Player1)
		Wait(1)
		PlaySong(79)
		ActionOverride("mel01",StartDialogueNoSet(Player1))
		EndCutSceneMode()~ EXIT
END

IF ~~ THEN BEGIN 20a
	SAY ~Hmph.  What does <CHARNAME> know about things?  Nothing!~
	IF ~~ THEN REPLY ~I know that Yaga Shura is a threat to us both.  If I were to kill him for you, would you trust me any more?~ DO ~SetGlobal("WGkillys","GLOBAL",1)~ GOTO 16a
	IF ~CheckStatGT(Player1,16,CHR)  !CheckStatGT(Player1,18,CHR)~ THEN REPLY ~He is a threat to Saradush.  If I were to kill him for you, would you help defend this town?~ GOTO 28a
	IF ~!CheckStatGT(Player1,16,CHR) !CheckStatGT(Player1,18,STR)~ THEN REPLY ~He is a threat to Saradush.  If I were to kill him for you, would you help defend this town?~ GOTO 15a
	IF ~OR(2) CheckStatGT(Player1,18,STR) CheckStatGT(Player1,18,CHR)~ THEN REPLY ~He is a threat to Saradush.  If I were to kill him for you, would you help defend this town?~ DO ~SetGlobal("WGhelps","GLOBAL",1)~ GOTO 16a
 	IF ~CheckStatGT(Player1,14,CHR)~  THEN REPLY ~I know that Melissan has been trying to deceive you, Gromnir.~ GOTO 9a
	IF ~!CheckStatGT(Player1,14,CHR)~ THEN REPLY ~I know that Melissan has been trying to deceive you, Gromnir.~ GOTO 6a
END

IF ~~ THEN BEGIN 21a
	SAY ~HAHaha!  You see Gromnir's strength and you leave Yaga Shura!  But Gromnir not trust you.~
	IF ~~ THEN REPLY ~Yaga Shura is a threat to us both.  If I were to kill him for you, would you trust me any more?~ DO ~SetGlobal("WGkillys","GLOBAL",1)~ GOTO 16a
	IF ~CheckStatGT(Player1,16,CHR)  !CheckStatGT(Player1,18,CHR)~ THEN REPLY ~He is a threat to Saradush.  If I were to kill him for you, would you help defend this town?~ GOTO 28a
	IF ~!CheckStatGT(Player1,16,CHR)~ THEN REPLY ~He is a threat to Saradush.  If I were to kill him for you, would you help defend this town?~ GOTO 15a
	IF ~OR(2) CheckStatGT(Player1,18,STR) CheckStatGT(Player1,18,CHR)~ THEN REPLY ~He is a threat to Saradush.  If I were to kill him for you, would you help defend this town?~ DO ~SetGlobal("WGhelps","GLOBAL",1)~ GOTO 16a
END

IF ~~ THEN BEGIN 22a
	SAY ~HAHaha!  That no secret!  Why do you think Gromnir is in safe castle, hmm?~
	IF ~~ THEN REPLY ~Yaga Shura is a threat to us both.  If I were to kill him for you, would you trust me any more?~ DO ~SetGlobal("WGkillys","GLOBAL",1)~ GOTO 16a
	IF ~CheckStatGT(Player1,16,CHR)  !CheckStatGT(Player1,18,CHR)~ THEN REPLY ~He is a threat to Saradush.  If I were to kill him for you, would you help defend this town?~ GOTO 28a
	IF ~!CheckStatGT(Player1,16,CHR) !CheckStatGT(Player1,18,STR)~ THEN REPLY ~He is a threat to Saradush.  If I were to kill him for you, would you help defend this town?~ GOTO 15a
	IF ~OR(2) CheckStatGT(Player1,18,STR) CheckStatGT(Player1,18,CHR)~ THEN REPLY ~He is a threat to Saradush.  If I were to kill him for you, would you help defend this town?~ DO ~SetGlobal("WGhelps","GLOBAL",1)~ GOTO 16a
END

IF ~~ THEN BEGIN 23a
	SAY ~Ha!  Yaga Shura is sneaky schemer!  He goes underground to destroy Gromnir!~
	IF ~~ THEN REPLY ~Yaga Shura is a threat to us both.  If I were to kill him for you, would you trust me any more?~ DO ~SetGlobal("WGkillys","GLOBAL",1)~ GOTO 16a
	IF ~CheckStatGT(Player1,16,CHR)  !CheckStatGT(Player1,18,CHR)~ THEN REPLY ~He is a threat to Saradush.  If I were to kill him for you, would you help defend this town?~ GOTO 28a
	IF ~!CheckStatGT(Player1,16,CHR) !CheckStatGT(Player1,18,STR)~ THEN REPLY ~He is a threat to Saradush.  If I were to kill him for you, would you help defend this town?~ GOTO 15a
	IF ~OR(2) CheckStatGT(Player1,18,STR) CheckStatGT(Player1,18,CHR)~ THEN REPLY ~He is a threat to Saradush.  If I were to kill him for you, would you help defend this town?~ DO ~SetGlobal("WGhelps","GLOBAL",1)~ GOTO 16a
END

IF ~Global("WGglive","GLOBAL",4)~ THEN BEGIN 24a
	SAY ~Go now!  Kill Yaga Shura! Gromnir has nothing more to say until <CHARNAME> does this.~
	IF ~~ THEN REPLY ~I will go, then.~ EXIT
	IF ~Global("WGgdeal","GLOBAL",1)~ THEN REPLY ~Nothing personal, but I think I'd rather kill you.~ DO ~SetGlobal("WGgdeal","GLOBAL",2)~ GOTO 33a
	IF ~Global("WGgdeal","GLOBAL",1)~ THEN REPLY ~Actually, Yaga Shura has asked me to kill you.~ GOTO 34a
END

IF ~Global("WGglive","GLOBAL",3) Global("WGhuntm","GLOBAL",1)~ THEN BEGIN 26a
	SAY ~Slippery Melissan!  ARRRGGH!  Stay and fight!  Stay and die!  No more lies for you!~
	IF ~~ THEN DO ~SetGlobal("WGglive","GLOBAL",4)~ GOTO 27a
END

IF ~Global("WGglive","GLOBAL",3) !Global("WGhuntm","GLOBAL",1)~ THEN BEGIN 26b
	SAY ~NO!  Melissan will not go so easily!~
	IF ~~ THEN DO ~SetGlobal("WGglive","GLOBAL",4)~ GOTO 27a
END

IF ~~ THEN BEGIN 27a
	SAY ~Slippery Melissan is gone.  But if she comes back, Gromnir will be ready.  Go now, <CHARNAME>.  Live up to big words and kill Yaga Shura.~
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 28a
	SAY ~Gromnir does not risk his life for a rat trap so easily.  But the clink of gold coins helps Gromnir decide.~
	IF ~CheckStatGT(Player1,18,STR)~ THEN REPLY ~You will defend the city or I will make you defend it!~ GOTO 29a
	IF ~!CheckStatGT(Player1,18,STR)~ THEN REPLY ~You will defend the city or I will make you defend it!~ GOTO 32a
	IF ~!PartyGoldGT(2000)~ THEN REPLY ~I am not rich, but you can take all the gold I have.~ GOTO 30a
	IF ~PartyGoldGT(2000)~ THEN REPLY ~Would 2000 gold fill your money lust?~ GOTO 30a
	IF ~PartyGoldGT(7000)~ THEN REPLY ~I happen to have 7000 gold clinking right here.~ GOTO 31a 
END

IF ~~ THEN BEGIN 29a
	SAY ~<CHARNAME> has the strong arms to back up <PRO_HISHER> claim.  Gromnir will help Saradush if Yaga Shura is dead.~
	IF ~~ THEN  DO ~SetGlobal("WGhelps","GLOBAL",1)~ GOTO 19a
END

IF ~~ THEN BEGIN 30a
	SAY ~HAhaha!  <CHARNAME> is funny joker.  Gromnir will not listen to so little money.~
	IF ~~ THEN GOTO 1a
END

IF ~~ THEN BEGIN 31a
	SAY ~HAhaha!  This is enough.  You give gold now and Gromnir will protect Saradush and wait for <CHARNAME> to return.~
	IF ~~ THEN DO ~TakePartyGold(7000) SetGlobal("WGhelps","GLOBAL",1)~ GOTO 19a
END
	
IF ~~ THEN BEGIN 32a
	SAY~<CHARNAME> is puny weakling!  Gromnir will not listen to puny threats!~ 
	IF ~~ THEN GOTO 1a
END
	
IF ~~ THEN BEGIN 33a
	SAY ~HAha!  <CHARNAME> is traitorous toad!  Gromnir will enjoy killing you!~
	IF ~~ THEN DO ~ClearAllActions() SetGlobal("DeathOfGromnir","GLOBAL",1) SetGlobal("WGgdeal","GLOBAL",2) StartCutSceneMode() StartCutScene("cutgre")~ EXIT
END

IF ~~ THEN BEGIN 34a
	SAY ~Why does <CHARNAME> tell Gromnir this?~
	IF ~CheckStatGT(Player1,18,STR)~ THEN REPLY ~I want a great deal of gold.  And a magic item.  Or else you die.~ GOTO 35a
	IF ~!CheckStatGT(Player1,18,STR)~ THEN REPLY ~I want a great deal of gold.  And a magic item.  Or else you die.~ GOTO 36a
	IF ~~ THEN REPLY ~I just thought you should know Yaga Shura's intentions.~ GOTO 37a
	IF ~~ THEN REPLY ~I like to fuel paranoia.~ GOTO 37a
END
	
IF ~~ THEN BEGIN 35a
	SAY ~<CHARNAME> is traitorous toad.  Very well.  Gromnir will give gold and magic morning star to <CHARNAME>.~
	IF ~CheckStatGT(Player1,18,CHR)~ THEN REPLY ~Not that one.  The glowing morning star.~ GOTO 38a
	IF ~!CheckStatGT(Player1,18,CHR)~ THEN REPLY ~Not that one.  The glowing morning star.~ GOTO 39a
	IF ~~ THEN REPLY ~It's a pleasure doing business with you.~ DO ~GiveGoldForce(10000) GiveItem("BLUN34",Player1)~ EXIT
	IF ~~ THEN REPLY ~Not enough, fool.  I'll kill you instead.~ GOTO 36a
END

IF ~~ THEN BEGIN 36a
	SAY ~HA!  <CHARNAME> is puny weakling!  Gromnir has no fear of <CHARNAME>!~
	IF ~~ THEN DO ~SetGlobal("WGgdeal","GLOBAL",2) SetGlobal("DeathOfGromnir","GLOBAL",1)~ GOTO 1a
END

IF ~~ THEN BEGIN 37a
	SAY ~<CHARNAME> is traitorous toad.  Gromnir will be watching <CHARNAME>.~
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 38a
	SAY ~Very well.  Gromnir's Ice Star.~ 
	IF ~~ THEN DO ~GiveGoldForce(10000) GiveItem("BLUN35",Player1)~ EXIT
END

IF ~~ THEN BEGIN 39a
	SAY ~No!  <CHARNAME> demands too much!~
	IF ~~ THEN DO ~SetGlobal("WGgdeal","GLOBAL",2) SetGlobal("DeathOfGromnir","GLOBAL",1)~ GOTO 1a
END

END