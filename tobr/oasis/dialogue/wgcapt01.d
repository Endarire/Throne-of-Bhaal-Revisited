BEGIN WGcapt01

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
	SAY ~Hold there, traveller.  You are no merchant.  What is your business so far from civilization?~
	IF ~~ THEN REPLY ~I could ask you the same thing.~ GOTO 1
	IF ~~ THEN REPLY ~I am an adventurer, and I seek dangers and riches.~ GOTO 2
	IF ~~ THEN REPLY ~I am searching for five powerful Bhaalspawn.~ GOTO 3
END

IF ~~ THEN BEGIN 1
	SAY ~But my allegiance is no mystery, traveller;  I serve the Champions Vigilant.  You, however, are a mystery.~
	IF ~~ THEN REPLY ~So what business brings you so far into the desert?~ GOTO 4
	IF ~~ THEN REPLY ~Champions Vigilant?  This name means nothing to me.~ GOTO 6
	IF ~~ THEN REPLY ~And I intend to keep it that way.~ GOTO 5
END

IF ~~ THEN BEGIN 2
	SAY ~You may not find riches in the Calim Desert, but dangers you may find in abundance.  There must be something in particular you seek.~
	IF ~~ THEN REPLY ~I am searching for five powerful Bhaalspawn.~ GOTO 3
	IF ~~ THEN REPLY ~No, not really.~ GOTO 4
	IF ~~ THEN REPLY ~Why, do you know of something I might be interested in?~ GOTO 7
END

IF ~~ THEN BEGIN 3
	SAY ~Ah, the crux of the matter.  In this we are not so different.  I will note your passing, traveller, and my order will hear of your interest.~
	IF ~~ THEN REPLY ~You seek them also?  Do you know where to find them?~ GOTO 8
	IF ~~ THEN REPLY ~You will do no such thing.  My privacy must be respected.~ GOTO 5
	IF ~~ THEN REPLY ~Very well.  Good luck on your journey.~ GOTO 9
END

IF ~~ THEN BEGIN 4
	SAY ~My question was first, traveller.  Why are you here?~
	IF ~~ THEN REPLY ~I am an adventurer, and I seek dangers and riches.~ GOTO 2
	IF ~~ THEN REPLY ~I am searching for five powerful Bhaalspawn.~ GOTO 3
	IF ~~ THEN REPLY ~I do not share my business with everyone that asks.~ GOTO 5
END

IF ~~ THEN BEGIN 5
	SAY ~Silence on this matter says much, traveller.  It will be noted by me and by my order.~
	IF ~~ THEN REPLY ~Right, that's not going to happen.  My blade will ensure your silence.~ GOTO 10
	IF ~~ THEN REPLY ~What interest does your order have in the business of every traveller?~ GOTO 6
	IF ~~ THEN REPLY ~Very well.  Good luck on your journey.~ GOTO 9
END

IF ~~ THEN BEGIN 6
	SAY ~You must be stranger to these lands indeed.  It is enough to say that Tethyr did not survive a bloody civil war to fall into chaos now.  And mysterious travellers in these times are often of a particular heritage.~
	IF ~~ THEN REPLY ~I assume you mean children of Bhaal.  I also hunt the powerful Bhaalspawn of this region.~ GOTO 3
	IF ~~ THEN REPLY ~Do you suggest that I am a Bhaalspawn?~ GOTO 11
	IF ~~ THEN REPLY ~I admit I am of that heritage, but I am no danger to the people of Tethyr.~ GOTO 12
	IF ~~ THEN REPLY ~I'm feeling particularly chaotic right now.  Draw steel!~ GOTO 10
END

IF ~~ THEN BEGIN 7
	SAY ~These are interesting times, and no doubt something will find you without my interference.~ 
	IF ~~ THEN REPLY ~I would appreciate your interference.  Where might I find a powerful Bhaalspawn?~ GOTO 8
	IF ~~ THEN REPLY ~What interest does your order have in the business of every traveller?~ GOTO 6
	IF ~~ THEN REPLY ~Very well.  Good luck on your journey.~ GOTO 9
END

IF ~~ THEN BEGIN 8
	SAY ~Why?  What would you do once you find one?~
	IF ~~ THEN REPLY ~I would stop their destruction of these lands any way necessary.~ GOTO 13
	IF ~~ THEN REPLY ~I would try to reason with them, if I could.~ GOTO 13
	IF ~~ THEN REPLY ~They are a threat to me, and I would kill them.~ GOTO 14
END

IF ~~ THEN BEGIN 9
	SAY ~And on yours, traveller.~
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 10
	SAY ~To arms!  We are attacked!~
	IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 11
	SAY ~I do.  And I suggest that you should not sow the chaos natural to your brethren.~
	IF ~~ THEN REPLY ~Is that a threat?~ GOTO 15
	IF ~~ THEN REPLY ~I admit I am of that heritage, but I am no danger to the people of Tethyr.~ GOTO 12
	IF ~~ THEN REPLY ~I'm feeling particularly chaotic right now.  Draw steel!~ GOTO 10
END

IF ~~ THEN BEGIN 12
	SAY ~For your sake I hope you are not.  Let us part without animosity then.~
	IF ~~ THEN REPLY ~And for your sake I hope you will stop threatening me.~ GOTO 15
	IF ~~ THEN REPLY ~My deeds will speak for themselves.  Farewell.~ EXIT
	IF ~~ THEN REPLY ~Very well.  Good luck on your journey.~ GOTO 9
END

IF ~~ THEN BEGIN 13
	SAY ~This will also be noted.  Let us part without animosity then.~
	IF ~~ THEN REPLY ~Your superiority galls me.  Make a note of that as well.~ GOTO 15
	IF ~~ THEN REPLY ~My deeds will speak for themselves.  Farewell.~ EXIT
	IF ~~ THEN REPLY ~Very well.  Good luck on your journey.~ GOTO 9
END

IF ~~ THEN BEGIN 14
	SAY ~This will also be noted.  And perhaps you ought to recognize other threats if your killing goes unchecked.~
	IF ~~ THEN REPLY ~Is that a threat?~ GOTO 15
	IF ~~ THEN REPLY ~I admit I am of that heritage, but I am no danger to the people of Tethyr.~ GOTO 12
	IF ~~ THEN REPLY ~I'm feel particularly like killing right now.  Draw steel!~ GOTO 10
END

IF ~~ THEN BEGIN 15
	SAY ~My order has prevailed against greater enemies than you, traveller.  Take your leave.~
	IF ~~ THEN REPLY ~I do, but I have also "taken note" of you and your order.~ EXIT
	IF ~~ THEN REPLY ~Very well, I meant no offense.  Good luck on your journey.~ GOTO 9
	IF ~~ THEN REPLY ~Enough of this prattle.  Let's see how tough your order is!~ GOTO 10
END  

IF ~!NumTimesTalkedTo(0)~ THEN BEGIN 16
	SAY ~I have nothing more to say to you, traveller.  Leave now.~
	IF ~~ THEN EXIT
END