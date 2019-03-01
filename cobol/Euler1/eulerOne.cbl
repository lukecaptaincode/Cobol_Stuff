      ******************************************************************
      * Author: Luke Captain
      * Date: 25/01//2019
      * Purpose: Project euler 1 fibonacci sum of first 1000
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. EULER-ONE.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 I             PIC 9(04).
       01 MOD-TOTAL     PIC 9(06).
       01 C             PIC 9(04).
       01 D             PIC 9(04).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            PERFORM UNTIL I >= 1000
                IF FUNCTION MOD(I,5) = 0 OR FUNCTION MOD(I,3) = 0 THEN
                    COMPUTE MOD-TOTAL = MOD-TOTAL + I
                END-IF
                COMPUTE I = I + 1
            END-PERFORM.

            DISPLAY MOD-TOTAL
            STOP RUN.
       END PROGRAM EULER-ONE.
