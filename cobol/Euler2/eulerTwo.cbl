      ******************************************************************
      * Author: Luke Captain
      * Date: 25/01/2019
      * Purpose: Project euler 1 fibonacci sum of first 1000
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. EULER-TWO.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 I             PIC 9(10).
       01 MOD-TOTAL     PIC 9(7).
       01 TOTAL     PIC 9(7).
       01 FIB-THREE     PIC 9(7).
       01 FIB-SIX     PIC 9(7).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            COMPUTE FIB-THREE = 2
            COMPUTE FIB-SIX = 0
            PERFORM UNTIL MOD-TOTAL >= 4000000
                COMPUTE TOTAL = TOTAL + MOD-TOTAL
                COMPUTE MOD-TOTAL = 4*FIB-THREE + FIB-SIX
                COMPUTE FIB-SIX = FIB-THREE
                COMPUTE FIB-THREE = MOD-TOTAL
            END-PERFORM.
            DISPLAY MOD-TOTAL
            STOP RUN.
       END PROGRAM EULER-TWO.
