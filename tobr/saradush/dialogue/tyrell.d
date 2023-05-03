BEGIN TYRELL

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
	SAY ~It is a pleasure to meet you.  Pull up a chair and share a drink with me.~
	IF ~~ THEN REPLY ~Of course, my good man!  Drink for my friend here!~ GOTO 1
	IF ~~ THEN REPLY ~Only if you're buying.~ GOTO 2
	IF ~~ THEN REPLY ~I'd rather get some information instead.~ GOTO 3
	IF ~~ THEN REPLY ~Oops, wrong person.~EXIT
END

IF ~~ THEN BEGIN 1
	SAY ~A toast then: to Mellisan!~
	IF ~~ THEN REPLY ~To Mellisan!~ GOTO 4
	IF ~~ THEN REPLY ~Pft.. What?  Didn't she get you into this mess?~ GOTO 4
	IF ~~ THEN REPLY ~I bought you your drink, now I'm leaving.~ EXIT
END

IF ~~ THEN BEGIN 2
	SAY ~I would not have it otherwise...~
	IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 3
	SAY ~First you refuse my hospitality, then you ask for information?  Share a drink with me and then I may call you friend.~
	IF ~~ THEN REPLY ~How rude of me.  Barkeep!  A drink to share with my new friend.~ GOTO 1
	IF ~~ THEN REPLY ~How about a few coins instead?~  GOTO 5
	IF ~~ THEN REPLY ~I'm not interested in making friends.  I'm interested in finding what's going on here.~ GOTO 5
END

IF ~~ THEN BEGIN 4
	SAY ~She is an fine woman.  She brought us here out of the storm and shields us from the violence of Gromnir and his men.  Unlike some others, I will take no disrespect to her.~
	IF ~~ THEN REPLY ~She seems a fine woman indeed.  Her concern for Bhaalspawn is admirable, especailly given how most feel about us.~ GOTO 6
	IF ~~ THEN REPLY ~I completely disagree!  She is creepy and I do not trust her.~ GOTO 5
	IF ~~ THEN REPLY ~She has yet to prove her kind words, but she has yet to go back on them as well.  What do you think she is doing here?~ GOTO 7
END

IF ~~ THEN BEGIN 5
	SAY ~YOu have insulted me greatly.  I wish no more words with you.~
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6
	SAY ~Indeed.  How enjoyable to find someone so perceptive.  I am Tyrell.  Now, why was it you came to speak with me?~
	IF ~~ THEN REPLY ~Yaga-Shura.  Do you know anything about him that would be helpful?~ GOTO 8
	IF ~!Dead("Gromnir")~ REPLY ~I'd like to find a way into the castle, if I can.~ GOTO 9
	IF ~~ THEN REPLY ~I just came for the drink.  I'll be on my way now.~ EXIT
END

IF ~~ THEN BEGIN 7
	SAY ~Helping the Bhaalspawn in her charge, of course.  I have followed her for some time, and she has always shown concern for those of our lineage.  She would seek out children of Bhaal, no matter how hidden they might be, in order to bring them here.~
	IF ~~ THEN REPLY ~I see.  A real philanthropist.~ GOTO 6
	IF ~~ THEN REPLY ~I think there is more than that to her actions.~ GOTO 10
	IF ~~ THEN REPLY ~Bringing them here hardly did them any favors.~ GOTO 11
	IF ~~ THEN REPLY ~I'm sorry, but now I must go.~ EXIT
END

IF ~~ THEN BEGIN 8
	SAY ~I do not.  I have been in this inn almost since he arrived.  The seige has left the streets dangerous, and I choose to say indoors.~
	IF ~~ THEN REPLY ~Do you know what Mellisan is doing here?~ GOTO 7
	IF ~!Dead("Gromnir")~ REPLY ~I'd like to find a way into the castle, if I can.~ GOTO 9
	IF ~~ THEN REPLY ~I just came for the drink.  I'll be on my way now.~ EXIT
END

IF ~~ THEN BEGIN 9
	SAY ~Sadly, I cannot help you there.  But I believe the owner of this inn may know more about this than I.~
	IF ~~ THEN REPLY ~Do you know what Mellisan is doing here?~ GOTO 7
	IF ~~ THEN REPLY ~Yaga-Shura.  Do you know anything about him that would be helpful?~ GOTO 8
	IF ~~ THEN REPLY ~I thank you and take my leave.~ EXIT
END

IF ~~ THEN BEGIN 10
	SAY ~But you have not seen as much of her as I have.  Come, is there anything more you wanted to know from me?~
	IF ~~ THEN REPLY ~Yaga-Shura.  Do you know anything about him that would be helpful?~ GOTO 8
	IF ~!Dead("Gromnir")~ REPLY ~I'd like to find a way into the castle, if I can.~ GOTO 9
	IF ~~ THEN REPLY ~I just came for the drink.  I'll be on my way now.~ EXIT
END

IF ~~ THEN BEGIN 11
	SAY ~Mellisan could hardly have forseen that.  She even brought Gromnir and his men to protect us.  Come, is there anything more you wanted to know from me?~
	IF ~~ THEN REPLY ~Yaga-Shura.  Do you know anything about him that would be helpful?~ GOTO 8
	IF ~!Dead("Gromnir")~ REPLY ~I'd like to find a way into the castle, if I can.~ GOTO 9
	IF ~~ THEN REPLY ~I just came for the drink.  I'll be on my way now.~ EXIT
END
	