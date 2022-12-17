      ******************************************************************
      * Author: Tanzim Ahmed Sagar
      * Date: 21.10.2022
      * Purpose: Midterm
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. milestokilometer.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 CONVERSION-VARIABLES.
           05 inMiles PIC ZZZZZ9.99.
           05 incrementalValue PIC 9(6)V99.
           05 startRange PIC 9(6)V99.
           05 endRange PIC 9(6)V99.
           05 inKiloMeter PIC ZZZZZ9.99.
           05 convert PIC X VALUE 'Y'.
       PROCEDURE DIVISION.
       100-MAIN-PROCEDURE.
           PERFORM 200-INITIAL-RTN.
           PERFORM 200-CONVERSION-RTN UNTIL convert = 'N'.
           STOP RUN.

       200-INITIAL-RTN.
           DISPLAY "Enter the starting number to convert: (in km)"
           ACCEPT  startRange.
           MOVE    startRange TO inKiloMeter.
           DISPLAY "Enter the finishing number to convert: (in km)"
           ACCEPT  endRange.
           DISPLAY "incremented by:"
           ACCEPT  incrementalValue.
           END-PROCEDURE.
       200-CONVERSION-RTN.
           IF startRange <= endRange THEN
               COMPUTE inMiles = (1.6 * startRange)
               DISPLAY inKiloMeter, " km is", inMiles, " miles."
               COMPUTE startRange = (incrementalValue + startRange)
               MOVE startRange TO inKiloMeter
           ELSE
               STOP RUN
           END-IF.
       END PROGRAM milestokilometer.
