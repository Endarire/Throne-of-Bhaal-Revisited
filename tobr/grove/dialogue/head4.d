BEGIN HEAD4


IF ~True()~ THEN BEGIN 0 
  SAY ~Bhaal's Servant deceived, Five led down a false path,
A hidden traitor lurks in thy midst.
The Servant of Bhaal knows death and destruction,
The face of an ally, the mask of a foe.
~ [4HEAD02]
  IF ~~ THEN DO ~StartCutSceneMode()
		MoveViewObject("Head5",VERY_FAST)
		Explore()
		Wait(10)
		SmallWait(5)
		ScreenShake([20.20],20)
		PlaySound("EFF_M36B")
		Wait(1)
		AmbientActivate("AMB_Head5L",TRUE)
		AmbientActivate("AMB_Head5R",TRUE)
		SmallWait(5)
		StaticSequence("AMB_Head5L",1)
		StaticSequence("AMB_Head5R",1)
		ActionOverride("Head5",StartDialogueNoSet(Player1))	~ EXIT
END

