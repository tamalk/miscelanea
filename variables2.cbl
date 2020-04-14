      ******************************************************************
      * Author: Tamalk.
      * Date: 14/04/2020.
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. VARIABLES2.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
           01 NAM PIC X(10) VALUE 'Tamalk'.
           01 AGE PIC S9(2) VALUE 1.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "Enter your name: "
            ACCEPT NAM FROM CONSOLE
            DISPLAY "Hello "NAM
            DISPLAY "How old are you?"
            ACCEPT AGE FROM CONSOLE
            IF AGE < 0 THEN
                DISPLAY "You can't be under 0 years old. You've" 
                DISPLAY "actually been born, right?"
            ELSE
                DISPLAY "So you are "AGE" years old"
            END-IF.
            STOP RUN.
       END PROGRAM VARIABLES2.
