      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 GAS PIC 9(2).
         88 EXECELLENT VALUE 0 THROUGH 5.
         88 GOOD VALUE 6 THROUGH 10.
         88 FINE VALUE 11 THROUGH 15.
         88 POOR VALUE 15 THROUGH 99.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "Please Enter a gas value (0-99):"
            ACCEPT GAS.
            IF EXECELLENT THEN
              DISPLAY "E"
              ELSE IF GOOD THEN
                DISPLAY "G"
                ELSE IF FINE THEN
                  DISPLAY "F"
                  ELSE IF POOR THEN
                    DISPLAY "P".
       END PROGRAM YOUR-PROGRAM-NAME.
