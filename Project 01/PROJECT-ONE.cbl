      ******************************************************************
      * Author:Tanzim Ahmed Sagar
      * Date: 25.10.2022
      * Purpose: Project 01
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROJECT-ONE.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT STUDENT-RECORD-FILE
           ASSIGN "F:\studentrecord.txt"
           ORGANIZATION IS LINE SEQUENTIAL.
       DATA DIVISION.
       FILE SECTION.
       FD STUDENT-RECORD-FILE.
       01 STUDENT-RECORD.
           05 STUDENT-NUMBER   PIC 9(7).
           05 STUDENT-NAME     PIC X(40).
           05 TUITION-OWED     PIC 9(5).
       WORKING-STORAGE SECTION.
       01 LOOP PIC X.
       PROCEDURE DIVISION.
       101-CREATE-STUDENT-FILE.
           PERFORM 201-INITIALIZE.
           PERFORM 202-PRODUCE-ONE-STUDENT-RECORD UNTIL LOOP='N'OR'n'.
           PERFORM 203-CLOSE-FILE.
           STOP RUN.
       201-INITIALIZE.
           OPEN OUTPUT STUDENT-RECORD-FILE.
           PERFORM 302-PROMPT-FOR-NEW-RECORD.
       202-PRODUCE-ONE-STUDENT-RECORD.
           PERFORM 303-OBTAIN-STUDENT-NUMBER.
           PERFORM 304-OBTAIN-STUDENT-NAME.
           PERFORM 305-OBTAIN-TUITION-OWED.
           PERFORM 302-PROMPT-FOR-NEW-RECORD.
           PERFORM 306-Write-STUDENT-RECORD.
       203-CLOSE-FILE.
           CLOSE STUDENT-RECORD-FILE.
       302-PROMPT-FOR-NEW-RECORD.
           DISPLAY "DO YOU HAVE ANY RECORD? [Y/N]".
           ACCEPT LOOP.
       303-OBTAIN-STUDENT-NUMBER.
           DISPLAY "WHAT'S THE STUDENT NUMBER?".
           ACCEPT STUDENT-NUMBER.
       304-OBTAIN-STUDENT-NAME.
           DISPLAY "WHAT'S THE STUDENT NAME?".
           ACCEPT STUDENT-NAME.
       305-OBTAIN-TUITION-OWED.
           DISPLAY "HOW MUCH TUITION IS OWED BY: ", STUDENT-NAME.
           ACCEPT TUITION-OWED.
       306-Write-STUDENT-RECORD.
           WRITE STUDENT-RECORD.

       END PROGRAM PROJECT-ONE.
