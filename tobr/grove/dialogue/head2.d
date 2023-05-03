BEGIN HEAD2

IF ~True()~ THEN BEGIN 0 
  SAY ~That which hath past is ne'er truly gone,
History repeats, though mortals choose not to see.
War and bloodshed be not new to the Realms,
A god that once hath been may be once again.
~ [2HEAD01] 
  IF ~~ THEN DO ~StartCutSceneMode()
		MoveViewObject("Head3",VERY_FAST)
		Explore()
		Wait(10)
		SmallWait(5)
		ScreenShake([20.20],20)
		PlaySound("EFF_M36B")
		Wait(1)
		AmbientActivate("AMB_Head3L",TRUE)
		AmbientActivate("AMB_Head3R",TRUE)
		SmallWait(5)
		StaticSequence("AMB_Head3L",1)
		StaticSequence("AMB_Head3R",1)
		ActionOverride("Head3",StartDialogueNoSet(Player1))	~ EXIT
END

