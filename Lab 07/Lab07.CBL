      ******************************************************************
      * Author:Tanzim Ahmed Sagar
      * Date: 03.11.2022
      * Purpose: Lab 07 Part A(1)
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 GAS PIC 9(2).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "Please Enter a gas value (0-99):"
            ACCEPT GAS.
            IF GAS >= 0 AND <= 5
              DISPLAY "E"
              ELSE IF GAS > 5 AND <= 10
                DISPLAY "G"
                ELSE IF GAS > 10 AND <= 15
                  DISPLAY "F"
                  ELSE IF GAS > 15
                    DISPLAY "P".
       END PROGRAM YOUR-PROGRAM-NAME.
