BEGIN WGhunter

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
	SAY ~Hold!  State your name!  Who are you that can appear from thin air?!~
	IF ~~ THEN REPLY ~Um... Powerful mages?  Better not anger us.~ GOTO 1
	IF ~IsValidForPartyDialog("Sarevok")~ THEN REPLY ~I have no time for this.  Be gone.~ EXTERN ~SAREV25J~ SAR0
	IF ~!IsValidForPartyDialog("Sarevok")~ THEN REPLY ~I have no time for this.  Be gone.~ GOTO 2
	IF ~~ THEN REPLY ~I'm <CHARNAME>.  Don't let our entrance frighten you.  Please, we have questions that need answers.~ GOTO 3
	IF ~IsValidForPartyDialog("Jan")~ THEN REPLY ~Thin air?  No, we simply know how to move in the forest.~ EXTERN ~JAN25J~ JAN0
	IF ~!IsValidForPartyDialog("Jan")~ THEN REPLY ~Thin air? No, we simply know how to move in the forest.~ GOTO 4
	IF ~~ THEN REPLY ~Who wants to know?~ GOTO 5
END

IF ~~ THEN BEGIN 1
	SAY ~I have walked long in the woods alone, and I do not fear you.  I ask again, who are you?~
	IF ~~ THEN REPLY ~Long in the woods, is it?  Can you tell us about the surrounding lands?~ GOTO 6
	IF ~~ THEN REPLY ~I have no time for this.  Leave us be.~ GOTO 2
	IF ~~ THEN REPLY ~I'm <CHARNAME>.  Don't let our entrance frighten you.  Please, we have questions that need answers.~ GOTO 3
	IF ~IsValidForPartyDialog("Jan")~ THEN REPLY ~Thin air?  No, we simply know how to move in the forest.~ EXTERN ~JAN25J~ JAN0
	IF ~!IsValidForPartyDialog("Jan")~ THEN REPLY ~Thin air? No, we simply know how to move in the forest.~ GOTO 4
	IF ~~ THEN REPLY ~Who wants to know?~ GOTO 5
END

IF ~~ THEN BEGIN 2
	SAY ~ I will not be brushed off so easily.~
	IF ~IsValidForPartyDialog("Nalia")~ THEN EXTERN ~NALIA25J~ NAL0
	IF ~IsValidForPartyDialog("Imoen2") !IsValidForPartyDialog("Nalia")~ THEN EXTERN ~IMOEN25J~ IMO0
	IF ~IsValidForPartyDialog("HaerDalis") !IsValidForPartyDialog("Nalia") !IsValidForPartyDialog("Imoen2")~ THEN EXTERN  ~HAERD25J~ HAE0
	IF ~!IsValidForPartyDialog("HaerDalis") !IsValidForPartyDialog("Nalia") !IsValidForPartyDialog("Imoen2")~ THEN REPLY ~Yes, you will.  Goodbye.~ DO ~SetGlobal("WGBrushOff","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 3
	SAY ~I thank you for your courtesy, <CHARNAME>.  I will answer your questions.~
	IF ~IsValidForPartyDialog("Jaheira")~ THEN REPLY ~Where are we?~ EXTERN ~JAHEI25J~ JAH0
	IF ~IsValidForPartyDialog("Cernd") !IsValidForPartyDialog("Jaheira")~ THEN REPLY ~Where are we?~ EXTERN ~CERND25J~ CER0
	IF ~IsValidForPartyDialog("Valygar") !IsValidForPartyDialog("Cernd") !IsValidForPartyDialog("Jaheira")~ THEN REPLY ~Where are we?~ EXTERN ~VALYG25J~ VAL0
	IF ~!IsValidForPartyDialog("Valygar") !IsValidForPartyDialog("Cernd") !IsValidForPartyDialog("Jaheira")~ THEN REPLY ~Where are we?~ GOTO 6
	IF ~~ THEN REPLY ~Who are you?~ GOTO 7
	IF ~~ THEN REPLY ~Can you tell me anything about the Five?~ GOTO 8
	IF ~IsValidForPartyDialog("Sarevok")~ THEN REPLY ~Can you tell me how to get to Saradush?~ EXTERN ~SAREV25J~ SAR1
	IF ~IsValidForPartyDialog("Keldorn") !IsValidForPartyDialog("Sarevok")~ THEN REPLY ~Can you tell me how to get to Saradush?~ EXTERN ~KELDO25J~ KEL0
	IF ~IsValidForPartyDialog("Aerie") !IsValidForPartyDialog("Sarevok") !IsValidForPartyDialog("Keldorn")~ THEN REPLY ~Can you tell me how to get to Saradush?~ EXTERN ~AERIE25J~ AER0
	IF ~!IsValidForPartyDialog("Sarevok") !IsValidForPartyDialog("Keldorn") !IsValidForPartyDialog("Aerie")~ THEN REPLY ~Can you tell me how to get to Saradush?~ GOTO 9
END

IF ~~ THEN BEGIN 4
	SAY ~As do I, and I have spent many months in them, but never have I seen a mortal that can move that quietly.  I ask again, who are you?~
	IF ~~ THEN REPLY ~Months in the woods?  Can you tell us about the surrounding lands?~ GOTO 6
	IF ~IsValidForPartyDialog("Sarevok")~ THEN REPLY ~I have no time for this.  Be gone.~ EXTERN ~SAREV25J~ SAR0
	IF ~!IsValidForPartyDialog("Sarevok")~ THEN REPLY ~I have no time for this.  Be gone.~ GOTO 2
	IF ~~ THEN REPLY ~I'm <CHARNAME>.  Don't let our entrance frighten you.  Please, we have questions that need answers.~ GOTO 3
	IF ~~ THEN REPLY ~Who wants to know?~ GOTO 5
END

IF ~~ THEN BEGIN 5
	SAY ~Adria is my name.  Now share yours.~
	IF ~~ THEN REPLY ~<CHARNAME>.  A pleasure, I'm sure.  Now that we're best friends, can you answer some questions?~ GOTO 3
	IF ~IsValidForPartyDialog("Sarevok")~ THEN REPLY ~I have no time for this.  Be gone.~ EXTERN ~SAREV25J~ SAR0
	IF ~!IsValidForPartyDialog("Sarevok")~ THEN REPLY ~I have no time for this.  Be gone.~ GOTO 2
	IF ~IsValidForPartyDialog("Jan")~ THEN REPLY ~Thin air?  No, we simply know how to move in the forest.~ EXTERN ~JAN25J~ JAN0
	IF ~!IsValidForPartyDialog("Jan")~ THEN REPLY ~Thin air? No, we simply know how to move in the forest.~ GOTO 4
END

IF ~~ THEN BEGIN 6
	SAY ~You are in the Tethyr Woods.  Some say Sudenessalar itself is close by, guarded by ancient wards and magics.~ 
	IF ~~ THEN REPLY ~Who are you?~ GOTO 7
	IF ~~ THEN REPLY ~Can you tell me anything about the Five?~ GOTO 8
	IF ~IsValidForPartyDialog("Sarevok")~ THEN REPLY ~Can you tell me how to get to Saradush?~ EXTERN ~SAREV25J~ SAR1
	IF ~IsValidForPartyDialog("Keldorn") !IsValidForPartyDialog("Sarevok")~ THEN REPLY ~Can you tell me how to get to Saradush?~ EXTERN ~KELDO25J~ KEL0
	IF ~IsValidForPartyDialog("Aerie") !IsValidForPartyDialog("Sarevok") !IsValidForPartyDialog("Keldorn")~ THEN REPLY ~Can you tell me how to get to Saradush?~ EXTERN ~AERIE25J~ AER0
	IF ~!IsValidForPartyDialog("Aerie") !IsValidForPartyDialog("Sarevok") !IsValidForPartyDialog("Keldorn")~ THEN REPLY ~Can you tell me how to get to Saradush?~ GOTO 9
END

IF ~~ THEN BEGIN 7
	SAY ~I am Adria.~
	IF ~~ THEN REPLY ~... Anything more?~ GOTO 10
	IF ~IsValidForPartyDialog("Jaheira")~ THEN REPLY ~Where are we?~ EXTERN ~JAHEI25J~ JAH0
	IF ~IsValidForPartyDialog("Cernd") !IsValidForPartyDialog("Jaheira")~ THEN REPLY ~Where are we?~ EXTERN ~CERND25J~ CER0
	IF ~IsValidForPartyDialog("Valygar") !IsValidForPartyDialog("Cernd") !IsValidForPartyDialog("Jaheira")~ THEN REPLY ~Where are we?~ EXTERN ~VALYG25J~ VAL0
	IF ~!IsValidForPartyDialog("Valygar") !IsValidForPartyDialog("Cernd") !IsValidForPartyDialog("Jaheira")~ THEN REPLY ~Where are we?~ GOTO 6
	IF ~~ THEN REPLY ~Can you tell me anything about the Five?~ GOTO 8
	IF ~IsValidForPartyDialog("Sarevok")~ THEN REPLY ~Can you tell me how to get to Saradush?~ EXTERN ~SAREV25J~ SAR1
	IF ~IsValidForPartyDialog("Keldorn") !IsValidForPartyDialog("Sarevok")~ THEN REPLY ~Can you tell me how to get to Saradush?~ EXTERN ~KELDO25J~ KEL0
	IF ~IsValidForPartyDialog("Aerie") !IsValidForPartyDialog("Keldorn") !IsValidForPartyDialog("Sarevok")~ THEN REPLY ~Can you tell me how to get to Saradush?~ EXTERN ~AERIE25J~ AER0
	IF ~!IsValidForPartyDialog("Aerie") !IsValidForPartyDialog("Keldorn") !IsValidForPartyDialog("Sarevok")~ THEN REPLY ~Can you tell me how to get to Saradush?~ GOTO 9
END

IF ~~ THEN BEGIN 8
	SAY ~The who?~
	IF ~~ THEN REPLY ~Five Bhaalspawn.  They have been laying waste to the lands on Tethyr.  Surely you've heard of them.~ GOTO 11
END

IF ~~ THEN BEGIN 9
	SAY ~Sadly no.  But there are those nearby that have seen more of the outside world than I.  Speak to the guardians of Watcher's Keep.~
	IF ~Global("CloseDemogorgonTemple","GLOBAL",2)~ THEN REPLY ~I believe the Helmites have left that ruin.  Do you have any other ideas?~ GOTO 10
	IF ~Dead("Odren")~ THEN REPLY ~Um... I don't think that's possible.  Any other ideas?~ GOTO 10
	IF ~IsValidForPartyDialog("Jaheira")~ THEN REPLY ~Where are we?~ DO ~SetGlobal("WKTold","GLOBAL",1)~ EXTERN ~JAHEI25J~ JAH0
	IF ~IsValidForPartyDialog("Cernd") !IsValidForPartyDialog("Jaheira")~ THEN REPLY ~Where are we?~ DO ~SetGlobal("WKTold","GLOBAL",1)~ EXTERN ~CERND25J~ CER0
	IF ~IsValidForPartyDialog("Valygar") !IsValidForPartyDialog("Cernd") !IsValidForPartyDialog("Jaheira")~ THEN REPLY ~Where are we?~ DO ~SetGlobal("WGwktold","GLOBAL",1)~ EXTERN ~VALYG25J~ VAL0
	IF ~!IsValidForPartyDialog("Valygar") !IsValidForPartyDialog("Cernd") !IsValidForPartyDialog("Jaheira")~ THEN REPLY ~Where are we?~ DO ~SetGlobal("WGwktold","GLOBAL",1)~ GOTO 6
	IF ~~ THEN REPLY ~Who are you?~ DO ~SetGlobal("WGwktold","GLOBAL",1)~ GOTO 7
	IF ~~ THEN REPLY ~Can you tell me anything about the Five?~ DO ~SetGlobal("WGwktold","GLOBAL",1)~ GOTO 8
	IF ~~ THEN REPLY ~To Watcher's Keep it is.  Thank you and goodbye.~ DO ~SetGlobal("WGtold","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 10
	SAY ~No.~
	IF ~IsValidForPartyDialog("Jaheira")~ THEN REPLY ~Where are we?~ EXTERN ~JAHEI25J~ JAH0
	IF ~IsValidForPartyDialog("Cernd") !IsValidForPartyDialog("Jaheira")~ THEN REPLY ~Where are we?~ EXTERN ~CERND25J~ CER0
	IF ~IsValidForPartyDialog("Valygar") !IsValidForPartyDialog("Cernd") !IsValidForPartyDialog("Jaheira")~ THEN REPLY ~Where are we?~ EXTERN ~VALYG25J~ VAL0
	IF ~!IsValidForPartyDialog("Valygar") !IsValidForPartyDialog("Cernd") !IsValidForPartyDialog("Jaheira")~ THEN REPLY ~Where are we?~ GOTO 6
	IF ~~ THEN REPLY ~Can you tell me anything about the Five?~ GOTO 8
	IF ~IsValidForPartyDialog("Sarevok")~ THEN REPLY ~Can you tell me how to get to Saradush?~ EXTERN ~SAREV25J~ SAR1
	IF ~IsValidForPartyDialog("Keldorn") !IsValidForPartyDialog("Sarevok")~ THEN REPLY ~Can you tell me how to get to Saradush?~ EXTERN ~KELDO25J~ KEL0
	IF ~IsValidForPartyDialog("Aerie") !IsValidForPartyDialog("Keldorn") !IsValidForPartyDialog("Sarevok")~ THEN REPLY ~Can you tell me how to get to Saradush?~ EXTERN ~AERIE25J~ AER0
	IF ~!IsValidForPartyDialog("Aerie") !IsValidForPartyDialog("Keldorn") !IsValidForPartyDialog("Sarevok")~ THEN REPLY ~Can you tell me how to get to Saradush?~ GOTO 9
END

IF ~~ THEN BEGIN 11
	SAY ~I have heard of their destruction.  I believe they are far to the south.~
	IF ~~ THEN REPLY ~Can you tell me how to find them?~ GOTO 9
	IF ~IsValidForPartyDialog("Jaheira")~ THEN REPLY ~Where are we?~ EXTERN ~JAHEI25J~ JAH0
	IF ~IsValidForPartyDialog("Cernd") !IsValidForPartyDialog("Jaheira")~ THEN REPLY ~Where are we?~ EXTERN ~CERND25J~ CER0
	IF ~IsValidForPartyDialog("Valygar") !IsValidForPartyDialog("Cernd") !IsValidForPartyDialog("Jaheira")~ THEN REPLY ~Where are we?~ EXTERN ~VALYG25J~ VAL0
	IF ~!IsValidForPartyDialog("Valygar") !IsValidForPartyDialog("Cernd") !IsValidForPartyDialog("Jaheira")~ THEN REPLY ~Where are we?~ GOTO 6
	IF ~~ THEN REPLY ~Who are you?~ GOTO 7
	IF ~IsValidForPartyDialog("Sarevok")~ THEN REPLY ~Can you tell me how to get to Saradush?~ EXTERN ~SAREV25J~ SAR1
	IF ~IsValidForPartyDialog("Keldorn") !IsValidForPartyDialog("Sarevok")~ THEN REPLY ~Can you tell me how to get to Saradush?~ EXTERN ~KELDO25J~ KEL0
	IF ~IsValidForPartyDialog("Aerie") !IsValidForPartyDialog("Keldorn") !IsValidForPartyDialog("Sarevok")~ THEN REPLY ~Can you tell me how to get to Saradush?~ EXTERN ~AERIE25J~ AER0
	IF ~!IsValidForPartyDialog("Aerie") !IsValidForPartyDialog("Keldorn") !IsValidForPartyDialog("Sarevok")~ THEN REPLY ~Can you tell me how to get to Saradush?~ GOTO 9
END

IF ~~ THEN BEGIN 12
	SAY ~Is there anything else?~
	IF ~IsValidForPartyDialog("Jaheira")~ THEN REPLY ~Where are we?~ EXTERN ~JAHEI25J~ JAH0
	IF ~IsValidForPartyDialog("Cernd") !IsValidForPartyDialog("Jaheira")~ THEN REPLY ~Where are we?~ EXTERN ~CERND25J~ CER0
	IF ~IsValidForPartyDialog("Valygar") !IsValidForPartyDialog("Cernd") !IsValidForPartyDialog("Jaheira")~ THEN REPLY ~Where are we?~ EXTERN ~VALYG25J~ VAL0
	IF ~!IsValidForPartyDialog("Valygar") !IsValidForPartyDialog("Cernd") !IsValidForPartyDialog("Jaheira")~ THEN REPLY ~Where are we?~ GOTO 6
	IF ~~ THEN REPLY ~Who are you?~ GOTO 7
	IF ~~ THEN REPLY ~Can you tell me anything about the Five?~ GOTO 8
	IF ~~ THEN REPLY ~We'll be going now.  Thank you and goodbye.~ EXIT
END

IF ~~ THEN BEGIN 13
	SAY ~Yes... Quiet.  In my months in these woods, I have not heard such noise.  Now who are you really?~
	IF ~~ THEN REPLY ~Months in the woods?  Can you tell us about the surrounding lands?~ GOTO 6
	IF ~IsValidForPartyDialog("Sarevok")~ THEN REPLY ~I have no time for this.  Be gone.~ EXTERN ~SAREV25J~ SAR0
	IF ~!IsValidForPartyDialog("Sarevok")~ THEN REPLY ~I have no time for this.  Be gone.~ GOTO 2
	IF ~~ THEN REPLY ~I'm <CHARNAME>.  Don't let our entrance frighten you.  Please, we have questions that need answers.~ GOTO 3
	IF ~~ THEN REPLY ~Who wants to know?~ GOTO 5
END

IF ~~ THEN BEGIN 14
	SAY ~If you are in need of directions, I suggest speaking to the guardians of Watcher's Keep.  They know much more of the outside world than I.~
	IF ~Global("CloseDemogorgonTemple","GLOBAL",2)~ THEN REPLY ~I believe the Helmites have left that ruin.  Do you have any other ideas?~ GOTO 10
	IF ~Dead("Odren")~ THEN REPLY ~Um... I don't think that's possible.  Any other ideas?~ GOTO 10
	IF ~IsValidForPartyDialog("Jaheira")~ THEN REPLY ~Where are we?~ DO ~SetGlobal("WGwktold","GLOBAL",1)~ EXTERN ~JAHEI25J~ JAH0
	IF ~IsValidForPartyDialog("Cernd") !IsValidForPartyDialog("Jaheira")~ THEN REPLY ~Where are we?~ DO ~SetGlobal("WGwktold","GLOBAL",1)~ EXTERN ~CERND25J~ CER0
	IF ~IsValidForPartyDialog("Valygar") !IsValidForPartyDialog("Cernd") !IsValidForPartyDialog("Jaheira")~ THEN REPLY ~Where are we?~ DO ~SetGlobal("WGwktold","GLOBAL",1)~ EXTERN ~VALYG25J~ VAL0
	IF ~!IsValidForPartyDialog("Valygar") !IsValidForPartyDialog("Cernd") !IsValidForPartyDialog("Jaheira")~ THEN REPLY ~Where are we?~ DO ~SetGlobal("WGwktold","GLOBAL",1)~ GOTO 6
	IF ~~ THEN REPLY ~Who are you?~ DO ~SetGlobal("WGwktold","GLOBAL",1)~ GOTO 7
	IF ~~ THEN REPLY ~Can you tell me anything about the Five?~ DO ~SetGlobal("WGwktold","GLOBAL",1)~ GOTO 8
	IF ~~ THEN REPLY ~To Watcher's Keep it is.  Thank you and goodbye.~ DO ~SetGlobal("WGwktold","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 15
	SAY ~Is there anything else?~
	IF ~~ THEN REPLY ~Who are you?~ GOTO 7
	IF ~~ THEN REPLY ~Can you tell me anything about the Five?~ GOTO 8
	IF ~IsValidForPartyDialog("Sarevok")~ THEN REPLY ~Can you tell me how to get to Saradush?~ EXTERN ~SAREV25J~ SAR1
	IF ~IsValidForPartyDialog("Keldorn") !IsValidForPartyDialog("Sarevok")~ THEN REPLY ~Can you tell me how to get to Saradush?~ EXTERN ~KELDO25J~ KEL0
	IF ~IsValidForPartyDialog("Aerie") !IsValidForPartyDialog("Keldorn") !IsValidForPartyDialog("Sarevok")~ THEN REPLY ~Can you tell me how to get to Saradush?~ EXTERN ~AERIE25J~ AER0
	IF ~!IsValidForPartyDialog("Aerie") !IsValidForPartyDialog("Keldorn") !IsValidForPartyDialog("Sarevok")~ THEN REPLY ~Can you tell me how to get to Saradush?~ GOTO 9
	IF ~~ THEN REPLY ~We'll be going now.  Thank you and goodbye.~ EXIT
END


APPEND SAREV25J

IF ~~ THEN BEGIN SAR0
	SAY ~Indeed, <CHARNAME>.  Let us travel to Saradush as quickly as possible.  Your fate awaits you there.~
	IF ~~ THEN DO ~RevealAreaOnMap("AR5203")~ EXIT
END


IF ~~ THEN BEGIN SAR1
	SAY ~Bah, you waste our time.  I know well where it is, <CHARNAME>.  There, I have marked it on your map.  Now let us leave at once.~
	IF ~~ THEN DO ~RevealAreaOnMap("AR5203")~ EXTERN WGHUNTER 12
END
END

APPEND JAN25J

IF ~~ THEN BEGIN JAN0
	SAY ~Oh yes!  Quiet as a mouse, if need be.  Quieter, even!  Why, as my false Uncle Bob used to say...~
	IF ~~ THEN EXTERN ~WGHUNTER~ 13
END
END

APPEND NALIA25J

IF ~~ THEN BEGIN NAL0
	SAY ~<CHARNAME>, we may need her help.  Please, don't be offended!  My name is Nalia, and this is <CHARNAME>!  Can you tell us how to find the Five?~
	IF ~~ THEN EXTERN WGHUNTER 8
END
END

APPEND IMOEN25J

IF ~~ THEN BEGIN IMO0
	SAY ~Why are you in such a hurry, big <BROTHERSISTER>?  We don't even know how to get where we're going.  It's okay to ask for directions, you know.~
	IF ~~ THEN EXTERN WGHUNTER 14
END
END

APPEND HAERD25J

IF ~~ THEN BEGIN HAE0
	SAY ~And you won't be, my meadowlark.  I am Haer'Dalis, if you please, and this fine <MANWOMAN> is <CHARNAME>.  You are a becon of light for us, meadowlark, for we are lost and know not how to reach Saradush.~
  	IF ~~ THEN EXTERN WGHUNTER 15
END  
END

APPEND JAHEI25J

IF ~~ THEN BEGIN JAH0
	SAY ~<CHARNAME>, I'm surprised at you.  We are in the Tethyr Woods not far from where we entered Suldenessalar.  You clearly have no head in the forest.~
	IF ~~ THEN REPLY ~Well then, I suppose you could do better.~ GOTO JAH1
	IF ~~ THEN REPLY ~I'd be grateful if you could lead the way, Jaheira.~ GOTO JAH1
END

IF ~~ THEN BEGIN JAH1
	SAY ~I can and I will.  You may be lost, but I am not.  See, on the map:  Watcher's Keep is here, and there, through those woods to the south, is Saradush.  Really, <CHARNAME>, you would not get far without me.~
	IF ~~ THEN DO ~RevealAreaOnMap("AR6400") RevealAreaOnMap("AR5203")~ EXTERN WGHUNTER 15
END
END

APPEND CERND25J

IF ~~ THEN BEGIN CER0
	SAY ~All forests may look the same to you, <CHARNAME>, but to me they are as different as snowflakes.  This is the Tethyr Woods, very near to Suldenessalar.  With your permission, I will lead the way out of the woods.~
	IF ~~ THEN REPLY ~Yes, thank you Cernd.~ DO ~RevealAreaOnMap("AR6400")~ EXTERN WGHUNTER 15
END
END

APPEND VALYG25J

IF ~~ THEN BEGIN VAL0
	SAY ~<CHARNAME>, you have been here before.  I believe I can find a way out to the south.  That is, if you wish it.~
	IF ~~ THEN REPLY ~I do indeed.  Lead and we shall follow, Valygar.~ DO ~RevealAreaOnMap("AR6400")~ EXTERN WGHUNTER 15
END
END

APPEND KELDO25J

IF ~~ THEN BEGIN KEL0
	SAY ~In my time with the Order, I have traveled far afield on missions both martial and diplomatic.  I know where Saradush is, <CHARNAME>.  Look, on the map... it is there.~
	IF ~~ THEN DO ~RevealAreaOnMap("AR5203")~ EXTERN WGHUNTER 12
END
END
 
APPEND AERIE25J

IF ~~ THEN BEGIN AER0
	SAY ~<CHARNAME>, in my time... that is, when I was with the circus.  They went through Saradush.  I think I could find it again, if you need me to.~
	IF ~~ THEN DO ~RevealAreaOnMap("AR5203")~ EXTERN WGHUNTER 12
END
END
