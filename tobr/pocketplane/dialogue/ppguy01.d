BEGIN ~PPGUY01~ 

IF WEIGHT #0 ~Global("FirstUseofDoor","GLOBAL",0)~ THEN BEGIN 0a
  SAY ~Where do you wish your Planar Door to take you?~
  IF ~~ THEN REPLY ~Take me back to the Grove of the Ancients.~ DO ~SetGlobal("FirstUseofDoor","GLOBAL",1) ~ GOTO 1a
  IF ~Global("AmnAsk","GLOBAL",0) ~ THEN REPLY ~Take me to my home in Amn.~ DO ~SetGlobal("AmnAsk","GLOBAL",1)~ GOTO 2a
  IF ~Global("SaraAsk","GLOBAL",0) ~ THEN REPLY ~Take me to Saradush.~ DO ~SetGlobal("SaraAsk","GLOBAL",1) ~ GOTO 3a
  IF ~~ THEN REPLY ~I do not wish to leave at this time.~ DO ~DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 1a
  SAY ~The Grove of the Ancients is protected by many wards.  You are not strong enough to break them.  This plane will take you nearby.~
	IF ~~ THEN DO ~LeaveAreaLUAPanic("ARTOBR","",[2123.1164],10)
ActionOverride(Player1,LeaveAreaLUA("ARTOBR","",[2123.1164],10))
ActionOverride(Player2,LeaveAreaLUA("ARTOBR","",[2176.1199],10))
ActionOverride(Player3,LeaveAreaLUA("ARTOBR","",[2129.1237],10))
ActionOverride(Player4,LeaveAreaLUA("ARTOBR","",[2092.1262],10))
ActionOverride(Player5,LeaveAreaLUA("ARTOBR","",[2083.1196],10))
ActionOverride(Player6,LeaveAreaLUA("ARTOBR","",[2030.1218],10))
DestroySelf()~ EXIT
END 

IF ~~ THEN BEGIN 2a
  SAY ~Your destiny lies elsewhere.  You cannot return to Amn.~ 
  IF ~~ THEN GOTO 0a
END

IF ~~ THEN BEGIN 3a
  SAY ~You have never seen the walls of Saradush and must do so before this plane can take you there.~ 
  IF ~~ THEN GOTO 0a
END

IF WEIGHT #0 ~Global("FirstUseofDoor","GLOBAL",1)~ THEN BEGIN 4a
  SAY ~You can use your Planar Door to travel to several places. Where do you wish to go?~
  IF ~~ THEN REPLY ~Take me back to the Tethyr Woods.~ GOTO 5a
  IF ~Global("SeenOutSara","GLOBAL",1)~ THEN REPLY ~Take me to the army camp outside Saradush.~ GOTO 6a
  IF ~GlobalGT("InsideSewers","GLOBAL",0) Global("SeenSara","GLOBAL",0)~ THEN REPLY ~Take me into the sewers of Saradush.~ GOTO 9a
  IF ~Global("SeenSara","GLOBAL",1) ~ THEN REPLY ~Take me to Saradush.~ GOTO 7a
  IF ~Global("SeenNF","GLOBAL",1)~ THEN REPLY ~Take me to the North Forest.~ GOTO 10a
  IF ~Global("SeenOasis","GLOBAL",1)~ THEN REPLY ~Take me to the oasis in the Calim Desert.~ GOTO 11a
  IF ~~ THEN REPLY ~Take me where I was.~ GOTO 8a
  IF ~~ THEN REPLY ~I do not wish to leave at this time.~ DO ~DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 5a
  SAY ~As you wish.~
  IF ~~ THEN DO ~LeaveAreaLUAPanic("ARTOBR","",[2123.1164],10)
ActionOverride(Player1,LeaveAreaLUA("ARTOBR","",[2123.1164],10))
ActionOverride(Player2,LeaveAreaLUA("ARTOBR","",[2176.1199],10))
ActionOverride(Player3,LeaveAreaLUA("ARTOBR","",[2129.1237],10))
ActionOverride(Player4,LeaveAreaLUA("ARTOBR","",[2092.1262],10))
ActionOverride(Player5,LeaveAreaLUA("ARTOBR","",[2083.1196],10))
ActionOverride(Player6,LeaveAreaLUA("ARTOBR","",[2030.1218],10))
DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 6a
  SAY ~As you wish.~
  IF ~~ THEN DO ~LeaveAreaLUAPanic("AR5203","",[3689.543],3)
ActionOverride(Player1,LeaveAreaLUA("AR5203","",[3689.543],3))
ActionOverride(Player2,LeaveAreaLUA("AR5203","",[3640.590],3))
ActionOverride(Player3,LeaveAreaLUA("AR5203","",[3640.640],3))
ActionOverride(Player4,LeaveAreaLUA("AR5203","",[3690.590],3))
ActionOverride(Player5,LeaveAreaLUA("AR5203","",[3690.640],3))
ActionOverride(Player6,LeaveAreaLUA("AR5203","",[3590.640],3))
DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 7a
  SAY ~As you wish.~
    IF ~~ THEN DO ~LeaveAreaLUAPanic("AR5000","",[2123.1164],10)
ActionOverride(Player1,LeaveAreaLUA("AR5000","",[2123.1164],10))
ActionOverride(Player2,LeaveAreaLUA("AR5000","",[2176.1199],10))
ActionOverride(Player3,LeaveAreaLUA("AR5000","",[2129.1237],10))
ActionOverride(Player4,LeaveAreaLUA("AR5000","",[2092.1262],10))
ActionOverride(Player5,LeaveAreaLUA("AR5000","",[2083.1196],10))
ActionOverride(Player6,LeaveAreaLUA("AR5000","",[2030.1218],10))
DestroySelf()~ EXIT
END


IF ~~ THEN BEGIN 8a
  SAY ~As you wish.~
  IF ~~ THEN DO ~ExitPocketPlane()
DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 9a
  SAY ~As you wish.~
    IF ~~ THEN DO ~LeaveAreaLUAPanic("AR5013","",[2651.1314],10)
ActionOverride(Player1,LeaveAreaLUA("AR5013","",[2651.1314],10))
ActionOverride(Player2,LeaveAreaLUA("AR5013","",[2725.1323],10))
ActionOverride(Player3,LeaveAreaLUA("AR5013","",[2658.1358],10))
ActionOverride(Player4,LeaveAreaLUA("AR5013","",[2695.1387],10))
ActionOverride(Player5,LeaveAreaLUA("AR5013","",[2730.1372],10))
ActionOverride(Player6,LeaveAreaLUA("AR5013","",[2750.1345],10)) 
DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 10a
  SAY ~As you wish.~
    IF ~~ THEN DO ~LeaveAreaLUAPanic("AR6400","",[143.1035],12)
ActionOverride(Player1,LeaveAreaLUA("AR6400","",[143.1035],12))
ActionOverride(Player2,LeaveAreaLUA("AR6400","",[143.1082],12))
ActionOverride(Player3,LeaveAreaLUA("AR6400","",[94.1035],12))
ActionOverride(Player4,LeaveAreaLUA("AR6400","",[94.1082],12))
ActionOverride(Player5,LeaveAreaLUA("AR6400","",[45.1035],12))
ActionOverride(Player6,LeaveAreaLUA("AR6400","",[45.1082],12))
DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 11a
  SAY ~As you wish.~
    IF ~~ THEN DO ~LeaveAreaLUAPanic("AR6300","",[1028.619],12)
ActionOverride(Player1,LeaveAreaLUA("AR6300","",[1028.619],12))
ActionOverride(Player2,LeaveAreaLUA("AR6300","",[1050.665],12))
ActionOverride(Player3,LeaveAreaLUA("AR6300","",[1103.671],12))
ActionOverride(Player4,LeaveAreaLUA("AR6300","",[1045.723],12))
ActionOverride(Player5,LeaveAreaLUA("AR6300","",[1101.724],12))
ActionOverride(Player6,LeaveAreaLUA("AR6300","",[1090.622],12))
DestroySelf()~ EXIT
END
