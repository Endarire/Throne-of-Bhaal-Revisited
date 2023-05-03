BEGIN Eleni

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
	SAY ~Watch the forest.  Watch the trees.~
IF ~~ THEN REPLY ~Um, hello?~ GOTO 2
IF ~~ THEN REPLY ~What are you looking for, good lady?~ GOTO 3
IF ~~ THEN REPLY ~Mind if I ask you a few questions?~ GOTO 4
END

IF ~!NumTimesTalkedTo(0)~ THEN BEGIN 1
	SAY ~Watch the forest...~
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2
	SAY ~Oh, hello.  What is it you want?~
	IF ~~ THEN REPLY ~What are you looking for, good lady?~ GOTO 3
	IF ~~ THEN REPLY ~Mind if I ask you a few questions?~ GOTO 4
	IF ~~ THEN REPLY ~You seem a little distracted.~ GOTO 5
	IF ~~ THEN REPLY ~Nothing.  Keep watching, whatever you are looking for.~ EXIT
END

IF ~~ THEN BEGIN 3
	SAY ~Looking for?  I cannot really say.  The trees, they calm me.  I find these walls unnatural, and I miss my brother dearly.~
	IF ~~ THEN REPLY ~If you dislike walls why did you come here in the first place?~ GOTO 7
	IF ~~ THEN REPLY ~Tell me of your brother.~ GOTO 6
	IF ~~ THEN REPLY ~Mind if I ask you a few questions?~ GOTO 4
	IF ~~ THEN REPLY ~I'll let you get back to your watching then.~ EXIT
END

IF ~~ THEN BEGIN 4
	SAY ~Of course.  What would you know?~
	IF ~~ THEN REPLY ~Why did you come to Saradush?~ GOTO 7
	IF ~~ THEN REPLY ~Have you learned anything about the army while you watched the forest?~ GOTO 8
	IF ~!Dead("gromir")~ THEN REPLY ~What do you know about the Gromnir and his guards?~ GOTO 9
	IF ~~ THEN REPLY ~Nothing.  Keep watching, and I hope you find what you're looking for.~ EXIT
END

IF ~~ THEN BEGIN 5
	SAY ~Do I?  Then it is because I miss my brother so.  We have been separated many times, but I fear this time we will not be reunited.~
	IF ~~ THEN REPLY ~Is that who you are looking for in the forest?~ GOTO 3
	IF ~~ THEN REPLY ~Tell me of your brother.~ GOTO 6
	IF ~~ THEN REPLY ~Mind if I ask a few questions?~ GOTO 4
	IF ~~ THEN REPLY ~I must take my leave.  Goodbye.~ EXIT
END

IF ~~ THEN BEGIN 6
	SAY ~Vanya is his name.  We have always lived in the woods outside Saradush.  While I am skilled in the hunt, Vanya took a gentler path.  He nurtured the trees and helped the animals thrive.  Ah, I speak of him already in the past tense.~
	IF ~~ THEN REPLY ~How can you be so sure he is gone?~ DO ~SetGlobal("WGvanya","GLOBAL",1)~ GOTO 10
	IF ~~ THEN REPLY ~Mind if I ask a few more questions?~ DO ~SetGlobal("WGvanya","GLOBAL",1)~ GOTO 4
	IF ~~ THEN REPLY ~Then keep watching, and I hope you find what you're looking for.~ DO ~SetGlobal("WGvanya","GLOBAL",1)~ EXIT
END



IF ~~ THEN BEGIN 7
	SAY ~I followed Mellisan.  She came through our woods on the way to Saradush, bringing many of my lineage.  I have never met another child of Bhaal, and I wanted to learn from them.~
	IF ~~ THEN REPLY ~You left what you love to follow someone you just met?  That seems a little rash.~ GOTO 11
	IF ~~ THEN REPLY ~Have you learned anything about the army while you watched the forest?~ GOTO 8
	IF ~!Dead("gromir")~ THEN REPLY ~What do you know about the Gromnir and his guards?~ GOTO 9
	IF ~~ THEN REPLY ~I must take my leave. Goodbye.~ EXIT
END

IF ~~ THEN BEGIN 8
	SAY ~No.  I have looked only at the woods and care nothing for Yuga-Shura or his army.~
	IF ~~ THEN REPLY ~Why did you come to Saradush?~ GOTO 7
	IF ~!Dead("gromir")~ THEN REPLY ~What do you know about the Gromnir and his guards?~ GOTO 9
	IF ~~ THEN REPLY ~Then keep watching, and I hope you find what you're looking for.~ EXIT
END

IF ~~ THEN BEGIN 9	
	SAY ~Nothing.  They do not harrass me up on the walls, though I have heard the cries of the citizens mingled with the sounds of war.~
	IF ~~ THEN REPLY ~Why did you come to Saradush?~ GOTO 7
	IF ~~ THEN REPLY ~Have you learned anything about the army while you watched the forest?~ GOTO 8
	IF ~~ THEN REPLY ~Then keep watching, and I hope you find what you're looking for.~ EXIT
END

IF ~~ THEN BEGIN 10
	SAY ~I am not sure.  But I feel his absense, and I worry for him without me to protect him.  He has never been a martial man.~
	IF ~~ THEN REPLY ~I am sure he is fine.  The army cares mostly for Bhaalspawn and may let him be.~ GOTO 11
	IF ~~ THEN REPLY ~Have you learned anything about the army while you watched the forest?~ GOTO 8
	IF ~!Dead("gromir")~ THEN REPLY ~What do you know about the Gromnir and his guards?~ GOTO 9
	IF ~~ THEN REPLY ~I must take my leave. Goodbye.~ EXIT
END

IF ~~ THEN BEGIN 11
	SAY ~Perhaps.  But whatever the case I miss my brother greatly now.  Please leave me to my vigil.~
	IF ~~ THEN REPLY ~Very well, I'll let you be.~ EXIT
	IF ~~ THEN REPLY ~Just a few more questions... ~ GOTO 4
END