      ******************************************************************
      * Author: Tanzim Ahmed Sagar
      * Date: 23.10.2022
      * Purpose: Lab 06
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. Lab06. *>PROGRAM NAME.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL. *>DECLARATION OF THE FILES THAT ARE GONNA BE USED.
           SELECT CAR-FILE *>VARIABLE NAME FOR THE FILE.
               ASSIGN TO '../CAR.TXT' *>LOCATION ON THE DISK.
               ORGANIZATION IS LINE SEQUENTIAL. *>FILE STRUCTURE.
           SELECT CAR-OUTPUT *>VARIABLE NAME FOR THE FILE.
               ASSIGN TO '../CAROUT.TXT' *>LOCATION ON THE DISK.
               ORGANIZATION IS LINE SEQUENTIAL. *>FILE STRUCTURE.
       DATA DIVISION.
       FILE SECTION. *>DESCRIPTION OF EACH FILE.
       FD CAR-FILE. *>FD = FILE DESCRIPTION FOR EACH RECORD
       01 CAR-RECORD.
           05 CAR-TYPE PIC X(5).
           05 CAR-YEAR PIC 9(4).
           05 ENGINE-SIZE PIC 9.
       FD CAR-OUTPUT.
       01 CAR-RECORD-OUTPUT.
           05 CAR-TYPE PIC X(5).
           05 CAR-YEAR PIC 9(4).
           05 ENGINE-SIZE PIC 9.
       WORKING-STORAGE SECTION.
       01 END-OF-FILE PIC X.
       01 SUB-1 PIC 9(3).
       PROCEDURE DIVISION.
           PERFORM 201-INITIALIZE-FILES.
           PERFORM 202-MAIN-PROCESS
               VARYING SUB-1 FROM 1 BY 1 UNTIL END-OF-FILE = 'Y'.
           PERFORM 203-CLOSE-PROGRAM.
           STOP RUN.
           201-INITIALIZE-FILES.
               OPEN INPUT CAR-FILE.
               OPEN OUTPUT CAR-OUTPUT.
           202-MAIN-PROCESS.
               PERFORM 301-READ-FROM-FILE.
               PERFORM 302-WRITE-ON-FILE.
           203-CLOSE-PROGRAM.
               CLOSE CAR-FILE.
               CLOSE CAR-OUTPUT.
           301-READ-FROM-FILE.
               READ CAR-FILE
               AT END MOVE 'Y' TO END-OF-FILE
               NOT AT END DISPLAY ' INPUT: ', CAR-RECORD
               END-READ.
           302-WRITE-ON-FILE.
               MOVE CAR-RECORD TO CAR-RECORD-OUTPUT.
               DISPLAY 'OUTPUT: ' CAR-RECORD-OUTPUT.
               DISPLAY '-------------------|'.
               WRITE CAR-RECORD-OUTPUT.
       END PROGRAM Lab06.
