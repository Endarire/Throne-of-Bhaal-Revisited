APPEND BJAHEI25

IF WEIGHT #3 ~Global("SaradushSacked","GLOBAL",1)
Global("JaheiraRomanceActive","GLOBAL",2)~ THEN BEGIN JahTalk
  SAY #69700 /* ~Sleep did not come easy last night. I hope I am not alone in this.~ [JAHE2505] */
  IF ~~ THEN REPLY #69707 /* ~I couldn't close my eyes at all. I kept seeing the city of Saradush... burning.~ */ GOTO 60
  IF ~~ THEN REPLY #69708 /* ~I slept well enough, though I do have sympathy for those hurt because of my kind.~ */ GOTO 62
  IF ~~ THEN REPLY #69709 /* ~What? Did I miss something? I slept like the dead.~ */ GOTO 63
END

END
