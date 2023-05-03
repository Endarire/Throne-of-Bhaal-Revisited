BEGIN HEAD1

IF ~True()~ THEN BEGIN 100
	SAY ~The wheels of prophecy e'er turn,
Gorion's ward hath come. 
Crossroad of past, present and future,
The one foreseen, the one foretold.~ [HEAD01]
IF ~~ THEN DO ~StartCutSceneMode()
		MoveViewObject("Head2",VERY_FAST)
		Explore()
		Wait(8)
		SmallWait(5)
		ScreenShake([20.20],20)
		PlaySound("EFF_M36B")
		Wait(1)
		AmbientActivate("AMB_Head2L",TRUE)
		AmbientActivate("AMB_Head2R",TRUE)
		SmallWait(5)
		StaticSequence("AMB_Head2L",1)
		StaticSequence("AMB_Head2R",1)
		ActionOverride("Head2",StartDialogueNoSet(Player1))	
~ EXIT
END

