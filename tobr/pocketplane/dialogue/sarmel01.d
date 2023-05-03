ADD_TRANS_TRIGGER SARMEL01 3 ~False()~ DO
	EXTEND_BOTTOM SARMEL01 3
	IF ~~ THEN DO ~
		ClearAllActions()
		StartCutSceneMode()
		StartCutScene("cutmel")~ EXIT
	END

APPEND SARMEL01

IF WEIGHT #-1 ~Global("CutMelOver","AR5000",0)~ THEN BEGIN PP0
	SAY ~What's this?  Another child of Bhaal made <HISHER> way into the city?  Impossible!  Unless...~
	IF ~~ THEN DO ~SetGlobal("CutMelOver","AR5000",1) SetGlobal("TalkedSarMel01","GLOBAL",1) SetGlobal("MelissanJob","GLOBAL",0) DialogInterrupt(FALSE)~ EXTERN ~GROMG01~ 4
END

END