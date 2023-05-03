APPEND BVICON25

IF WEIGHT #4 ~Global("ViconiaRomanceActive","GLOBAL",2) Global("SaradushSacked","GLOBAL",1)~ THEN BEGIN VicTalk
  SAY #69951 /* ~Ahhh, I had forgotten such scenes of carnage!  And to know that such destruction has been wrought by one who solely sought to seek you out is a glorious tribute to your power!~ [VICO2506] */
  IF ~~ THEN GOTO 98
END

END
