ADD_TRANS_TRIGGER HEAD5 4 ~False()~
  EXTEND_BOTTOM HEAD5 4
	IF ~~ THEN DO ~StartCutSceneMode()
		StartCutScene("WGcutgro")~ EXIT
  END