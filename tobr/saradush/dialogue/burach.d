BEGIN Burach

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
	SAY ~Cyric!  Why have you forsaken me?  Have I not done all you asked?  Have I not killed many in your name?~
	IF ~~ THEN REPLY ~Sniveling worm!  Your whining pleases no one, least of all Cyric.~ GOTO 1
	IF ~~ THEN REPLY ~Murderer!  I will not suffer you to live!~ GOTO 2
	IF ~~ THEN REPLY ~Um, why are you calling on Cyric in a house of Waukeen?~ GOTO 3
	IF ~~ THEN REPLY ~Can I ask you question or two?~ GOTO 5
	IF ~~ THEN REPLY ~Right.  I'll be going now.~ EXIT
END  

IF ~~THEN BEGIN 1
	SAY ~Begging is all I have left!  Maybe all he needs is to be reminded through prayer.~
	IF ~~ THEN REPLY ~That is highly doubtful.  To be here at all means he has forsaken you.~ GOTO 4
	IF ~~ THEN REPLY ~Maybe killing you will help me get out of this mess.~ GOTO 2
	IF ~~ THEN REPLY ~He won't like the reminder coming from a house of Waukeen.~ GOTO 3
	IF ~~ THEN REPLY ~Right.  I'll be going now.~ EXIT
END

IF ~~ THEN BEGIN 2
	SAY ~No!  I will not go quietly!~
	IF ~~ THEN DO ~Enemy() Attack(LastTalkedToBy())~ EXIT
END

IF ~~ THEN BEGIN 3
	SAY ~But I have no place else to go!  The streets are too dangerous, and it was "suggested" I leave the inn.  He will have to hear me here.~
	IF ~~ THEN REPLY ~That is highly doubtful.  To be in Saradush at all means he has forsaken you.~ GOTO 4
	IF ~~ THEN REPLY ~I guess angering Cyric here is no worse than anywhere else.  I'll let you be.~ EXIT
	IF ~~ THEN REPLY ~Snivelling worm!  Your whining pleases no one, least of all Cyric.~ GOTO 1
	IF ~~ THEN REPLY ~Can I ask you a question or two?~ GOTO 5
	IF ~~ THEN REPLY ~Right.  I'll be going now.~ EXIT
END

IF ~~ THEN BEGIN 4
	SAY ~But... he cannot forget me!  I have worshipped him faithfully!  I have channeled the urges of my blood into service to him!  He cannot leave me here!~
	IF ~~ THEN REPLY ~He can and he has.  Your only choice is to repent.~ GOTO 2
	IF ~~ THEN REPLY ~Snivelling worm!  Your whining pleases no one, least of all Cyric.~ GOTO 1
	IF ~~ THEN REPLY ~Can I ask you a question or two?~ GOTO 5
	IF ~~ THEN REPLY ~Right.  I'll be going now.~ EXIT
END

IF ~~ THEN BEGIN 5
	SAY ~I suppose, but make it quick.~
	IF ~~ THEN REPLY ~How long have you been in Saradush?~ GOTO 6
	IF ~~ THEN REPLY ~What do you know about the army outside the city walls?~ GOTO 7
	IF ~!Dead("Gromnir")~ THEN REPLY ~Is there anything you can tell me about Gromnir or his men?~ GOTO 8
	IF ~~ THEN REPLY ~I'll be going now.~ EXIT
END

IF ~~ THEN BEGIN 6
	SAY ~Not long.  I came with Melissan, though I have seen little of her since we arrived.  I know little of the city, and nothing after the seige began.  Once the bombing started I have done nothing but pray.~ 
	IF ~~ THEN REPLY ~You mean whine.  Get over it.~ GOTO 4
	IF ~~ THEN REPLY ~What do you know about the army outside the city walls?~ GOTO 7
	IF ~!Dead("Gromnir")~ THEN REPLY ~Is there anything you can tell me about Gromnir or his men?~ GOTO 8
	IF ~~ THEN REPLY ~I'll be going now.~ EXIT
END

IF ~~ THEN BEGIN 7
	SAY ~Nothing.  I have... hidden since they came.~
	IF ~~ THEN REPLY ~Snivelling worm!  Your whining pleases no one, least of all Cyric.~ GOTO 1
	IF ~~ THEN REPLY ~How long have you been in Saradush?~ GOTO 6
	IF ~!Dead("Gromnir")~ THEN REPLY ~Is there anything you can tell me about Gromnir or his men?~ GOTO 8
	IF ~~ THEN REPLY ~I'll be going now.~ EXIT
END

IF ~~ THEN BEGIN 8
	SAY ~I'm sorry, but no.  I tried to join with them, gain entrance to the castle.  But they would not have me, so here I remain.~
	IF ~~ THEN REPLY ~How long have you been in Saradush?~ GOTO 6
	IF ~~ THEN REPLY ~What do you know about the army outside the city walls?~ GOTO 7
	IF ~~ THEN REPLY ~I'll be going now.~ EXIT
END

IF ~!NumTimesTalkedTo(0)~ THEN BEGIN 9
	SAY ~Cyric, hear my plea!~
	IF ~~ THEN EXIT
END
	
	
