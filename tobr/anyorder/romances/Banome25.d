APPEND BANOME25

IF WEIGHT #4 ~Global("AnomenRomanceActive","GLOBAL",2) Global("SaradushSacked","GLOBAL",1)~ THEN BEGIN AnoTalk
  SAY #70178 /* ~My love... what is wrong?  Can you not sleep?~ [ANOM2506] */
  IF ~~ THEN REPLY #70179 /* ~I can't help thinking about Saradush.~ */ GOTO 95
  IF ~~ THEN REPLY #70180 /* ~I was asleep... until you woke me.~ */ GOTO 94
END

END
