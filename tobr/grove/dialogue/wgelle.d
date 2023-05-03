BEGIN WGelle

IF ~Global("SuelleBegin", "AR4000",1) ~ THEN BEGIN 0
SAY ~Welcome, <CHARNAME>, to our sacred grove.~
IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
SAY ~Do not take this audience lightly.  Few outsiders have stepped where you now tred.  Here the ancients speak to a chosen few through these rough-hewen stones.  Prepare yourself with weapons and spells, then go near them to ask of their wisdom.~
IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
SAY ~Speak to the ancients.  Hear their words.  And when you have finished, come speak to me in the northwest corner of the grove, near where we entered.  Together we will ponder what they have said,and together we will determine what is to come for you and yours.  Farewell, Child of Bhaal.~
IF ~~ THEN DO ~SetGlobal("SuelleBegin","AR4000",2)~ EXIT
END

IF ~Global("WGHeadsSpoke","AR4000",1)~ THEN BEGIN 3
SAY ~ Yes, <CHARNAME>, what did they say?  Do not keep me in suspense!~
IF ~~ THEN REPLY ~It is hard to say.  Something about death and destruction.~ DO ~SetGlobal("WGHeadsSpoke","AR4000",2) SetGlobal("SuelleBegin","AR4000",5)~ GOTO 4
IF ~~ THEN REPLY ~Same old story.  Blah blah blah, choas and war, blah blah.~ DO ~SetGlobal("WGHeadsSpoke","AR4000",2) SetGlobal("SuelleBegin","AR4000",5)~  GOTO 4
IF ~~ THEN REPLY ~I'm not telling you.~ DO ~SetGlobal("WGHeadsSpoke","AR4000",2) SetGlobal("SuelleBegin","AR4000",5)~  GOTO 5
END

IF ~~ THEN BEGIN 4
SAY ~ Please, try to remember more.  The ancients may be vague, but they are also wise.  There is always hidden meaning in their words.~
IF ~~ THEN REPLY ~No, I can't remember anything more.~ GOTO 5
IF ~CheckStatGT(LastTalkedToBy,11,WIS) CheckStatLT(LastTalkedToBy,14,WIS)~ THEN REPLY ~There was something about the Five, but I'm not sure what it meant.~ GOTO 6
IF ~CheckStatGT(LastTalkedToBy,13,WIS)~ THEN REPLY ~There was a verse about the Five and how they were being mislead.  By who or what it did not say.~ GOTO 7
IF ~CheckStatGT(LastTalkedToBy, 13, WIS) CheckStatLT(LastTalkedToBy, 18, WIS)~ THEN REPLY ~The ancients did mention Bhaal.  But I suppose that is to be expected.~ GOTO 8
IF ~CheckStatGT(LastTalkedToBy, 17, WIS)~ THEN REPLY ~The ancients did mention Bhaal.  I believe they indicated that he could be brought back to life.~ GOTO 9
END

IF ~~ THEN BEGIN 5
  SAY ~So then I have helped all I can.  Now you must leave, <CHARNAME>.  The dangers you bring are too great, even for Suldanesselar.~
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 6
  	SAY ~The Five, you say?  Chaos reigns where they have trod.  They are the cause of much distruction and mistrust.  And it seems your fate is wound tightly with theirs.~    
  	IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 7
	SAY ~The Five, you say?  They are instruments of chaos and destruction.  That they are led at all is surprising, and to find them misled is telling.  They may not fully understand the results of their actions, <CHARNAME>.~
	IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 8
  SAY ~You have come to expect Bhaal's name as a part of your fate.  But this says more about how you see the world than what the ancients have told you about it.~
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 9
  SAY ~I had feared it would come to that.  There were many rumors whispered of Bhaal's death, but in this time of chaos that death may be undone.~
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 10
  SAY ~Go now, and may...  What was that?~
  IF ~~ THEN GOTO 13
END


IF ~~ THEN BEGIN 11
  SAY ~Beware them, <CHARNAME>.  But I know that caution will not prevent their chaos from touching you.  Was there anything more?~
  IF ~~ THEN REPLY ~No, I can't remember anything more.~ GOTO 5
  IF ~CheckStatGT(LastTalkedToBy, 13, WIS) CheckStatLT(LastTalkedToBy, 18, WIS)~ THEN REPLY ~The ancients did mention Bhaal.  But I suppose that is to be expected.~ GOTO 8
  IF ~CheckStatGT(LastTalkedToBy, 17, WIS)~ THEN REPLY ~The ancients did mention Bhaal.  I believe they indicated that he could be brought back to life.~ GOTO 9
END

IF ~~ THEN BEGIN 12
  SAY ~Bhaal is to be feared as much in death as he was in life.   You must not forget this, his <PRO_SONDAUGHTER>.  Was there anything else?~
  IF ~~ THEN REPLY ~No, I can't remember anything more.~ GOTO 5
  IF ~CheckStatGT(LastTalkedToBy,11,WIS) CheckStatLT(LastTalkedToBy,14,WIS)~ THEN REPLY ~There was something about the Five, but I'm not sure what it meant.~ GOTO 6
  IF ~CheckStatGT(LastTalkedToBy,13,WIS)~ THEN REPLY ~There was a verse about the Five and how they were being mislead.  By who or what it did not say.~ GOTO 7
END

IF ~~ THEN BEGIN 13
  SAY ~The wards!  They have been broken!  Stay here, Bhaalchild, and guard the grove.  I will replace the wards quickly and hope none has time to enter...~
  IF ~~ THEN DO ~SetGlobal("IllaseraSpawn","GLOBAL",1) ReallyForceSpell(Myself,DRYAD_TELEPORT)~ EXIT
END 
  
IF ~Global("SuelleBegin","AR4000",4)~ BEGIN 14
SAY ~You waste time, <CHARNAME>!  Do not make me regret your admittance here.~
IF ~~ THEN EXIT
END
