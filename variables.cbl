      ******************************************************************
      * Author: TAMALK
      * Date: 14-04-2020
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. VARTEST.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
           01 VAR1 PIC S9(5)V9(2) VALUE -11.23.
           01 VAR2 PIC S9(2)V9(4) VALUE -11.23.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "The first variable is equal to: "VAR1.
            DISPLAY "(sign, 5 integers, 2 decimals.)".
            DISPLAY "The second variable is equal to: "VAR2.
            DISPLAY "(sign, 2 integers, 4 decimals.)".
            DISPLAY "Even though in both the value is 11.23.".
            STOP RUN.
       END PROGRAM VARTEST.
