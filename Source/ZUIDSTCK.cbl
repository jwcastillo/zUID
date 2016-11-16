*                                                                       00000100
*  PROGRAM:    ZUIDSTCK                                                 00000200
*  AUTHOR:     RANDY FRERKING.                                          00000300
*  SOURCE:     J1FRERK.CICS.ZUID(ZUIDSTCK)                              00000400
*  DATE:       June 29, 2014                                            00000500
*  COMMENTS:   Get STCKE TOD for COBOL program.                         00000600
*                                                                       00000800
*  2014/06/29  J1FRERK - CREATED                                        00000810
*                                                                       00000840
*********************************************************************** 00000900
* Application dynamic storage area - start                            * 00001000
*********************************************************************** 00000900
DSA      DSECT                                                          00001200
EISTOD   DS    CL16               STCKE TOD time
*
*********************************************************************** 00000900
* Application dynamic storage area - end                              * 00001000
*********************************************************************** 00000900
*
*
*********************************************************************** 00000900
* Control Section                                                     * 00001000
*********************************************************************** 00000900
ZUIDSTCK AMODE 31
ZUIDSTCK RMODE 31
ZUIDSTCK CSECT
         STM   R14,R12,12(R13)         Save registers
         L     R1,0(R1)                Load parameter address
         USING DSA,R1                  ... tell assember
         STCKE EISTOD                  Save STCKE TOD
*
         LM    R14,R12,12(R13)         Load Registers
         XR    R15,R15                 Clear R15 (RC)
         BR    R14                     Return to calling program
*
         DC    CL08'ZUIDSTCK  '                                         00014800
         DC    CL48' -- Get STCKE TOD for COBOL program             '   00014900
         DC    CL08'        '                                           00015000
         DC    CL08'&SYSDATE'                                           00015100
         DC    CL08'        '                                           00015200
         DC    CL08'&SYSTIME'                                           00015300
*                                                                       00051400
*********************************************************************** 00000900
* Literal Pool                                                        * 00001000
*********************************************************************** 00000900
         LTORG                                                          00075000
         DS   0F
*
*********************************************************************** 00000900
* Register assignments                                                * 00001000
*********************************************************************** 00000900
         DS   0F                                                        00085100
R0       EQU   0                                                        00085200
R1       EQU   1                                                        00085300
R2       EQU   2                                                        00085400
R3       EQU   3                                                        00085500
R4       EQU   4                                                        00085600
R5       EQU   5                                                        00085700
R6       EQU   6                                                        00085800
R7       EQU   7                                                        00085900
R8       EQU   8                                                        00086000
R9       EQU   9                                                        00086100
R10      EQU   10                                                       00086200
R11      EQU   11                                                       00086300
R12      EQU   12                                                       00086400
R13      EQU   13                                                       00086500
R14      EQU   14                                                       00086600
R15      EQU   15                                                       00086700
*
*********************************************************************** 00000900
* End of Program                                                      * 00001000
*********************************************************************** 00000900
         END   ZUIDSTCK                                                 00087500