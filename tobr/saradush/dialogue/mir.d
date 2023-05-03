BEGIN MIR

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
	SAY ~Do not distract me!  I must be ever vigilant in repelling Yuga-Shura's forces!~
IF ~~ THEN REPLY ~I am sorry, I will trouble you no more.~ EXIT
IF ~~ THEN REPLY ~Please, just a few questions.~ GOTO 2
IF ~~ THEN REPLY ~Ooh, I'm so *sorry* to break your vigilance.~ GOTO 3
END

IF ~!NumTimesTalkedTo(0)~ THEN BEGIN 1
	SAY ~Do not distract me!~
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2
	SAY ~Ah, very well.  Their forces are so great a few moments will not matter much.  What is it you would know?~
	IF ~~ THEN REPLY ~Who are you?  And how did you come to be in Saradush?~ GOTO 4
	IF ~~ THEN REPLY ~What do you know about Yaga-Shura and his army?~ GOTO 5
	IF ~!Dead("gromnir")~ THEN REPLY ~Do you know a way to speak with Gromnir Il-Khan?~ GOTO 6
	IF ~~ THEN REPLY ~I'll let you get back to your fight.~ GOTO 9
	
END

IF ~~ THEN BEGIN 3
	SAY ~Hold your mockery, fool!  The army surrounds us, and we will all be destroyed if the walls fall.  I must do what I can to protect the innocents that live here.~
	IF ~~ THEN REPLY ~Hey, speak for yourself.  I don't plan on being destroyed by Yaga-Shura or anyone else.~ GOTO 7
	IF ~~ THEN REPLY ~Innocents?  This town is full of Bhaalspawn, and they are never truly innocent.~ GOTO 8
	IF ~~ THEN REPLY ~Ok, mocking is over.  Why are you so worked up?  Let me guess; you're a paladin.~ GOTO 4
	IF ~~ THEN REPLY ~I'll let you get back to your fight.~ GOTO 9
END

IF ~~ THEN BEGIN 4
	SAY ~My name is Mir.  While Bhaal's infernal blood runs through my veins, I am a sworn paladin in service to Torm.  I left my home to come here after a conversation with Mellisan.  She warned me of the suffering my heritage would bring to my fellows if I remained with them.  But I still do Torm's work here, fighting those that would kill my weaker siblings.~
	IF ~~ THEN REPLY ~What do you know about Yaga-Shura and his army~ GOTO 5
	IF ~!Dead("gromir")~ THEN REPLY ~Do you know a way to speak with Gromnir Il-Khan?~ GOTO 6
	IF ~~ THEN REPLY ~Thank you, I will let you get back to your fight.~ GOTO 9
END

IF ~~ THEN BEGIN 5
	SAY ~Very little.  His army is vast; no matter how many we kill, there always seem to be more.  And while he has taken many blows, they do not stop him.~
	IF ~~ THEN REPLY ~Who are you?  And how did you come to be in Saradush?~ DO ~SetGlobal("WGmirtold","GLOBAL",1)~ GOTO 4
	IF ~!Dead("gromnir")~ THEN REPLY ~Do you know a way to speak with Gromnir Il-Khan?~ DO ~SetGlobal("WGmirtold","GLOBAL",1)~ GOTO 6
	IF ~~ THEN REPLY ~Thank you, I will let you get back to your fight.~ DO ~SetGlobal("WGmirtold","GLOBAL",1)~ GOTO 9
END

IF ~~ THEN BEGIN 6
	SAY ~No.  I have searched long for a way to enter the castle, but for not.  Now I spend my time on the walls fighting this other Bhaalspawn that endangers Saradush.~
	IF ~~ THEN REPLY ~Who are you?  And how did you come to be in Saradush?~ GOTO 4
	IF ~~ THEN REPLY ~What do you know about Yaga-Shura and his army~ GOTO 5
	IF ~~ THEN REPLY ~Thank you, I will let you get back to your fight.~ GOTO 9
END

IF ~~ THEN BEGIN 7
	SAY ~You may not be physically killed, but your weaker brothers and sisters will fall.  And when the weak suffer, we are all destroyed.~
	IF ~~ THEN REPLY ~...Right.  You're a paladin, aren't you?~ GOTO 4
	IF ~~ THEN REPLY ~How did you come to be in Saradush?~ GOTO 4
	IF ~~ THEN REPLY ~What do you know about Yaga-Shura and his army?~ GOTO 5
	IF ~!Dead("gromnir")~ THEN REPLY ~Do you know a way to speak with Gromnir Il-Khan?~ GOTO 6
	IF ~~ THEN REPLY ~I'll let you get back to your fight.~ GOTO 9
END

IF ~~ THEN BEGIN 8
	SAY ~If they are not innocent it is not due to their heritage.  I myself am a child of Bhaal, and I believe I have resisted the call of my blood as well as any.~
	IF ~~ THEN REPLY ~...Right.  You're a paladin, aren't you?~ GOTO 4
	IF ~~ THEN REPLY ~How did you come to be in Saradush?~ GOTO 4
	IF ~~ THEN REPLY ~What do you know about Yaga-Shura and his army?~ GOTO 5
	IF ~!Dead("gromnir")~ THEN REPLY ~Do you know a way to speak with Gromnir Il-Khan?~ GOTO 6
	IF ~~ THEN REPLY ~I'll let you get back to your fight.~ GOTO 9
END

IF ~~ THEN BEGIN 9	
	SAY ~The people of this town will not suffer as long as I have breath to draw.~
	IF ~~ THEN EXIT
END
 