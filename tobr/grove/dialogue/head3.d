BEGIN HEAD3


IF ~True()~ THEN BEGIN 0 
  SAY ~Armies march and cities burn,
The rivers froth with tainted blood.
The corpses of those born not innocent
Feed the inferno of boiling hate.~ [3HEAD01]
  IF ~~ THEN DO ~StartCutSceneMode()
		MoveViewObject("Head4",VERY_FAST)
		Explore()
		Wait(10)
		SmallWait(5)
		ScreenShake([20.20],20)
		PlaySound("EFF_M36B")
		Wait(1)
		AmbientActivate("AMB_Head4L",TRUE)
		AmbientActivate("AMB_Head4R",TRUE)
		SmallWait(5)
		StaticSequence("AMB_Head4L",1)
		StaticSequence("AMB_Head4R",1)
		ActionOverride("Head4",StartDialogueNoSet(Player1))	~ EXIT
END

