 DEFINE TRANCLASS(TCLID@@) GROUP(ID@@)
        MAXACTIVE(100) PURGETHRESH(NO)
 DEFINE TRANSACTION(ID@@) GROUP(ID@@)
        PROGRAM(ZUID001) TWASIZE(0) PROFILE(DFHCICST) STATUS(ENABLED)
        TASKDATALOC(ANY) TASKDATAKEY(USER) STORAGECLEAR(NO)
        RUNAWAY(SYSTEM) SHUTDOWN(DISABLED) ISOLATE(YES) DYNAMIC(NO)
        ROUTABLE(NO) PRIORITY(1) TRANCLASS(TCLID@@) DTIMOUT(NO)
        RESTART(NO) SPURGE(NO) TPURGE(NO) DUMP(YES) TRACE(YES)
        CONFDATA(NO) OTSTIMEOUT(NO) ACTION(BACKOUT) WAIT(YES)
        WAITTIME(0,0,0) RESSEC(NO) CMDSEC(NO)
 DEFINE URIMAP(ID@@) GROUP(ID@@)
        STATUS(ENABLED) USAGE(SERVER) SCHEME(HTTP) PORT(NO) HOST(*)
        PATH(@path@*)
        ANALYZER(YES) TRANSACTION(ID@@) PROGRAM(ZUID001)
        REDIRECTTYPE(NONE) DEFINETIME(16/05/20 13:01:02)