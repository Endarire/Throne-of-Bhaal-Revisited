/*

ADD_TRANS_TRIGGER SARMEL01 54 ~False()~ DO
	EXTEND_BOTTOM SARMEL01 54
		IF ~~ THEN DO ~StartCutSceneMode()
			    RevealAreaOnMap("AR5200")
				RevealAreaOnMap("AR5202")
				SetGlobal("MelissanYagaKillJob","GLOBAL",1)
				CreateVisualEffectObject("SPDIMNDR",Myself)
				EndCutSceneMode()
				DestroySelf()~ 
		UNSOLVED_JOURNAL #65769 EXIT
	END
	*/

APPEND ~SARMEL01~

IF ~Global("WGglive","GLOBAL",1)~ THEN BEGIN 0a
  SAY ~Gromnir!  <CHARNAME>!  Lay aside your weapons!  We must work together to...~
  IF ~~ THEN REPLY ~Yes?  We were in the middle of a conversation.~ 
  			 DO ~EraseJournalEntry(73961) EraseJournalEntry(73957) SetGlobal("WGglive","GLOBAL",2)
			    ~ EXTERN GROMNIR 24a
  IF ~~ THEN REPLY ~What were you expecting?  A bloodbath?~ 
  			 DO ~EraseJournalEntry(73961) EraseJournalEntry(73957) SetGlobal("WGglive","GLOBAL",2)
                ~ EXTERN GROMNIR 24a
  IF ~~ THEN REPLY ~Don't worry, Melissan.  Gromnir and I have reached an understanding.~
  			 DO ~EraseJournalEntry(73961) EraseJournalEntry(73957) SetGlobal("WGglive","GLOBAL",2)
                ~ EXTERN GROMNIR 24a
END

IF ~~ THEN BEGIN 2a
	SAY ~Ah... Do not blame your guards, Gromnir.  I am not without my own resources, and I escaped as soon as I could.  I feared blood would be shed without my negotiation.~
	IF ~Global("WGhelps","GLOBAL",1)~ THEN REPLY ~No fear of that, Melissan.  We have agreed to unite in defense of Saradush after I stop Yaga Shura.~ EXTERN GROMNIR 25a
	IF ~Global("WGkillys","GLOBAL",1)~ THEN REPLY ~I admit Gromnir may not fully trust me, but killing Yaga Shura should fix that.~ EXTERN GROMNIR 25a
	IF ~Global("WGhuntm","GLOBAL",1)~ THEN REPLY ~Right.  You did not expect us to get along, did you?  Quite the opposite.~ GOTO 4a
END

IF ~~ THEN BEGIN 3a
	SAY ~Melissan is pleased that you have seen reason, Gromnir.  But stopping Yaga Shura...~  
	IF ~~ THEN GOTO 45
END

IF ~~ THEN BEGIN 4a
	SAY ~I thought the chance of peaceful resolution was slight, yes.  But you have shown me how wrong I was.~
	IF ~~ THEN REPLY ~Enough.  Gromnir does not believe in your good intentions, nor do I.~ EXTERN GROMNIR 28a
	IF ~~ THEN REPLY ~Yes indeed.  Gromnir and I are now good friends.~ EXTERN GROMNIR 28a
END

IF ~~ THEN BEGIN 5a
	SAY ~... I can see when I am beaten, <CHARNAME>.  Very well, the truth.~
	IF ~~ THEN GOTO 6a
END

IF ~~ THEN BEGIN 6a
	SAY ~The siege has struck fear in all our hearts.  I brought the Bhaalspawn here to be protected, and then Yaga Shura came and... well, I thought... that by sacrificing a few I could save many.~
	IF ~~ THEN GOTO 7a
END

IF ~~ THEN BEGIN 7a
	SAY ~The Maid of Misfortune is fickle, but can be pleased by blood.  Through your death perhaps our luck would turn, and Yaga Shura's army would be defeated.~
	IF ~~ THEN GOTO 7b
END

IF ~~ THEN BEGIN 7b
	SAY ~Please understand I did not want it to come to this!  In my desperation I would do anything to help Saradush!~
	IF ~~ THEN EXTERN GROMNIR 29a
END     
	
	/*
IF ~~ THEN BEGIN 6a
	SAY ~The chaos that follows the Bhaalspawn opens many opportunities for others.  I follow the Lord of War, and every time a Bhaalspawn kills another in battle Garagos's power grows.~
	IF ~~ THEN GOTO 7a
END

IF ~~ THEN BEGIN 7a
	SAY ~I wanted you to fight as I relish all killing.  But a siege is not a battle, <CHARNAME>.  It must be stopped.~
	IF ~~ THEN EXTERN GROMNIR 29a
END

*/

IF ~~ THEN BEGIN 8a
	SAY ~So, <CHARNAME>, now that you know the truth, what say you?~
	IF ~CheckStatGT(Player1,14,WIS)~ THEN REPLY ~I still don't think you have told us the full truth, Melissan.~ GOTO 9a
	IF ~~ THEN REPLY ~I say you don't deserve to live.~ GOTO 10a
	IF ~~ THEN REPLY ~We both want this siege ended.  You could help us instead of pitting us against each other.~ GOTO 11a
END

IF ~~ THEN BEGIN 9a
	SAY ~Perhaps not.  But I have told enough of it, and still we must end this siege and destroy Yaga Shura.~
	IF ~~ THEN GOTO 43
END

IF ~~ THEN BEGIN 10a
	SAY ~That may be, but you need me now.  We both want this siege to end and you'll not be able to do that without my knowledge of Yaga Shura.~
	IF ~~ THEN GOTO 46
END

IF ~~ THEN BEGIN 11a
	SAY ~Agreed.  I will tell you what I know of Yaga Shura and you will act on it.~
	IF ~~ THEN GOTO 46
END

END

APPEND ~GROMNIR~


IF ~~ THEN BEGIN 24a
	SAY ~Melissan!  Gromnir warned his guards to watch you.  Next time it is easier just to kill you.~
	IF ~~ THEN EXTERN SARMEL01 2a
END

IF ~~ THEN BEGIN 25a
	SAY ~Yes, Gromnir and <CHARNAME> have a deal.  What say sneaky Melissan to that?~
	IF ~~ THEN EXTERN SARMEL01 3a
END

IF ~~ THEN BEGIN 28a
	SAY ~<CHARNAME> sees through your lies, Melissan.  Same as Gromnir.  Melissan will not be leaving this place alive, Gromnir thinks.~
	IF ~~ THEN REPLY ~Hold your sword, Gromnir.  Let's see what she has to say for herself.~ EXTERN SARMEL01 5a
END

IF ~~ THEN BEGIN 29a
	SAY ~HA ha!  Gromnir knew you had tricks, Melissan!~
	IF ~~ THEN EXTERN SARMEL01 8a
END

END
