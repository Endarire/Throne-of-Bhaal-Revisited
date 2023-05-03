BEGIN ~WGCLERIC~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
	SAY ~Thank you, stranger.  I do not know how long I would have lasted without your assistance.~
	IF ~~ THEN REPLY ~No thanks are necessary.  How did you come to be in this dangerous glade?~ GOTO 1
	IF ~~ THEN REPLY ~Why did you come here if you couldn't handle it?~ GOTO 1
	IF ~~ THEN REPLY ~I'm not saving you; I'm killing you.~ GOTO 2
	IF ~Global("WGnomen","GLOBAL",2)~ THEN REPLY ~Actually, there is a way you can repay me.  May I have your necklace?~ GOTO 16
END

IF ~~ THEN BEGIN 1
	SAY ~In truth, I did not come here wholly prepared.  I was... fleeing... a place farther east of here.~ 
	IF ~~ THEN REPLY ~What were you fleeing?~ GOTO 3
	IF ~~ THEN REPLY ~A coward, eh?  I'd be able to best whatever frightened you.~ GOTO 4
	IF ~~ THEN REPLY ~Can you tell me about this place?~ GOTO 5
END

IF ~~ THEN BEGIN 2
	SAY ~Kelemvor, I shall join you soon!~
	IF ~~ THEN DO ~SetGlobal("WGCarinDie","AR6400",1) Enemy()~ EXIT
END

IF ~~ THEN BEGIN 3
	SAY ~An apparition.  A vision of the wrongs I have done and the souls I have hurt.  As a priestess of Kelemvor I have faced many things, but never have I been so distraught by the dead.~
	IF ~~ THEN REPLY ~A coward, eh?  I'd be able to best whatever frightened you.~ GOTO 4
	IF ~~ THEN REPLY ~Can you tell me about this place farther east?~ GOTO 5
	IF ~~ THEN REPLY ~Could the wrongs of a priestess of Kelemvor truly be that disturbing?~ GOTO 6
	IF ~~ THEN REPLY ~Your wrongs are so great?  Then I will not suffer you to live.~ GOTO 2
END

IF ~~ THEN BEGIN 4
	SAY ~Then you have a strength of mind much greater than mine.  It was not my life but my heart which was threatened.~
		IF ~~ THEN REPLY ~What was it exactly that was threatening you?~ GOTO 3
		IF ~~ THEN REPLY ~What wrongs could be so great that you would flee into such a dangerous place?~ GOTO 6
		IF ~~ THEN REPLY ~Can you tell me about this place further east?~ GOTO 5
END 

IF ~~ THEN BEGIN 5
	SAY ~It is a ruined Temple of Bhaal.  When he died, so did his followers.  But many of them have risen, and this is an abomination to Kelemvor.  I came to this place to cleanse it.~
	IF ~~ THEN REPLY ~I could go cleanse it for you, if you would have me do so.~ GOTO 7
	IF ~~ THEN REPLY ~So you forsake your duty in fear.  I would not do the same.~ GOTO 4
	IF ~~ THEN REPLY ~What exactly were you fleeing?~ GOTO 3
END

IF ~~ THEN BEGIN 6
	SAY ~No.  Yes.  I am not sure.  I have tried to live a balanced life, but the things the apparition spoke of...~
	IF ~~ THEN REPLY ~I could go cleanse the temple for you, if you would have me do so.~ GOTO 7
	IF ~~ THEN REPLY ~Your wrongs are so great?  Then I will not suffer you to live.~ GOTO 2
	IF ~~ THEN REPLY ~I care not.  I will leave you now.~ GOTO 8
END

IF ~~ THEN BEGIN 7
	SAY ~You... you would?  Oh, thank you!  Here, take this bottle.  If you use it on the alter of the temple, the undead will return to Kelemvor.~
	IF ~~ THEN REPLY ~Anything else?~  GOTO 9
	IF ~~ THEN REPLY ~Would I get anything in return if I did this?~ GOTO 10
	IF ~~ THEN REPLY ~I've changed my mind, I don't want your bottle.~ DO ~GiveItem("WGholy","WGcleric") SetGlobal("WGClericQuest","GLOBAL",0)~ GOTO 8
END

IF ~~ THEN BEGIN 8
	SAY ~Then farewell.  I will be here a time if you change your mind.~
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9
	SAY ~Beware the dead there.  Their words will shake your very soul.~
	IF ~~ THEN REPLY ~I will be wary.  Can you point the way there?~ DO ~GiveItem("WGholy",Player1) SetGlobal("WGClericQuest","GLOBAL",1)~ 
		GOTO 18
	IF ~~ THEN REPLY ~I have no need for caution.  I will return shortly, if you point me in the right direction.~ DO ~GiveItem("WGholy",Player1) SetGlobal("WGClericQuest","GLOBAL",1)~ GOTO 18
	IF ~~ THEN REPLY ~Shake my soul?  I change my mind.~ DO ~GiveItem("WGholy","WGcleric") SetGlobal("WGClericQuest","GLOBAL",0)~ GOTO 8
END

IF ~~ THEN BEGIN 10
	SAY ~I have nothing much to give.  You would get my thanks, and a chance to stare down your fears.  Is that enough?~
	IF ~~ THEN REPLY ~I was thinking more like gold.  Sorry.~ GOTO 8
	IF ~~ THEN REPLY ~It will have to be.  Anything more I should know?~ GOTO 9
END

IF ~Global("WGClericQuest","GLOBAL",0)~ THEN BEGIN 11
	SAY ~Yes?  Have you changed your mind?~
	IF ~~ THEN REPLY ~Yes.  I will help you cleanse the temple.~ GOTO 7
	IF ~~ THEN REPLY ~No, I am still unsure I want to face that apparition.~ GOTO 8
	IF ~~ THEN REPLY ~If you mean changed my mind about letting you live, then yes.~ GOTO 2
	IF ~Global("WGnomen","GLOBAL",2)~ THEN REPLY ~Actually, I'd like to have your necklace, if I could.~ GOTO 16
END


IF ~Global("WGClericQuest","GLOBAL",1)~ THEN BEGIN 12
	SAY ~Yes, have you been successful?~
	IF ~~ THEN REPLY ~I have not yet attempted the cleansing.  I need a little more time.~ EXIT
	IF ~~ THEN REPLY ~I changed my mind.  This temple is too spooky for me.~ DO ~GiveItem("WGholy","WGcleric") SetGlobal("WGClericQuest","GLOBAL",0)~ GOTO 8
	IF ~Global("WGnomen","GLOBAL",2)~ THEN REPLY ~Actually, I'd like to have your necklace, if I could.~ GOTO 16
END

IF ~Global("WGClericQuest","GLOBAL",2)~ THEN BEGIN 13
	SAY ~Yes, have you been successful?~
	IF ~~ THEN REPLY ~Yes.  The undead no longer walk in the Temple of Bhaal.~ GOTO 14
END
	
IF ~~ THEN BEGIN 14
	SAY ~My thanks!  You have done a great thing here today.  I will rest here a time more, if you have further need of me.~ 
	IF ~~ THEN DO ~SetGlobal("WGClericQuest","GLOBAL",3) 
	AddexperienceParty(30000)
	EraseJournalEntry(%Cleansing the Temple of Bhaal
	A priestess of Kelemvor has asked that I cleanse a neighboring temple of the undead inhabitants.  She gave me a bottle of cleansing and a warning of a fearsome apparition.  However, she does not remember the exact location of the temple.  Perhaps I will find it in time.% )
	~ EXIT
END

IF ~Global("WGClericQuest","GLOBAL",3)~ THEN BEGIN 15
	SAY ~Yes?  Was there something else you needed of me?~
	IF ~Global("WGnomen","GLOBAL",2)~ THEN REPLY ~Actually, yes.  You possess a necklace I am in need of.~ GOTO 16
	IF ~~ THEN REPLY ~No, not really.~ EXIT
END

IF ~~ THEN BEGIN 16
	SAY ~My necklace?  But it is valueless to anyone other than myself.  Why would you want such a thing?~
	IF ~Global("WGClericQuest","GLOBAL",0)~ THEN REPLY ~Some friends of mine have been enchanted.  The necklace is the only thing that will save them.~ GOTO 17
	IF ~Global("WGClericQuest","GLOBAL",1)~ THEN REPLY ~Some friends of mine have been enchanted.  The necklace is the only thing that will save them.~ GOTO 23
	IF ~Global("WGClericQuest","GLOBAL",3)~ THEN REPLY ~Some friends of mine have been enchanted.  The necklace is the only thing that will save them.~ GOTO 19
	IF ~Global("WGClericQuest","GLOBAL",0)~ THEN REPLY ~No reason in particular, I just wanted it.~ GOTO 20
	IF ~Global("WGClericQuest","GLOBAL",1)~ THEN REPLY ~No reason in particular, I just wanted it.~ GOTO 20
	IF ~Global("WGClericQuest","GLOBAL",3)~ THEN REPLY ~No reason in particular, I just wanted it.~ GOTO 19
	IF ~~ THEN REPLY ~Give it to me already, or it will be your death.~ GOTO 2
END

IF ~~ THEN BEGIN 17
	SAY ~This necklace means much to me.  But if you were to do the duty I could not, I would give it to you.~
	IF ~~ THEN REPLY ~Alright, what duty is that?~ GOTO 21
	IF ~~ THEN REPLY ~I think I'll kill you for it instead.~ GOTO 2
END
		
IF ~~ THEN BEGIN 18
	SAY ~I... I do not rightly know.  I was lost in the forest when I fleed, and I do not know the way back to the temple.~ 
	IF ~~ THEN REPLY ~That will make this difficult.~ GOTO 22
	IF ~~ THEN REPLY ~Then forget about it.~ DO ~GiveItem("WGholy","WGcleric") SetGlobal("WGClericQuest","GLOBAL",0)~ UNSOLVED_JOURNAL ~Cleansing the Temple of Bhaal
	A priestess of Kelemvor has asked that I cleanse a neighboring temple of the undead inhabitants.  She gave me a bottle of cleansing and a warning of a fearsome apparition.  However, she does not remember the exact location of the temple.  Perhaps I will find it in time.~ 
	GOTO 8	
	IF ~Global("WGnomen","GLOBAL",2)~ THEN REPLY ~I think I'll kill you for the necklace instead.~ GOTO 2
END

IF ~~ THEN BEGIN 19
	SAY ~Well, you did complete the mission I could not.  Here, it is yours.~
	IF ~~ THEN DO ~SetGlobal("WGnomen","GLOBAL",3) GiveItem("WGneck",Player1)~ EXIT
END

IF ~~ THEN BEGIN 20
	SAY ~It is too dear to me to give it up lightly.  If there were some pressing need, perhaps, but not on a whim.~
	IF ~Global("WGClericQuest","GLOBAL",0)~ THEN REPLY ~Actually, I have a need.  Without it some friends of mine will be trapped as deer forever.~ GOTO 17
	IF ~Global("WGClericQuest","GLOBAL",1)~ THEN REPLY ~Actually, I have a need.  Without it some friends of mine will be trapped as deer forever.~ GOTO 23
	IF ~~ THEN REPLY ~I'll be easier just to kill you for it.~ GOTO 2
END

IF ~~ THEN BEGIN 21
	SAY ~There is a ruined Temple of Bhaal near here.  When he died, so did his followers.  But many of them have risen, and this is an abomination to Kelemvor.  I came to this place to cleanse it.~
	IF ~~ THEN GOTO 25
END

IF ~~ THEN BEGIN 22
	SAY ~It does indeed.  But perhaps aftr I have recovered my bearings I can be of more help.  Or perhaps you will find someone else who knows the way.~
	IF ~~ THEN REPLY ~Until then.~ UNSOLVED_JOURNAL ~Cleansing the Temple of Bhaal
	A priestess of Kelemvor has asked that I cleanse a neighboring temple of the undead inhabitants.  She gave me a bottle of cleansing and a warning of a fearsome apparition.  However, she does not remember the exact location of the temple.  Perhaps I will find it in time.~ 
	EXIT
	IF ~~ THEN REPLY ~I'm not waiting around.  Here's your bottle back.~ DO ~GiveItem("WGholy","WGcleric") SetGlobal("WGClericQuest","GLOBAL",0)~ UNSOLVED_JOURNAL ~Cleansing the Temple of Bhaal
	A priestess of Kelemvor has asked that I cleanse a neighboring temple of the undead inhabitants.  She gave me a bottle of cleansing and a warning of a fearsome apparition.  However, she does not remember the exact location of the temple.  Perhaps I will find it in time.~ 
	GOTO 8
	IF ~Global("WGnomen","GLOBAL",2)~ THEN REPLY ~I think killing you and taking the necklace would be of more help.~ GOTO 2
END


IF ~~ THEN BEGIN 23
	SAY ~Well, you did agree to help me cleanse the temple.  Here, it is yours.~
	IF ~~ THEN DO ~SetGlobal("WGnomen","GLOBAL",3) GiveItem("WGneck",Player1)~ EXIT
END

IF ~~ THEN BEGIN 25
	SAY ~Here, take this bottle.  If you use it on the alter of the temple, the undead will return to Kelemvor.~
	IF ~~ THEN REPLY ~Anything else?~  GOTO 9
	IF ~~ THEN REPLY ~Would I get anything in return if I did this?~ GOTO 10
	IF ~~ THEN REPLY ~I've changed my mind, I don't want your bottle.~ DO ~GiveItem("WGholy","WGcleric") SetGlobal("WGClericQuest","GLOBAL",0)~ GOTO 8
END

IF ~Global("WGClericQuest","GLOBAL",1) Global("MelissanYagaKillJob","GLOBAL",1)~ THEN BEGIN 26
	SAY ~Ah, I have recovered.  The temple is east of here but a little way, there, on your map.~
	IF ~~ THEN DO ~RevealAreaOnMap("AR5202")~ EXIT
END
