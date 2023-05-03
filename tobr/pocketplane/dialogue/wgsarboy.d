BEGIN WGsarboy

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
	SAY ~Gar, what were you doing in the sewers?~
	IF ~~ THEN REPLY ~Oh, adventuring. Like usual.~ GOTO 1
	IF ~~ THEN REPLY ~I used them to enter the city.~ GOTO 2
	IF ~~ THEN REPLY ~Be gone, brat.~ GOTO 3
END

IF ~~ THEN BEGIN 1
	SAY ~You're a Bhaalspawn, aren't you?  Only a stinky Bhaalspawn would adventure around here.~
	IF ~~ THEN REPLY ~Hey! I don't stink!~ GOTO 4
	IF ~~ THEN REPLY ~Very perceptive, boy.  How do you know about Bhaalspawn?~ GOTO 5
	IF ~~ THEN REPLY ~So what if I am?  It has nothing to do with my adventuring.~ GOTO 4
END

IF ~~ THEN BEGIN 2
	SAY ~Why'd you do a dumb thing like that?  Everybody else is trying to leave.  I'd leave, if I could.~
	IF ~~ THEN REPLY ~It's my destiny to come here.~ GOTO 6
	IF ~~ THEN REPLY ~Why would you leave?~ GOTO 7
	IF ~~ THEN REPLY ~I'm not telling every child that asks.  Go bother someone else.~ GOTO 3
END

IF ~~ THEN BEGIN 3
	SAY ~You're mean!  You're just like Gromnir!  Even Melissan thinks he's mean.~
	IF ~~ THEN REPLY ~Who is this Melissan?~ GOTO 8
	IF ~~ THEN REPLY ~Why do you think Gromnir is mean?~ GOTO 9
	IF ~~ THEN REPLY ~Call me names and you'll find out just how mean I can be.~ GOTO 10
END

IF ~~ THEN BEGIN 4
	SAY ~If you're a Bhaalspawn then you're stinky and mean.  They came here and then the army came here.  Now mama is always upset and I can't even play outside.~
	IF ~~ THEN REPLY ~I'm sorry if this has been hard on you.  Soon things will be set right.~ GOTO 11
	IF ~~ THEN REPLY ~Whining and calling people names won't get you anywhere.~ GOTO 3
	IF ~~ THEN REPLY ~What has the army been doing?~ GOTO 13
	IF ~~ THEN REPLY ~Why did the Bhaalspawn come here?~ GOTO 14
END

IF ~~ THEN BEGIN 5
	SAY ~Everybody knows about Bhaalspawn.  Adellie is a Bhaalspawn, and Melissan brought more.  Lots.  That's why the army is here and I can't play outside.~
	IF ~~ THEN REPLY ~Who is Adellie?~ GOTO 15
	IF ~~ THEN REPLY ~Who is Melissan?~ GOTO 8
	IF ~~ THEN REPLY ~What has the army been doing?~ GOTO 13
END

IF ~~ THEN BEGIN 6
	SAY ~Wow, destiny.  You sound like Melissan.  She talks like that a lot.~
	IF ~~ THEN REPLY ~Who is Melissan?~ GOTO 8
	IF ~~ THEN REPLY ~What does she say about destiny?~ GOTO 16
	IF ~~ THEN REPLY ~Now that I'm here, who is in charge?~ GOTO 17
END
 
IF ~~ THEN BEGIN 7
	SAY ~Gar, you are dumb.  The city is full of stinky Bhaalspawn and there's an army with catapults outside.~
	IF ~~ THEN REPLY ~Why did the Bhaalspawn come here?~ GOTO 14
	IF ~~ THEN REPLY ~What has the army been doing?~ GOTO 13
	IF ~~ THEN REPLY ~Now that I'm here, who is in charge?~ GOTO 17
END

IF ~~ THEN BEGIN 8
	SAY ~Melissan is nice.  She came with the Bhaalspawn to help them.  Now she talks a lot.~
	IF ~~ THEN REPLY ~Where would I find this Melissan?~ GOTO 18
	IF ~~ THEN REPLY ~What does she talk about?~ GOTO 16
	IF ~~ THEN REPLY ~Why would the Bhaalspawn come here?~ GOTO 14
END

IF ~~ THEN BEGIN 9
	SAY ~Everybody thinks Gromnir is mean.  His friends hurt people.  Mama is scared of him and his friends.~
	IF ~~ THEN REPLY ~And who is Melissan?~ GOTO 8
	IF ~~ THEN REPLY ~I think I need a little talk with Gromnir.  Where can I find him?~ GOTO 17
	IF ~~ THEN REPLY ~I'm sorry if this has been hard on you.  Soon things will be set right.~ GOTO 11
END

IF ~~ THEN BEGIN 10
	SAY ~... I'm not scared of you!  I'm leaving because I want to!~
	IF ~~ THEN DO ~SetGlobal("WGboyTalk","AR5000",1)~ EXIT
END

IF ~~ THEN BEGIN 11
	SAY ~I don't think you can fix things.  The stinky Bhaalspawn just messed things up.  Only Melissan can fix things.~
	IF ~~ THEN REPLY ~Tell me about Melissan.~ GOTO 8
	IF ~~ THEN REPLY ~What has the army been doing?~ GOTO 13
	IF ~~ THEN REPLY ~Why did the Bhaalspawn come here?~ GOTO 14
END

IF ~~ THEN BEGIN 13
	SAY ~It throws burning cannonballs at us!  And shoots arrows!  But Melissan says they'll be gone soon.~
	IF ~~ THEN REPLY ~Why did the Bhaalspawn come here?~ GOTO 14
	IF ~~ THEN REPLY ~Now that I'm here, who is in charge?~ GOTO 17
	IF ~~ THEN REPLY ~Who is Melissan?~ GOTO 8
END

IF ~~ THEN BEGIN 14
	SAY ~Melissan brought the Bhaalspawn here.  We had a nice town with strong walls, but the Bhaalspawn messed everything up.~
	IF ~~ THEN REPLY ~Who is Melissan?~ GOTO 8
	IF ~~ THEN REPLY ~Who is in charge of your nice town?~ GOTO 17
	IF ~~ THEN REPLY ~I'm sorry if this has been hard on you.  Soon things will be set right.~ GOTO 11
END

IF ~~ THEN BEGIN 15
	SAY ~She's a Bhaalspawn, but she's nice.  Sometimes mama has her watch me, and if I'm good she lets me watch her cast magic spells.~
	IF ~~ THEN REPLY ~Who is Melissan?~ GOTO 8
	IF ~~ THEN REPLY ~What has the army been doing?~ GOTO 13
	IF ~~ THEN REPLY ~Why did the Bhaalspawn come here?~ GOTO 14
END

IF ~~ THEN BEGIN 16
	SAY ~Lots of things.  Mostly about Gromnir and the other Bhaalspawn.  She knows a lot.~
	IF ~~ THEN REPLY ~Where would I find this Melissan?~ GOTO 18
	IF ~~ THEN REPLY ~What has the army been doing?~ GOTO 13
	IF ~~ THEN REPLY ~Why did the Bhaalspawn come here?~ GOTO 14
END

IF ~~ THEN BEGIN 17
	SAY ~Gromnir is in charge, even though he's locked up in the castle.  It's west of here.~
	IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 18
	SAY ~Melissan and some people are trying to talk to Gromnir at the castle.  It's west of here.~
	IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19
	SAY ~Uh oh, I hear mama calling.  I'm not supposed to be outside.  I should go.~
	IF ~~ THEN DO ~SetGlobal("WGboyTalk","AR5000",1)~ EXIT
END