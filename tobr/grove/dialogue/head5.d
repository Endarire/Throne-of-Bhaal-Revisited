BEGIN HEAD5


IF ~True()~ THEN BEGIN 0 
  SAY ~The Children of Bhaal bring death to the land,
They slaughter each other, and feed their Father.
Death and betrayal walk together,
A river of tainted blood doth not cleanse.~ [5HEAD03]
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
	SAY ~The storm approaches; we speak no more.~ [5HEAD04]
IF ~~ THEN DO ~	StartCutSceneMode()
		StartCutScene("WGcutgro")
	~ EXIT
END
