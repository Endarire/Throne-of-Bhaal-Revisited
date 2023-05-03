EXTEND_BOTTOM ORPHAN1 3
	IF ~!Global("OrphanSpeak","GLOBAL",2)~ THEN REPLY ~I'll go get help at the Temple.  Stay here.~ DO ~SetGlobal("OrphanSpeak","GLOBAL",1)~ EXIT
END